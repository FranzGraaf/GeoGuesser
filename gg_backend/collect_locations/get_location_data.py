
import csv

with open('collect_locations/cap.csv', newline='',  encoding='utf-8') as csvfile:
    spamreader = csv.reader(csvfile, delimiter=',', quotechar='|')
    for row in spamreader:
        print('Location_Variable(name_de: "'+str(row[0])+ " - " + str(row[1])+'", name_en: "'+str(row[0])+ " - " + str(row[1])+'", lat: '+ str(row[2])+', lon: '+ str(row[3])+'),')
        