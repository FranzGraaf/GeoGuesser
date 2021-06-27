from flask import Flask
from flask import request, jsonify
import time
import json
from flask_cors import CORS
from firebase_admin import auth
import datetime
import os
# own imports ------
from global_functions import url_to_date
from db_init import DB_Init_Read_Write



#
#
#
development = True # development: True, production: False
#
#
#
# if error: return < jsonify("nok") > else return data or < jsonify("ok") >
debug=True
app = Flask(__name__)
CORS(app, supports_credentials=True)
db = DB_Init_Read_Write()



# START other functions --------------------------------------------------------------------------------------------------------------------
def get_storage_image(image):
    # START possible solution to prohibit a backend error by loading an event incorrectly --------------
    if image == "" or image == None:
        return "" 
    tries = 1
    while tries > 0:
        try:
            blob = db.get_bucket().blob(image)
            blob.make_public()
            tries = 0
        except Exception as e:
            tries -= 1
            #time.sleep(1.5)
    # END possible solution to prohibit a backend error by loading an event incorrectly --------------
    return blob.public_url

@app.route('/get_image_link_from_storage', methods=["GET"])
def get_image_link_from_storage():
    try:
        image = get_storage_image(str(request.args["image"]))
        return jsonify(image)
    except Exception as e:
        print(e)
    return jsonify("nok")

def get_uid():
    id_token = request.headers["id_token"]
    if id_token == "null" : return None
    else:
        user = auth.verify_id_token(id_token)
        return user["uid"]

def get_request_data():
    ret = json.loads(request.data);
    if debug: print(ret)
    return ret
# END other functions --------------------------------------------------------------------------------------------------------------------


# START interactions --------------------------------------------------------------------------------------------------------------------
@app.route('/create_user', methods=["POST", "GET"])
def create_user():
    user_id = get_uid()
    if user_id == None: return jsonify("nok")
    data = get_request_data()
    return jsonify(db.create_user(user_id, data))

@app.route('/get_user', methods=["POST", "GET"])
def get_user():
    user_id = get_uid()
    if user_id == None: return jsonify("nok")
    data = db.get_user(user_id)
    if data == None: return jsonify("nok")
    data["id"] = user_id
    data["verified"] = False
    ret = json.dumps(data, default=str, indent = 4)
    return ret

@app.route('/change_userdata', methods=["POST", "GET"])
def change_userdata():
    user_id = get_uid()
    if user_id == None: return jsonify("nok")
    data = get_request_data()
    return jsonify(db.change_userdata(user_id, data["key"], data["value"]))

@app.route('/delete_user', methods=["POST", "GET"])
def delete_user():
    user_id = get_uid()
    if user_id == None: return jsonify("nok")
    data = get_request_data()
    return jsonify(db.delete_user(user_id))

@app.route('/get_ranking', methods=["POST", "GET"])
def get_ranking():
    user_id = get_uid()
    data = get_request_data()
    if user_id == None: return jsonify("nok")
    return jsonify(db.get_ranking(user_id, data["points"]))

@app.route('/get_total_players', methods=["POST", "GET"])
def get_total_players():
    data = get_request_data()
    return jsonify(db.get_total_players())
    return jsonify("nok")

@app.route('/get_ranklist', methods=["POST", "GET"])
def get_ranklist():
    data = get_request_data()
    return jsonify(db.get_ranklist(data["rank"]))
# END interactions --------------------------------------------------------------------------------------------------------------------



if development: app.run() # for development
else: app.run(debug=True,host='0.0.0.0',port=int(os.environ.get('PORT', 8080))) # for production