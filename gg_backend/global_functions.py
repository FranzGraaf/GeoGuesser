import math
import datetime
import pytz
from firebase_admin import credentials, firestore, storage, auth
from google.api_core.datetime_helpers import DatetimeWithNanoseconds


def url_to_date(url_date):
    # 2020-08-15 16:00:14.366
    temp = url_date.split("-", 1)
    year = int(temp[0])
    temp = temp[1].split("-", 1)
    month = int(temp[0])
    temp = temp[1].split(" ", 1)
    day = int(temp[0])
    temp = temp[1].split(":", 1)
    hour = int(temp[0])
    temp = temp[1].split(":", 1)
    minute = int(temp[0])
    temp = temp[1].split(".", 1)
    second = int(temp[0])
    return datetime.datetime(year,month,day,hour,minute,second)

def url_to_datetimewithnanoseconds(url_date):
    # 2020-08-15 16:00:14.366
    temp = url_date.split("-", 1)
    year = int(temp[0])
    temp = temp[1].split("-", 1)
    month = int(temp[0])
    temp = temp[1].split(" ", 1)
    day = int(temp[0])
    temp = temp[1].split(":", 1)
    hour = int(temp[0])
    temp = temp[1].split(":", 1)
    minute = int(temp[0])
    temp = temp[1].split(".", 1)
    second = int(temp[0])
    return pytz.UTC.localize(DatetimeWithNanoseconds(year,month,day,hour,minute,second))

def url_to_geopoint(url_coordinates):
    coordinatelist = url_coordinates.replace("[","").replace("]","").replace(" ","").split(",")
    geopoint = firestore.GeoPoint(float(coordinatelist[0]), float(coordinatelist[1]))
    return geopoint

def getDistanceFromLatLonInKm(lat1, lon1, lat2, lon2):
    R = 6371 # Radius of the earth in km
    dLat = deg2rad(lat2 - lat1) # deg2rad below
    dLon = deg2rad(lon2 - lon1)
    a = math.sin(dLat / 2) * math.sin(dLat / 2) + math.cos(deg2rad(lat1)) * math.cos(deg2rad(lat2)) * math.sin(dLon / 2) * math.sin(dLon / 2)
    c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a))
    d = R * c # Distance in km
    return d

def deg2rad(deg):
    return deg * (math.pi / 180);