import firebase_admin
from firebase_admin import credentials, firestore, storage
from global_functions import url_to_date
#from test.test_tempfile import TestGetCandidateNames
from datetime import datetime
import re

global anzahl_init_firebase
anzahl_init_firebase = 0

class Firestore:

    def __init__(self):
        super().__init__()
        global anzahl_init_firebase
        anzahl_init_firebase = anzahl_init_firebase + 1
        if anzahl_init_firebase <= 1:
            self.init_firestore_app()
        self.db = firestore.client()

    def init_firestore_app(self):
        cred = credentials.Certificate("key.json") # "key.json" # "key2.json"
        self.default_app = firebase_admin.initialize_app(cred, {
        'storageBucket': u'fellowcoder-org-dev.appspot.com' # u'fellowcoder-org-dev.appspot.com'  # u'fellowcoder-org.appspot.com' 
        })
        self.default_bucket = storage.bucket()

    def get_bucket(self):
        return self.default_bucket
    
    def has_Pseudonym(self,pseudonym):
        dokument_ref = self.db.collection('benutzer').document(pseudonym)
        dokument = dokument_ref.get()
        if dokument.exists:
            return True
        return False

    def set_Pseudonym(self,pseudonym,daten):
        self.db.collection('benutzer').document(pseudonym).set(daten)
    
    def update_Pseudonym(self,pseudonym,daten):
        self.db.collection('benutzer').document(pseudonym).update(daten)

    def get_Benutzer(self,pseudonym):
        dokument_ref = self.db.collection('benutzer').document(pseudonym)
        dokument = dokument_ref.get()
        return dokument.to_dict()
    
    def aendern(self, pseudonym, feld, wert):
        try:
            if feld == "geburtsdatum":
                wert = url_to_date(wert)
            self.db.collection('benutzer').document(pseudonym).update({
                feld: wert,
            })
            return '{"return":"ok"}'
        except Exception as e:
            print(e)
            return '{"return":"ko"}'
    
    def addChatToUser(self, pseudonym, chatid, partner):
        benutzer = self.get_Benutzer(partner)
        partner_name = benutzer["name"]
        partner_picture = benutzer["bildurl"]
        dokument_ref = self.db.collection('benutzer').document(pseudonym)
        dokument = dokument_ref.get()
        if dokument.exists:
            pydokument = dokument.to_dict()
            try:
                chats = pydokument["chats"]
            except:
                chats = []
            gibtsschon = False
            for chat in chats:
                testid = chat["chat_id"]
                if testid == chatid:
                    gibtsschon = True
            if not gibtsschon:
                chats.append({"chat_id":chatid,"partner_id":partner,"partner_name":partner_name,"partner_picture":partner_picture,"last_message_time":None})
                self.db.collection('benutzer').document(pseudonym).update({"chats":chats})
                return True
            return False
    
    def addChat(self, chatid, user):
        self.db.collection('chats').document(chatid).set({"messages": []}) 
        return

    def removeChatFromUser(self, user_id, chatid):
        dokument_ref = self.db.collection('benutzer').document(user_id)
        dokument = dokument_ref.get()
        if dokument.exists:
            pydokument = dokument.to_dict()
            chats = []
            try:
                chats = pydokument["chats"]
            except:
                pass
            j = 0
            for i, e in enumerate(chats):
                if e["chat_id"] == chatid:
                    j = i
                    break
            chats.pop(j)
            self.db.collection('benutzer').document(user_id).update({"chats":chats})
            return True
        return False
    
    def removeChat(self, chatid, user):
        self.db.collection('chats').document(chatid).delete()
        return

    def addChatNachricht(self, pseudonym, chatid, partner_id, nachricht):
        dokument_ref = self.db.collection('chats').document(chatid)
        dokument = dokument_ref.get()
        jetzt = str(datetime.now())
        if dokument.exists:
            pydokument = dokument.to_dict()
            pyarray = pydokument["messages"]
            pyarray.append({"time":jetzt,"user_id":pseudonym,"text":nachricht})
            pydokument["messages"] = pyarray
            self.db.collection('chats').document(chatid).set(pydokument)
        # change last message time for this chat in each users database
        dokument_ref_1 = self.db.collection('benutzer').document(pseudonym)
        dokument_ref_2 = self.db.collection('benutzer').document(partner_id)
        c1 = dokument_ref_1.get().to_dict()["chats"]
        j = 0
        for i, e in enumerate(c1):
            if e["chat_id"] == chatid:
                j = i
                break
        c1[j]["last_message_time"] = jetzt
        c2 = dokument_ref_2.get().to_dict()["chats"]
        j = 0
        for i, e in enumerate(c2):
            if e["chat_id"] == chatid:
                j = i
                break
        c2[j]["last_message_time"] = jetzt
        self.db.collection('benutzer').document(pseudonym).update({"chats": c1})
        self.db.collection('benutzer').document(partner_id).update({"chats": c2})
        return
            
    def getChat(self, chatid):
        dokument_ref = self.db.collection('chats').document(chatid)
        dokument = dokument_ref.get()
        if dokument.exists:
            pydokument = dokument.to_dict()
            return pydokument
        else:
            return {"return":"ko"}
    
    def suchen(self,country,coding_languages,search_text,pseudonym):
        erg = {}
        benutzer_ref = self.db.collection('benutzer')
        benutzer = benutzer_ref.stream()
        for doc in benutzer:
            data = doc.to_dict()
            data["Id"] = doc.id 
            if not pseudonym == doc.id:
                if self.test_suchkriterien(data,country,coding_languages,search_text): erg[doc.id] = data
        return erg
    
    def test_suchkriterien(self,data,country,coding_languages,search_text):
        erg = True
        if not country == "None" and not country == "All":
            try:
                if not data["land"] == country: erg = False
            except:
                erg = False
        if not search_text == "None":
            try:
                if not re.search(search_text, data["beschreibungstext"], re.IGNORECASE):
                    try:
                        if not re.search(search_text, data["name"], re.IGNORECASE): erg = False
                    except:
                        erg = False
            except:
                erg = False
        if not coding_languages == "None" and not "All" in coding_languages:
            ok = False
            for language in coding_languages:
                try:
                    for test_language_key in data["sprachen"]:
                        if language == test_language_key: ok = True
                except:
                    ok = False
            if not ok: erg = False
        return erg