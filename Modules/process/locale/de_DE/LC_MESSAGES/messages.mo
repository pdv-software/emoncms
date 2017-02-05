��    �        �   �	      8     9     A     P     X     g     o     ~     �     �     �     �     �     �     �  `  �  �  &  �    �  �  �   �  �   �  �        �     �     �     �  3   �  �     �   �     v     �     �     �  1   �     �     �     �               3  V   9  j   �  /   �  �   +    �     �     �       �     �   �     �      �      �      �   (   �      �   	   �   	   �      �      �      
!     !     .!     ?!     O!     _!     p!     �!  e   �!  e   �!  }   b"  a   �"  a   B#  y   �#  �   $  �   �$  {   &%  �   �%     #&     1&     L&  )   X&     �&     �&  Z   �&     �&  Y   '  	   h'     r'  �   z'  �   6(  ^   �(     W)  �   d)     T*  &   Z*  D   �*  #   �*  %   �*  ,   +  
   =+  ^   H+     �+     �+     �+     �+     �+     �+  �   �+     �,     �,     �,     �,  
   �,     �,     �,     �,     �,     -  �   -     �-     .     .  �   +.  �   �.  �   �/     h0  �   m0  a   �0  	   Q1  A   [1  $   �1     �1     �1     �1  z   �1     d2  #   w2     �2     �2     �2     �2     �2     �2     3     3     83     :3     G3     T3     g3     i3     �3     �3     �3     �3     �3  �  �3     �5     �5     �5     �5     �5     �5     �5     �5     �5     �5     �5     6     6     6    !6    �7  p  �:  �  )<  �   �=  l   �>     2?     K?     W?     `?     l?  ;   z?  �   �?  �   l@     !A     2A     CA     LA  0   dA     �A     �A     �A  	   �A     �A  	   �A  R   �A  ,   EB  )   rB  �   �B  -  #C     QD     ZD     lD  �   uD  �   /E     �E  
   �E     �E     F  *   F     =F     BF  
   NF  $   YF  '   ~F  '   �F  #   �F  $   �F  #   G  #   ;G  $   _G  &   �G  &   �G  S   �G  U   &H  W   |H  M   �H  O   "I  V   rI  W   �I  W   !J  V   yJ  i   �J     :K     NK     hK  .   zK     �K     �K  C   �K     L  C   "L  
   fL  	   qL  �   {L  �   7M  �   �M     �N  [   �N     �N      �N  D   O  )   _O  (   �O  3   �O     �O  �   �O  !   �P     �P     �P     �P     �P     �P  �   Q     �Q     �Q     �Q     �Q  
   �Q     �Q     �Q     R     R     2R  p   >R     �R     �R  
   �R  �   �R  �   �S  �   ST     
U  {   U  k   �U     �U  K   V     OV     nV     wV     �V  o   �V     W  (   W     ?W     DW     \W     zW     �W  #   �W     �W     �W     �W     �W     X     !X     <X  &   >X     eX     rX  $   tX     �X     �X     k   |   !   %       $   V   5   Y   �   A                   E   Z   <   d   I   X   �   �          �   �       �   2   s   c       �              {       [   �   ^                     �   /       N   ;       ~   �   �   q   >   J       +                   U   C       l           4       	       )   0   M   '   v   (   �              i                  �   �   D   S       o   :          �   B   �   �   T      j   W   G   \   p          �       F       _   L   h   Q       e      
   �      *   z   �       a   }   6   P      -   �       r   �      =   ]                     K   �   &      @   m   g      �      �   .   �   7   `   t   f   �   H   u              �   n   1   ,       �   O         w   "      y      3                  b   8   ?                     R                      �      x   9      #     * feed  * source feed  + feed  + source feed  - feed  - source feed  / feed  / source feed  value + + input - input / input 1/ source feed <b>Wh Accumulator:</b> Use with emontx, emonth or emonpi pulsecount or an emontx running firmware <i>emonTxV3_4_continuous_kwhtotals</i> sending cumulative watt hours.<br><br>This processor ensures that when the emontx is reset the watt hour count in emoncms does not reset, it also checks filter's out spikes in energy use that are larger than a max power threshold set in the processor, assuming these are error's, the max power threshold is set to 25kW. <br><br><b>Visualisation tip:</b> Feeds created with this input processor can be used to generate daily kWh data using the BarGraph visualisation with the delta property set to 1 and scale set to 0.001.<br>See forum thread here for an example <a href='https://openenergymonitor.org/emon/node/12308'>Creating kWh per day bar graphs from Accumulating kWh </a></p><p><b>Requires redis installed to work</b></p> <p><b>Log to feed:</b> This processor logs to a timeseries feed which can then be used to explore historic data. This is recommended for logging power, temperature, humidity, voltage and current data.</p><p><b>Feed engine:</b><ul><li><b>PHPFina</b> is the recommended feed engine it is a basic fixed interval timeseries engine.</li><li><b>PHPTimeseries</b> is for data posted at a non regular interval such as on state change.</li></ul></p><p><b>Feed interval:</b> When selecting the feed interval select an interval that is the same as, or longer than the update rate that is set in your monitoring equipment. Setting the interval rate to be shorter than the update rate of the equipment causes un-needed disk space to be used up.</p> <p><b>Power to kWh:</b> Convert a power value in Watts to a cumulative kWh feed.<br><br><b>Visualisation tip:</b> Feeds created with this input processor can be used to generate daily kWh data using the BarGraph visualisation with the delta property set to 1.<br>See forum thread here for an example <a href='https://openenergymonitor.org/emon/node/12308'>Creating kWh per day bar graphs from Accumulating kWh </a></p> <p><b>Source Feed:</b><br>Virtual feeds should use this processor as the first one in the process list. It sources data from the selected feed.<br>The sourced value is passed back for further processing by the next processor in the processing list.<br>You can then add other processors to apply logic on the passed value for post-processing calculations in realtime.</p><p>Note: This virtual feed process list is executed on visualizations requests that use this virtual feed.</p> <p>Jumps the process execution to the specified position.</p><p><b>Warning</b><br>If you're not careful you can create a goto loop on the process list.<br>When a loop occurs, the API will appear to lock until the server php times out with an error.</p> A NULL value is passed back for further processing by the next processor in the processing list.<br>Usefull for conditional process to work on. Accumulate Wh measurements into kWh/d.<p><b>Input</b>: energy increments in Wh.</p><p><b>Output</b>: original value is passed through untouched.</p> Accumulator Actions Add Add process Add the HTTP header: "Authorization: Bearer APIKEY" Adds the current value with the last value from a feed as selected from the feed list. The result is passed back for further processing by the next processor in the processing list. Adds the current value with the last value from other input as selected from the input list. The result is passed back for further processing by the next processor in the processing list. Allow negative Allow positive Any type Apikey authentication Append on the URL of your request: &apikey=APIKEY Arg Available HTML URLs Available JSON commands Cancel Changed, press to save Close Convert a number that was interpreted as a 16 bit signed number to an unsigned number. Convert a power value in Watts to a feed that contains an entry for the total energy used each day (kWh/d) Convert accumulating kWh to instantaneous power Counts the amount of time that an input is high in each day and logs the result to a feed. Created for counting the number of hours a solar hot water pump is on each day Creates a histogram of energy binned by power ranges. For each power range on the x-axis, this processor will aggregate the total energy of the stream while it was in that power range.<p><b>Input</b>: power in Watts.</p><p><b>Output</b>: original value is passed through untouched.</p> Daily Daily Average Delete Divides the current value by the last value from a feed as selected from the feed list. The result is passed back for further processing by the next processor in the processing list. Divides the current value with the last value from other input as selected from the input list. The result is passed back for further processing by the next processor in the processing list. ERROR Edit Edit process Engine Enter MQTT topic e.g. home/power/kitchen GOTO Heat flux Histogram If !=, skip next If !NULL, skip next If !ZERO, skip next If <, skip next If <=, skip next If =, skip next If >, skip next If >=, skip next If NULL, skip next If ZERO, skip next If value from last process is NOT NULL, process execution will skip execution of next process in list If value from last process is NOT ZERO, process execution will skip execution of next process in list If value from last process is NOT equal to the specified value, process execution will skip execution of next process in list If value from last process is NULL, process execution will skip execution of next process in list If value from last process is ZERO, process execution will skip execution of next process in list If value from last process is equal to the specified value, process execution will skip execution of next process in list If value from last process is greater or equal to the specified value, process execution will skip execution of next process in list If value from last process is lower or equal to the specified value, process execution will skip execution of next process in list If value from last process is lower than the specified value, process execution will skip execution of next process in list If you want to call any of the following actions when your not logged in you have this options to authenticate with the API key: Input on-time List all supported process Log to feed MYSQL Memory (RAM data lost on power off) MYSQL TimeSeries Max daily value Maximal daily value. Upserts on the selected daily feed the highest value reached each day Min daily value Minimal daily value. Upserts on the selected daily feed the lowest value reached each day Move down Move up Multiplies the current value with the last value from a feed as selected from the feed list. The result is passed back for further processing by the next processor in the processing list. Multiplies the current value with the last value from other input as selected from the input list. The result is passed back for further processing by the next processor in the processing list. Negative values are zeroed for further processing by the next processor in the processing list Not modified Offset current value by given value. This can again be useful for calibrating a particular variable on the web rather than by reprogramming hardware. Result is passed back for further processing by the next processor in the processing list Order Output feed accumulates by input value Output feed is the difference between the current value and the last PHPFINA Fixed Interval No Averaging PHPFIWA Fixed Interval With Averaging PHPTIMESERIES Variable Interval No Averaging Phaseshift Positive values are zeroed for further processing by the next processor in the processing list Power gained to kWh/d Power to kWh Power to kWh/d Process Process API Process actions Processes are executed sequentially with the result value being passed down for further processing to the next processor on this processing list. Publish to MQTT RRD TimeSeries Rate of change Read & Write: Read only: Realtime Reset to NULL Reset to Original Reset to ZERO Saved Scale current value by given value. This can be useful for calibrating a particular variable on the web rather than by reprogramming hardware. Result is passed back for further processing by the next processor in the processing list Select interval Signed to unsigned Source Feed Subtracts from the current value the last value from a feed as selected from the feed list. The result is passed back for further processing by the next processor in the processing list. Subtracts from the current value the last value from other input as selected from the input list. The result is passed back for further processing by the next processor in the processing list. Subtracts the current value with the last value from other input as selected from the input list. The result is passed back for further processing by the next processor in the processing list. Text The original value, unchanged by any process, is passed back for further processing by the next processor in the processing list. The value '0' is passed back for further processing by the next processor in the processing list. This page To use the json api the request url needs to include <b>.json</b> Total pulse count to pulse increment Type text... Type value... UNSUPPORTED Updates or inserts daily value on the specified time (given by the JSON time parameter from the API) of the specified feed Upsert feed at day Use POST parameter: "apikey=APIKEY" Value Wh Accumulator Wh increments to kWh/d You have no processes defined add value to source feed calc source feed reciprocal d divide value by source feed h kWh to Power kWh to kWh/d kWh to kWh/d (OLD) m muliply value with source feed process list setup s subtract value from source feed x x input Project-Id-Version: emoncms3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-02-05 23:09+0100
PO-Revision-Date: 2017-02-05 23:09+0100
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
  * feed  * Quell Feed  + feed  + Quell Feed  - feed  - Quell Feed  / feed  / Quell Feed  Wert + + Input - Input / Input 1/Quell Feed <p><b>Power zu kWh:</b> Konvertiert Leistung in Watt zu aufsummierten kWh Wert.<br><br><b>Visualisierung Tipp:</b> Feeds mit diesem Processor können für Tägliche kWh Daten in einem Balkendiagramm mit Delta Eigenschaft =1 angezeigt werden.<br>Siehe Forum Eintrag <a href='https://openenergymonitor.org/emon/node/12308'>Creating kWh per day bar graphs from Accumulating kWh </a></p> <p><b>In Feed Speichern:</b> Dieser Prozessor speichert Input Werte in einen Feed. Die Werte können über die Zeit ausgewertet werden. Dies wird empfohlen um Daten wie Leistung, Temperatur, Luftfeuchte, Spannung und Strom aufzuzeichnen.</p><p><b>Engine:</b><ul><li><b>PhpFixNoAvg</b> festes Intervall keine Mittelwerte</li><li><b>PhpFixWithAvg</b> festes Intervall mit Mittelwert</li><li><b>PhpTimeSeries</b> unregelmäßige Daten</li><li><SQL TimeSeries</b>unregelmäßige Daten in Tabelle</li><li><SQL Memory</b>unregelmäßige Daten im RAM (Temporäre Tabelle, Daten gehen bei Neustart verloren!)</li></ul></p><p><b>Intervall:</b> Verwenden Sie ein Intervall das größer oder gleich der Änderungsrate entspricht. Ein Intervall das zu klein gewählt ist verschwendet Speicherplatz.</p> <p><b>Power zu kWh:</b> Konvertiert Power Wert in Watt zu aufsummierten kWh Wert.<br><br><b>Visualisierung Tipp:</b> Feeds mit diesem Processor können für Tägliche kWh Daten in einem Balkendiagramm mit Delta Eigenschaft =1.<br>Siehe Forum Eintrag <a href='https://openenergymonitor.org/emon/node/12308'>Creating kWh per day bar graphs from Accumulating kWh </a></p> <p><b>Quell Feed:</b><br>Virtuelle Feeds sollten diesen Schritt als ersten verwenden. Es werden die Daten des Quell-Feeds verwendet.<br>Der Quellwert wird an den nächsten Schritt weiter gegeben.<br>Es können weitere Berechnungen eingefügt werden.</p><p>Hinweis: Die Berechnungen des virtuellen Feeds werden bei der Visualisierung in Echtzeit ausgeführt. Daher kann es bei größeren Zeitbereichen zu Verzögerungen kommen.</p> <p>Springt in der Verarbeitung zu einer festgelegten Position.</p><p><b>Warnung:</b><br>Es kann dadurch eine Endlosschleife entstehen. Wenn dies geschieht blockiert die Schleife die API bis der Server einen PHP Timeout Fehler wirft.</p> Ein NULL Wert wird an den nächsten Prozessschritt gegeben.<br>Nützlich bei der Verwendung von Bedingungen. Berechnet Wh in kWh/Tag. Akkumulator Aktionen Hinzufügen Neuer Prozess Hinzufügen zum HTTP Header: "Authorization: Bearer APIKEY" Addiert den aktuellen Wert mit dem letzten Wert des ausgewählten Feed. Das Resultat wird zur weiteren Verarbeitung an den nächsten Prozess in der Verarbeitungsliste weitergegeben. Addiert des aktuellen Wert mit dem letzten Wert des gewählten Inputs. Das Resultat wird zur weiteren Verarbeitung an den nächsten Prozess in der Verarbeitungsliste weitergegeben. Erlaube negative Erlaube positive Any Type Apikey Authentifikation beim Request der URL hinzufügen: &apjkey=APIKEY Arg Verfügbare HTML URLs Verfügbare JSON Befehle Abbrechen Speichern (geändert) Abbrechen Konvertiert eine 16 Bit Zahl mit Vorzeichen zu Vorzeichenlos. (signed to unsigned) Konvertiert Power in W in einen Wert kWh/Tag Konvertiert aufsummierte kWh in Leistung. Berechnet die Zeitspanne/Tag in der ein Input Werte liefert. Wird z.B. verwendet um die Betriebsstunden einer Solarpumpe zu berechnen. Erstellt Histogramm für Energiedaten. energy binned by power ranges. For each power range on the x-axis, this processor will aggregate the total energy of the stream while it was in that power range.<p><b>Input</b>: power in Watts.</p><p><b>Output</b>: original value is passed through untouched.</p> Täglich Tagesdurchschnitt Löschen Dividiert den aktuellen Wert durch den letzten Wert des ausgewählten Feed. Das Resultat wird zur weiteren Verarbeitung an den nächsten Prozess in der Verarbeitungsliste weitergegeben. Dividiert den aktuellen Wert mit dem letzten Wert des gewählten Inputs. Das Resultat wird zur weiteren Verarbeitung an den nächsten Prozess in der Verarbeitungsliste weitergegeben. FEHLER Bearbeiten Prozess Bearbeiten Engine Eingabe MQTT Topic z.B. home/power/kitchen GOTO Wärmefluss Histogramm Wenn !=, überspinge nächste Aktion Wenn !NULL, überspinge nächste Aktion Wenn !ZERO, überspinge nächste Aktion Wenn <, überspinge nächste Aktion Wenn <=, überspinge nächste Aktion Wenn =, überspinge nächste Aktion Wenn >, überspinge nächste Aktion Wenn >=, überspinge nächste Aktion Wenn NULL, überspinge nächste Aktion Wenn ZERO, überspinge nächste Aktion Wenn Wert des letzten Schritts NICHT NULL, wird der nächste Schritt übersprungen. Wenn Wert des letzten Schritts NICHT 0-ZERO, wird der nächste Schritt übersprungen. Wenn Wert des letzten Schritts != Eingabewert, wird der nächste Schritt übersprungen. Wenn Wert des letzten Schritts NULL, wird der nächste Schritt übersprungen. Wenn Wert des letzten Schritts 0-ZERO, wird der nächste Schritt übersprungen. Wenn Wert des letzten Schritts = Eingabewert, wird der nächste Schritt übersprungen. Wenn Wert des letzten Schritts >= Eingabewert, wird der nächste Schritt übersprungen. Wenn Wert des letzten Schritts <= Eingabewert, wird der nächste Schritt übersprungen. Wenn Wert des letzten Schritts < Eingabewert, wird der nächste Schritt übersprungen. Wenn man nachfolgende Aktionen ohne Anmeldung aufrufen will, muss der Apikey zur URL hinzugefügt werden: Input zum Zeitpunkt Prozessaktionen auflisten In Feed speichern SQL Memory-Tabelle (Datenverlust bei Neustart) SQL-Tabelle TimeSeries Max. Tageswert Maximaler Tageswert. Ändert am gewählten tägl. Feed das Maximum. Min. Tageswert Minimaler Tageswert. Ändert am gewählten tägl. Feed das Minimum. Nach Unten Nach Oben Multipliziert den aktuellen Wert mit dem letzten Wert des ausgewählten Feed. Das Resultat wird zur weiteren Verarbeitung an den nächsten Prozess in der Verarbeitungsliste weitergegeben. Multipliziert aktuellen Wert mit dem letzten Wert des gewählten Inputs. Das Resultat wird zur weiteren Verarbeitung an den nächsten Prozess in der Verarbeitungsliste weitergegeben. Negative Werte werden auf 0 gesetzt. Das Resultat wird zur weiteren Verarbeitung an den nächsten Prozess in der Verarbeitungsliste weitergegeben. Nicht geändert Offset um gegebenen Wert. Dies kann zur Kalibrierung von eingehenden Werten genutzt werden. Reihenfolge Addiert Feed mit dem Input-Wert. Gibt die Differenz zwischen aktuellem Wert und letzten Wert zurück. PHPFINA Fixes Intervall ohne Durchschnitt PHPFIWA Fixes Intervall mit Durchschnitt PHPTimeSeries Variables Intervall ohne Durchschnitt Phasenverschiebung Positive Werte werden auf 0 gesetzt. Das Resultat wird zur weiteren Verarbeitung an den nächsten Prozess in der Verarbeitungsliste weitergegeben. Leistung gewonnen zu kW/h pro Tag Leistung zu kW/h Leistung zu kW/h Tag Verarbeitung Verarbeitung API Prozess Aktionen Prozesse werden nacheinander ausgeführt. Das Resultat wird zur weiteren Verarbeitung an den nächsten Prozess in der Verarbeitungsliste weitergegeben. Veröffentlichen an MQTT RRD TimeSeries Änderungsrate Lesen & Schreiben: Nur Lesen: Echtzeit Reset auf NULL Reset auf Original Zurücksetzen auf Null Gespeichert Skaliert aktuellen Wert mit übergebenen Wert. Dies kann zur Kalibrierung von eingehenden Werten genutzt werden. Auswahl Intervall Vorzeichen zu Vorzeichenlos Quell Feed Subtrahiert vom aktuellen Wert den letzten Wert des ausgewählten Feed. Das Resultat wird zur weiteren Verarbeitung an den nächsten Prozess in der Verarbeitungsliste weitergegeben. Subtrahiert den aktuellen Wert vom letzten Wert des gewählten Inputs. Das Resultat wird zur weiteren Verarbeitung an den nächsten Prozess in der Verarbeitungsliste weitergegeben. Subtrahiert den aktuellen Wert vom letzten Wert des ausgewählten Input. Das Resultat wird zur weiteren Verarbeitung an den nächsten Prozess in der Verarbeitungsliste weitergegeben. Text Original Wert wird als Resultat zur weiteren Verarbeitung weitergegeben an den nächsten Prozess in der Verarbeitungsliste. Der Wert 0 wird an den nächsten Prozess in der Verarbeitungsliste weitergegeben zur weiteren Verarbeitung. Diese Seite Um die json api zu nutzen benötigt die Request-URL den Inhalt <b>.json</b> Gesamtimpulse zu Impulszuwachs Text ... Wert ... NICHT UNTERSTÜTZT Ändert oder Erstellt Tages-Wert beim festgelegten Feed (Zeit ist vorgegeben durch JSON time-Parameter der API) Upsert Feed tägl. POST Parameter benutzen: "apikey=APIKEY" Wert Wattstunden Akkumulator Watt Schritte zu kW/h pro Tag Es ist kein Prozess definiert Addiert Wert zu Quell Feed Berechnet Reziproken vom Quell-Feed T Dividiert Wert durch Quell Feed h kW/h zu Leistung kW/h zu kW/h pro Tag kW/h zu kW/h pro Tag (ALT) m Multipliziert den Wert mit Quell-Feed. Prozessliste s Subtrahiert den Wert vom Quell-Feed. x x Input 