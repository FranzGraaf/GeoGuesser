import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/backend_com.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';
import 'package:gg_frontend/global_stuff/own_widgets/basic_image.dart';

class Image_Mobile_Picker extends StatefulWidget {
  String image; //"assets/images/default_pic.png"
  double width;
  double height;
  BorderRadius border_radius;
  EdgeInsets padding;
  EdgeInsets margin;
  Duration animation_duration;
  bool get_image_from_storage;
  Function() upload_begins;

  Function(String name, String link) upload_done; // name is the storage path
  Function(String name) picture_deleted; // name is the storage path
  ValueKey key;
  Alignment add_icon_alignment;
  Alignment edit_icon_alignment;
  String default_image_asset;
  //Alignment delete_icon_alignment;
  String
      old_image_path; // path to old image so it can be deleted and replaced no image will be deleted when this is null or an empty string
  bool shadow;
  Image_Mobile_Picker({
    this.image,
    this.width = 200,
    this.height = 200,
    this.border_radius,
    this.padding = const EdgeInsets.all(10),
    this.margin = const EdgeInsets.all(0),
    this.animation_duration = const Duration(milliseconds: 0),
    this.get_image_from_storage = false,
    @required this.upload_begins,
    @required this.upload_done,
    @required this.picture_deleted,
    this.key,
    this.old_image_path,
    this.add_icon_alignment = Alignment.center,
    this.edit_icon_alignment = Alignment.topLeft,
    this.default_image_asset = "assets/images/avatar_bild_200.png",
    this.shadow = false,
    /*this.delete_icon_alignment = Alignment.topRight*/
  });
  @override
  _Image_Mobile_PickerState createState() => _Image_Mobile_PickerState();
}

class _Image_Mobile_PickerState extends State<Image_Mobile_Picker> {
  bool _edit = false;
  //String _resize_path_extension = "_500x500"; // this extension gets added from the firebase extension that resizes the images

  void _uploadImage({@required Function(File file) onSelected}) async {
    try {
      final _picker = ImagePicker();
      var image = await _picker.getImage(source: ImageSource.gallery);
      onSelected(File(image.path));
    } catch (e) {
      onSelected(null);
    }
  }

  void _uploadToStorage() async {
    final dateTime = DateTime.now();
    String userId = "test_user_id";
    switch (global_usertype) {
      case Usertype.visitor:
        userId = "visitor_id";
        break;
      case Usertype.user:
        userId = global_userdata.id;
        break;
      default:
        userId = "error_no_user_or_visitor";
    }
    final path = '$userId/$dateTime';
    _uploadImage(onSelected: (file) async {
      if (file != null) {
        widget.upload_begins();
        await FirebaseStorage.instance
            .ref()
            .child(path)
            .putFile(file)
            .then((_) async {
          String _link = await Backend_Com().get_image_link_from_storage(path);
          widget.upload_done(path, _link);
        }); // upload new image
        if (widget.old_image_path == null || widget.old_image_path == "") {
        } else {
          await FirebaseStorage.instance
              .refFromURL(firebase_bucket_link)
              .child(widget.old_image_path)
              .delete(); // delete old image only  when old_image_path is set

        }
      }
    });
  }

  void _deleteFromStorage() async {
    await FirebaseStorage.instance
        .refFromURL(firebase_bucket_link)
        .child(widget.old_image_path)
        .delete(); // delete old image only  when old_image_path is set
    widget.picture_deleted(widget.old_image_path);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            _edit = !_edit;
          });
        },
        child: Container(
          width: widget.width,
          height: widget.height,
          margin: widget.margin,
          child: Stack(
            children: [
              Basic_Image(
                widget.image,
                width: widget.width,
                height: widget.height,
                border_radius: widget.border_radius,
                padding: widget.padding,
                animation_duration: widget.animation_duration,
                get_image_from_storage: widget.get_image_from_storage,
                key: widget.key,
                default_image_asset: widget.default_image_asset,
                shadow: widget.shadow,
              ),
              widget.image == null || widget.image == ""
                  ? Container(
                      width: widget.width,
                      height: widget.height,
                      alignment: widget.add_icon_alignment,
                      child: IconButton(
                        icon: Icon(Icons.add_a_photo),
                        onPressed: () {
                          _uploadToStorage();
                        },
                      ),
                    )
                  : _edit
                      ? Align(
                          alignment: widget.edit_icon_alignment,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: Icon(Icons.edit),
                                onPressed: () {
                                  _uploadToStorage();
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.delete),
                                onPressed: () {
                                  _deleteFromStorage();
                                },
                              ),
                            ],
                          ),
                        )
                      : Container(
                          width: 0,
                          height: 0,
                        ),
            ],
          ),
        ));
  }
}
