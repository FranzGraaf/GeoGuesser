import firebase_admin
from firebase_admin import credentials, firestore, storage, auth


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

    #-----------------------------------------------
    def create_user(self,user_id,daten):
        try:
            self.db.collection('User').document(user_id).set(daten)
            self.db.collection('Ranking').document("rank").update(
                {user_id: {"nickname": daten["nickname"], "points": daten["points"]}}
            )
            return user_id
        except Exception as e:
            print(e)
            return "nok"

    def get_user(self,user_id):
        try:
            doc_ref = self.db.collection('User').document(user_id)
            doc = doc_ref.get()
            return doc.to_dict()
        except Exception as e:
            print(e)
            return None
    
    def change_userdata(self, user_id, key, value):
        try:
            if key == "nickname":
                temp_dict = self.db.collection('Ranking').document("rank").get().to_dict()[user_id]
                temp_dict["nickname"] = value
                self.db.collection('Ranking').document("rank").update({
                user_id: temp_dict,
            })
            if key == "points":
                temp_dict = self.db.collection('Ranking').document("rank").get().to_dict()[user_id]
                temp_dict["points"] = value
                self.db.collection('Ranking').document("rank").update({
                user_id: temp_dict,
            })
            self.db.collection('User').document(user_id).update({
                key: value,
            })
            return "ok"
        except Exception as e:
            print(e)
            return "nok"
    
    def delete_user(self,user_id):
        try:
            self.db.collection('User').document(user_id).delete()
            self.db.collection('Ranking').document("rank").update({
                user_id: firestore.DELETE_FIELD
            })
            # delete storage folder
            for i in self.default_bucket.list_blobs():
                if i.id.find(user_id) != -1:
                    #print(i.id)
                    i.delete()
            # delete authentication
            auth.delete_user(user_id)
            return "ok"
        except Exception as e:
            print(e)
            return "nok"

    def get_total_players(self):
        try:
            return len(self.db.collection('Ranking').document("rank").get().to_dict().keys())
        except Exception as e:
            print(e)
            return "nok"
    
    def get_ranking(self,user_id, points):
        rank = 1
        if points == None: points = 0
        try:
            for v in self.db.collection('Ranking').document("rank").get().to_dict().values():
                if v["points"] > points: rank += 1
            return rank
        except Exception as e:
            print(e)
            return "nok"
    
    def get_ranklist(self,rank):
        if rank == None: rank = 1
        rank -= 1
        rank_min = rank-5
        rank_max = rank+5
        ret = []
        try:
            rank_list = self.db.collection('Ranking').document("rank").get().to_dict()
            sorted_rank_list = {k: v for k, v in sorted(rank_list.items(), key=lambda item: item[1]["points"], reverse = True)}
            if rank_min < 0: rank_min = 0
            if rank_max >= len(sorted_rank_list): rank_max = len(sorted_rank_list)
            for j, v in enumerate(list(sorted_rank_list.values())[rank_min:rank_max]):
                ret.append({"number": j+1+rank_min, "name": dict(v)["nickname"], "points": dict(v)["points"]})
            return ret
        except Exception as e:
            print(e)
            return "nok"