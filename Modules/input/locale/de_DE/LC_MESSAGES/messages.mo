��    D      <  a   \      �     �  N   �  3   7  w   k     �  1   �      +     L     j     ~  	   �     �     �     �     �            #   #     G     N     [  �   k     	     
	  ]   $	     �	     �	  �   �	  	   3
     =
     L
     Z
  #   p
     �
  �   �
     h     u  M   y     �     �     �     �  �        �                -     9  
   G     R  E   k     �     �  !   �  O   �  =   K     �  U   �  	   �  .   �  �   ,  �   �  A   �       #   !     E  $   K  �  p     E  O   L  ;   �  q   �     J  0   b     �      �     �     �               -     G     d     �  	   �      �     �     �     �  �   �  
   |  $   �  [   �           )  i   E  	   �     �     �     �      �       �        �     �  Z   �  $   R     w     |     �  �   �     �     �     �     �     �  
   �  !   �  G        _     l     �  ?   �  A   �     '  \   5     �  6   �  �   �  �   o  K   _  	   �  (   �     �  <   �     "   	       2   -   %         A             6             +   D   #   ?                   '   $                 ;      C       
                            B          *      :               =              4       8       @      1   5       3      0       )      (       .         >          9         &              7   /      ,             <      !        APIKEY Absolute time format (-6 is 1387730121 seconds since 1970-01-01 00:00:00 UTC)) Add the HTTP header: "Authorization: Bearer APIKEY" All the numbers after the first two are data values. The second node here (node 17) has two data values: 1437 and 3164. Apikey authentication Append on the URL of your request: &apikey=APIKEY Are you sure you want to delete? Assign inputs to a node group Available HTML URLs Available JSON commands Bulk data Bulk mode absolute time format: Bulk mode legacy format: Bulk mode sentat format: Bulk mode time offset format: CSV format: Cancel Clean inputs without a process list Delete Delete Input Delete an input Deleting an Input will lose it name and configured Processlist.<br>A new blank input is automatic created by API data post if it does not already exists. Edit Error setting processlist For example using the first json type request above just add the apikey to the end like this: Get input process list Get inputs configuration If you want to call any of the following actions when your not logged in you have this options to authenticate with the API key: Input API Input API Help Input actions Input process actions Input processing configuration page Inputs Inputs are the main entry point for your monitoring device. Configure your device to post values here, you may want to follow the <a href="api">Input API helper</a> as a guide for generating your request. JSON format: Key Legacy default format (4 is now, 2 is -2 seconds and 0 is -4 seconds to now): List of inputs with latest data Name No inputs created Node Optional offset and time parameters allow the sender to set the time reference for the packets. If none is specified, it is assumed that the last packet just arrived. The time for the other packets is then calculated accordingly. Post data (using http get) Post data (using http post) Process list Processlist Read & Write: Read only: Reset input process list Sentat format: (useful for sending as positive increasing time index) Set input fields Set input process list Set the input entry time manually The examples below use curl to post the data to the input api. It is availible  The first number of each node is the time offset (see below). The input list view The second number is the node id, this is the unique identifer for the wireless node. This page Time offset format (-6 is -16 seconds to now): To post data from a remote device you will need to include in the request url your write apikey. This give your device write access to your emoncms account, allowing it to post data. To post data using http post you can use the "data" post parameter, it will accept csv and json formatting. Other parameters need to be provided as a parameter in the url, the only exception is the apikey which can be a post parameter as well. To use the json api the request url needs to include <b>.json</b> Updated Use POST parameter: "apikey=APIKEY" Value You can provide data using bulk mode Project-Id-Version: emoncms3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-02-05 14:17+0100
PO-Revision-Date: 2017-02-05 14:18+0100
Last-Translator: Frank Dille
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
 APIKEY Absolutes Zeitformat (-6 ist 1387730121 Sekunden seit 1970-01-01 00:00:00 UTC)) Hinzufügen zum HTTP Header: "Authorization: Bearer APIKEY" Alle Zahlen nach den ersten beiden sind Datenwerte. Der zweite Node (Node 17) hat zwei Datenwerte: 1437 und 3164. Apikey Authentifikation beim Request der URL hinzufügen: &apjkey=APIKEY Wollen Sie wirklich löschen? Inputs einer Nodegruppe zuweisen Verfügbare HTML URLs Verfügbare JSON Befehle Massendaten Blockmodus absolutes Zeitformat Blockmodus Legacy Format: Blockmodus GesendetAm Format Blockmodus Zeitoffset Format CSV Format: Abbrechen Input ohne Verarbeitung löschen Löschen Input löschen Einen Input löschen Beim Löschen eines Inputs gehen der Name und die eingestellte Prozessliste verloren.<br>Ein neuer leerer Input wird automatisch von der API erstellt. Bearbeiten Fehler beim Ändern der Prozessliste Um beispielsweise den ersten JSON Request zu benutzen füge einfach den Apikey am Ende ein: Input Verarbeitungsliste abrufen Input Konfiguration abrufen Wenn man nachfolgende Aktionen ohne Anmeldung aufrufen will, muss der Apikey zur URL hinzugefügt werden: Input API Input API Hilfe Input Aktionen Input Verarbeitungsaktionen Konfiguration Inputverarbeitung  Inputs Inputs sind der Standardeinstiegspunkt für ein Gerätdaten. Konfigurieren Sie Geräte um hier Werte zu posten, folgen Sie der <a href="api">Input API Hilfe</a> als Anleitung zum Erzeugen von Requests. JSON Format: Key Vererbtes Standardformat (4 ist aktuell, 2 ist -2 Sekunden und 0 ist -4 Sekunden zu jetzt: Liste der Inputs mit aktuellen Daten Name Keine Inputs angelegt Node Optionale Abstand- und Zeitparameter erlauben dem Sender die Referenzzeit für die Pakete zu setzen. Wenn nichts angegeben ist wird angenommen, dass es das letzte eingegangene Paket ist. Die Zeit für die anderenPakete wird dann errechnet. Daten per HTTP Post senden Daten per HTTP Post senden Prozessliste Prozessliste Lesen & Schreiben: Nur Lesen: Input Verarbeitungsliste löschen Sentat Format: (hilfreich um positiv ansteigende Zeitindizes zu senden) Input setzen Input Verarbeitungsliste setzen Inputzeit manuell setzen Die Beispiele benutzen curl zum Senden von Daten per Input Api. Die erste Zahl jedes Nodes ist der Zeitunterschied (siehe unten). Input Ansicht Die zweite Nummer ist die Node ID, dies ist die einmalige Kennzeichnung für einen Funknode. Diese Seite Zeitunterschied Format (-6 ist -16 Sekunden zu jetzt): Um Daten von einem Remotegerät zu posten muss der Write Apikey in die Request-URL eingefügt. Dies gibt dem Gerät Schreibzugriff auf das emoncms Konto. Zum Senden von Daten per HTTP wird der "data" Parameter verwendet. Dieser akzeptiert das CSV und JSON Format. Weitere Parameter werden in der URL angegeben. Einzige Ausnahme ist der API-Key der auch als POST Parameter gesendet werden kann. Um die json api zu nutzen benötigt die Request-URL den Inhalt <b>.json</b> Geändert POST Parameter benutzen: "apikey=APIKEY" Wert Du kannst Daten bereitstellen wenn du den Bulk Modus benutzt 