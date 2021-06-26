import firebase_admin
from firebase_admin import credentials, firestore, storage


class DB_Init_Read_Write:

    def __init__(self):
        super().__init__()
        self.init_firestore_app()
        self.db = firestore.client()

    def init_firestore_app(self):
        cred = credentials.Certificate("geoguesser-bccbe-firebase-adminsdk-qw3kv-e2c3f72b0f.json")
        self.default_app = firebase_admin.initialize_app(cred, {
        'storageBucket': u'geoguesser-bccbe.appspot.com' 
        })
        self.default_bucket = storage.bucket()

    def get_bucket(self):
        return self.default_bucket

    def create_user(self,user_id,daten):
        self.db.collection('User').document(user_id).set(daten)
        return user_id

    def get_user(self,user_id):
        doc_ref = self.db.collection('User').document(user_id)
        doc = doc_ref.get()
        return doc.to_dict()
    
    def change_userdata(self, user_id, key, value):
        try:
            self.db.collection('User').document(user_id).update({
                key: value,
            })
            return "ok"
        except Exception as e:
            print(e)
            return "nok"