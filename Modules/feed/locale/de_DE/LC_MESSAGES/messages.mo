��    9      �  O   �      �  3   �       1   3      e     �     �     �     �     �     �     �     �     �     �       �       �     �     �     	     	  �   	  �   �	     b
  $   g
     �
     �
      �
  $   �
               !     2     C     P     W  
   e     p     �  "   �     �     �     �  D         E     J     `     e     i  c   |  	   �  :   �     %  #   -     Q     W  �  t  =   Z     �  /   �     �  	   �  
   	               +     ?     ^     e     n     }     �    �     �     �     �     �     �  �   �  �   �     O  '   T      |     �     �      �     �     �          &     ;     I     U  
   h     s  "   �  7   �     �            I   -  	   w     �     �     �     �  l   �     ,  A   8     z     �     �      �           	      4                       1           2   '   -   ,   6          3       *   7              $                    9       8             5      0   /      (   
   &             !                                   )                 +   "       .   #                       %    Add the HTTP header: "Authorization: Bearer APIKEY" Apikey authentication Append on the URL of your request: &apikey=APIKEY Are you sure you want to delete? Cancel Close Datatype Delete feed Delete permanently Deleting a feed is permanent. Engine Feed API Feed API Help Feed API helper Feeds Feeds are where your monitoring data is stored. The route for creating storage feeds is to start by creating inputs (see the inputs tab). Once you have inputs you can either log them straight to feeds or if you want you can add various levels of input processing to your inputs to create things like daily average data or to calibrate inputs before storage. Alternatively you can create Virtual feeds, this is a special feed that allows you to do post processing on existing storage feeds data, the main advantage is that it will not use additional storage space and you may modify post processing list that gets applyed on old stored data. You may want the next link as a guide for generating your request:  Get all feed fields Get feed field Get feed process list Html Id If you have Input Processlist processors that use this feed, after deleting it, review that process lists or they will be in error, freezing other Inputs. Also make sure no Dashboards use the deleted feed. If you want to call any of the following actions when your not logged in you have this options to authenticate with the API key: JSON Last updated time and value for feed Last value for multiple feeds Last value of a given feed List feeds for autenticated user List public feeds for the given user Name New Virtual Feed New virtual feed No feeds created Process list Public Read & Write: Read only: Refresh feed size Reset feed process list Return buffer points pending write Return total engines size Returns feed data Returns histogram data Returns kwh consumed in a given power band using histogram data type Save Set feed process list Size Tag The feed list view This is a Virtual Feed, after deleting it, make sure no Dashboard continue to use the deleted feed. This page To use the json api the request url needs to include .json Updated Use POST parameter: "apikey=APIKEY" Value Virtual feed process actions Project-Id-Version: emoncms3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-01-29 00:22+0100
PO-Revision-Date: 2017-01-29 00:25+0100
Last-Translator: @sumpfing <anne@sumpfing.de>
Language-Team: @sumpfing <anne@sumpfing.de>
Language: de_DE
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Poedit-KeywordsList: _;gettext;gettext_noop
X-Poedit-Basepath: .
X-Generator: Poedit 1.8.11
X-Poedit-SourceCharset: UTF-8
X-Poedit-SearchPath-0: ../../..
 Dem HTTP Header hinzufügen:   "Authorization: Bearer APIKEY" Apikey Authentifikation Der URL bei Request hinzufügen: &apikey=APIKEY Diesen Feed wirklich löschen? Abbrechen Schliessen Datentyp Feed löschen Dauerhaft gelöscht Feed wird dauerhaft gelöscht. Engine Feed API Feed API Hilfe Feed API Hilfe Feeds In den Feeds werden die Monitoringdaten gespeichert. Der empfohlene Weg um Feeds anzulegen ist das vorherige Anlegen von Inputs (siehe Inputs Tab). Wenn Inputs vorhanden sind können sie gespeichert werden. Alternativ können virtuelle Feeds angelegt werden, für eine Nachverarbeitung von bestehenden Feeds. Ein Vorteil besteht darin das kein zusätzlicher Speicherplatz benötigt wird und auch bestehende Daten nachverarbeitet werden können. Der folgende Link kann zur Erstellung eines Requests genutzt werden: Abruf Feed Felder  Feed Feld abrufen Abruf Feed Process Liste Html Id Prüfen Sie nach dem Löschen die Process Listen. Der gelöschte Feed darf nicht mehr verwendet werden, sonst entstehen Fehler und andere Inputs frieren ein. Prüfen Sie außerdem das kein Dashboard den gelöschten Feed benutzt. Wenn die folgenden Funktionen - ohne eingeloggt zu sein - aufrufen werden sollen, kann der API Key der URL hinzugefügt werden: &apikey=APIKEY. JSON Feed aktualisiert (Wert und Zeitpunkt)  Letzter Wert für Multiple Feeds Aktueller Wert des Feeds Liste der Feeds für Benutzer Öffentliche Feeds des Benutzers Name Neuer Virtueller Feed Neuer Virtueller Feed Keine Feeds angelegt Process LIste Öffentlich Lesen & Schreiben: Nur Lesen: Feed Größe aktualisieren Rücksetzen der Feed Process Liste Rückgabe Pufferpunkte für ausstehenden Schreibvorgang Rückgabe Engine - Größe  zeigt Feed Daten zeigt Histogramm Daten Zeigt verbrauchte kWh in bestimmten Leistungsbereich als Histogramm Daten Speichern Setzen Feed Process LIste Größe Tag Listenansicht der Feeds Dies ist ein virtueller Feed, nach dem Löschen prüfen Sie das kein Dashboard den gelöschten Feed benutzt. Diese Seite Um die json Api zu nutzen muss der Request include.json enthalten Aktualisiert POST Parameter: "apikey=APIKEY" Wert Virtueller Feed Process Aktionen 