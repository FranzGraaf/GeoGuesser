from flask import Flask
from flask import request, jsonify
import time
from firestore import Firestore
import json
from flask_cors import CORS
from firebase_admin import auth
import datetime
from global_functions import url_to_date
import os

debug=True
app = Flask(__name__)
CORS(app, supports_credentials=True)
#fs = Firestore()



# START other functions --------------------------------------------------------------------------------------------------------------------
def get_storage_image(image):
    # START possible solution to prohibit a backend error by loading an event incorrectly --------------
    if image == "" or image == None:
        return "" 
    tries = 1
    while tries > 0:
        try:
            blob = fs.get_bucket().blob(image)
            blob.make_public()
            tries = 0
        except Exception as e:
            tries -= 1
            #time.sleep(1.5)
    # END possible solution to prohibit a backend error by loading an event incorrectly --------------
    return blob.public_url

@app.route('/get_image_from_storage', methods=["GET"])
def get_image_from_storage():
    try:
        image = get_storage_image(str(request.args["image"]))
        return jsonify(image)
    except Exception as e:
        print(e)
    return jsonify("0")

"""def get_uid():
    id_token = request.headers["id_token"]
    if id_token == "null" : return None
    else:
        user = auth.verify_id_token(id_token)
        return user["uid"]

def get_request_data():
    erg = json.loads(request.data);
    if debug: print("Debug:get_data:01: ",erg)
    return erg"""
# END other functions --------------------------------------------------------------------------------------------------------------------


# START interactions --------------------------------------------------------------------------------------------------------------------
"""@app.route('/get_search_data', methods=["POST"])
def get_search_data():
    pseudonym = get_uid()
    data = get_request_data()
    try:
        country = data["country"]
    except:
        country = "None"
    try:
        coding_languages = data["coding_languages"]
    except:
        coding_languages = "None"
    try:
        search_text=data["search_text"]
    except:
        search_text="None"
    if country == "" : country = "None"
    if coding_languages == [] : coding_languages = "None"
    if search_text == "" : search_text = "None"
    erg = fs.suchen(country,coding_languages,search_text,pseudonym)
    return json.dumps(erg,default=str)

@app.route('/create_user', methods=["POST", "GET"])
def create_user():
    pseudonym = get_uid()
    if pseudonym == None: return '{"return":"nok"}'
    data = get_request_data()
    data["registriert"] = url_to_date(data["registriert"])
    data["lastlogin"] = url_to_date(data["lastlogin"])
    fs.set_Pseudonym(pseudonym, data)
    return '{"return":"ok"}'

@app.route('/get_user', methods=["POST", "GET"])
def get_user():
    pseudonym = get_uid()
    if pseudonym == None: return '{"return":"nok","detail":"Kein Pseudonym vorgegeben"}'
    if not fs.has_Pseudonym(pseudonym): return '{"return":"ko","detail":"Pseudonym existiert nicht"}'
    data = fs.get_Benutzer(pseudonym)
    data["Id"] = pseudonym
    dict_erg = {}
    dict_erg["return"] = "ok"
    dict_erg["detail"] = data
    erg = json.dumps(dict_erg, default=str, indent = 4)
    return erg

@app.route('/get_user_userview', methods=["POST", "GET"])
def get_user_userview():
    id = get_request_data()["id"]
    data = fs.get_Benutzer(id)
    data["Id"] = id
    dict_erg = {}
    dict_erg["return"] = "ok"
    dict_erg["detail"] = data
    erg = json.dumps(dict_erg, default=str, indent = 4)
    return erg

@app.route('/change_userdata', methods=["POST", "GET"])
def change_userdata():
    pseudonym = get_uid()
    data = get_request_data()
    return fs.aendern(pseudonym, data["feld"], data["wert"])

@app.route('/chateintrag_erstellen', methods=["POST", "GET"])
def chateintrag_erstellen():
    pseudonym = get_uid()
    data = get_request_data()
    partner = data["Id"]
    chatid = pseudonym + partner
    ok = True
    rc = fs.addChatToUser(pseudonym,chatid,partner)
    if not rc: ok = False
    rc = fs.addChatToUser(partner,chatid,pseudonym)
    if not rc: ok = False
    if ok:
        fs.addChat(chatid,pseudonym)
        return '{"return":"ok"}'
    return '{"return":"ko"}'

@app.route('/chatnachricht_hinzufuegen', methods=["POST", "GET"])
def chatnachricht_hinzufuegen():
    pseudonym = get_uid()
    data = get_request_data()
    chatid = data["chat_id"]
    nachricht = data["nachricht"]
    partner_id = data["partner_id"]
    fs.addChatNachricht(pseudonym,chatid,partner_id,nachricht)
    return '{"return":"ok"}'

@app.route('/chateintrag_daten_lesen', methods=["POST", "GET"])
def chateintrag_daten_lesen():
    # pseudonym = get_uid()
    data = get_request_data()
    chatid = data["chat_id"]
    chat = fs.getChat(chatid)
    return json.dumps(chat,default=str)

@app.route('/chateintrag_loeschen', methods=["POST", "GET"])
def chateintrag_loeschen():
    pseudonym = get_uid()
    data = get_request_data()
    partner = data["partner_id"]
    chatid = data["chat_id"]
    ok = True
    rc = fs.removeChatFromUser(pseudonym,chatid)
    if not rc: ok = False
    rc = fs.removeChatFromUser(partner,chatid)
    if not rc: ok = False
    if ok:
        fs.removeChat(chatid,pseudonym)
        return '{"return":"ok"}'
    return '{"return":"ko"}'"""
# END interactions --------------------------------------------------------------------------------------------------------------------



app.run() # for development
#app.run(debug=True,host='0.0.0.0',port=int(os.environ.get('PORT', 8080))) # for production