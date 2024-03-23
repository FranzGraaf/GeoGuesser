import 'package:flutter/material.dart';
import 'package:gg_frontend/global_stuff/backend_com.dart';
import 'package:gg_frontend/global_stuff/global_variables.dart';

class Basic_Image extends StatefulWidget {
  double? width;
  double? height;
  String image; // "assets/images/image_default.jpeg"
  BorderRadius border_radius;
  EdgeInsets padding;
  EdgeInsets margin;
  Duration animation_duration;
  bool get_image_from_storage;
  ValueKey? key;
  String default_image_asset;
  bool maximize;
  BoxFit fit;
  Widget child;
  bool shadow;

  Basic_Image(this.image,
      {this.width /* = 200*/,
      this.height /* = 200*/,
      required this.border_radius,
      this.padding = const EdgeInsets.all(10),
      this.margin = const EdgeInsets.all(0),
      this.animation_duration = const Duration(milliseconds: 0),
      this.get_image_from_storage = false,
      this.key,
      this.default_image_asset = "assets/images/avatar_bild_200.png",
      this.maximize = false,
      this.fit = BoxFit.cover,
      this.child = const SizedBox(),
      this.shadow = false});

  @override
  _Basic_ImageState createState() => _Basic_ImageState();
}

class _Basic_ImageState extends State<Basic_Image> {
  String _temp_image = "";

  void initialise() async {
    _temp_image = await Backend_Com().get_image_link_from_storage(widget.image);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    if (widget.get_image_from_storage) {
      initialise();
    } else {
      _temp_image = widget.image;
    }
  }

  Future<void> _maximize() async {
    return showGeneralDialog<void>(
        pageBuilder: (context, anim1, anim2) {
          final _screen_size = MediaQuery.of(context).size;
          bool _on_mobile =
              _screen_size.width < global_mobile_treshold ? true : false;

          return Stack(
            children: [
              Center(
                child: Container(
                  alignment: Alignment.center,
                  width: _screen_size.width * 0.95,
                  height: _screen_size.height * 0.95,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: InteractiveViewer(
                        child: ClipRRect(
                            borderRadius: widget.border_radius,
                            child: _image()),
                      )),
                ),
              )
            ],
          );
        },
        context: context,
        barrierDismissible: true, // true = user can tab barrier to close
        barrierLabel: "barrierLabel",
        barrierColor: Colors.grey.withOpacity(0.5),
        transitionDuration: Duration(milliseconds: 250),
        transitionBuilder: (context, anim1, anim2, child) {
          return Transform.scale(
            scale: anim1.value,
            child: child,
          );
        });
  }

  Widget _image() {
    if (_temp_image == null || _temp_image == "") {
      return /*Padding(
        padding: const EdgeInsets.all(20.0),
        child: CircularProgressIndicator(
          strokeWidth: 10,
          //backgroundColor: Colors.amberAccent,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.deepOrangeAccent),
        ),
      );*/
          Image.asset(
        widget.default_image_asset,
        fit: BoxFit.cover,
        key: widget.key,
      );
    } else if (_temp_image.substring(0, 4) == "http") {
      return FadeInImage(
          fadeInDuration: Duration(milliseconds: 1),
          fit: widget.fit,
          key: widget.key,
          image: NetworkImage(
            _temp_image,
          ),
          placeholder: AssetImage(
            widget.default_image_asset,
          ));
      /*bool _loading = true;
      Image _image = Image.network(
        _temp_image,
        fit: BoxFit.cover,
        key: widget.key,
      );
      _image.image
          .resolve(new ImageConfiguration())
          .addListener(ImageStreamListener((ImageInfo info, bool syncCall) {
        if (!syncCall) {
          _image = Image.asset(
            widget.default_image_asset,
            fit: BoxFit.cover,
            key: widget.key,
          );
        }
        setState(() {
          _loading = false;
        });
      }));
      return _loading
          ? Padding(
              padding: const EdgeInsets.all(5),
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(main_purple_1),
              ),
            )
          : _image;*/
    } else {
      return Image.asset(
        _temp_image,
        fit: widget.fit,
        key: widget.key,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.border_radius == null) {
      widget.border_radius = BorderRadius.circular(100);
    }
    return AnimatedContainer(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: widget.shadow
            ? [
                BoxShadow(
                  color: global_color_1.withOpacity(0.6),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(5, 5), // changes position of shadow
                ),
                BoxShadow(
                  color: global_color_1.withOpacity(0.6),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(-5, -5), // changes position of shadow
                ),
              ]
            : [],
      ),
      duration: widget.animation_duration,
      padding: widget.padding,
      margin: widget.margin,
      width: widget.width,
      height: widget.height,
      child: Stack(
        children: [
          widget.maximize
              ? GestureDetector(
                  onTap: () async {
                    await _maximize();
                  },
                  child: ClipRRect(
                    borderRadius: widget.border_radius,
                    child: SizedBox(
                      width: widget.width,
                      height: widget.height,
                      child: _image(),
                    ),
                  ))
              : SizedBox(
                  width: widget.width,
                  height: widget.height,
                  child: ClipRRect(
                      borderRadius: widget.border_radius, child: _image())),
          widget.child,
        ],
      ),
    );
  }
}
