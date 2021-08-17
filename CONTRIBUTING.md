- [News](#news)
- [Guidelines](#guidelines)
  - [Allgemeine Informationen](#allgemeine-informationen)
  - [Schema der Übersetzung](#schema-der-übersetzung)
- [Bearbeiten einer Karte](#bearbeiten-einer-karte)
    - [Wenn du den Editor zum ersten mal öffnest, musst du zunächst "Fork Repository" auswählen. Dadurch wird auf deinem Account eine Kopie hinterlegt, auf der deine Änderungen zwischengespeichert werden. Das passiert danach alles im Hintergrund, mach dir also keine Gedanken.](#wenn-du-den-editor-zum-ersten-mal-öffnest-musst-du-zunächst-fork-repository-auswählen-dadurch-wird-auf-deinem-account-eine-kopie-hinterlegt-auf-der-deine-änderungen-zwischengespeichert-werden-das-passiert-danach-alles-im-hintergrund-mach-dir-also-keine-gedanken)
  - [Editor](#editor)
    - [HTML-Quelltext aus Anki-Desktop](#html-quelltext-aus-anki-desktop)
    - [HTML-Quelltext aus Anki-iOS](#html-quelltext-aus-anki-ios)
  - [Tags](#tags)
- [Einreichen der Änderung](#einreichen-der-änderung)

# News
Die .yaml-Files haben jetzt jeweils in der ersten Zeile einen Link zum englischen Original. Dann kannst du bei inhaltlichen Fehlern oder Unklarheiten auch direkt mit der ursprünglichen Version vergleichen.

<p align="center"><kbd><img width="800" alt="Screenshot 2021-08-11 at 10 11 28" src="https://user-images.githubusercontent.com/85392967/128994113-f0ab5304-01b5-44b8-a41d-31ad5fa8c2c6.png"></kbd></p>

Weil die englischsprachige Repo jetzt auch eingerichtet ist, wäre es theoretisch möglich fließend zwischen dem englischen und dem deutschen deck zu wechseln, und den Fortschritt beizubehalten. Wie sinnvoll das ist, ist ne andere Frage.

# Guidelines
## Allgemeine Informationen
**Updates zum Deck umfassen zur Zeit:**
* Übersetzung
* Rechtschreib-/Grammatikfehler
* Inhaltliche Fehler und Ergänzungen
* Wortwahl (bei Unklarheiten)
* Hinzufügen neuer, einheitlicher Tags (die meisten deutschsprachigen Tags fehlen, der Rest ist ein ziemliches Durcheinander)

**Einschränkungen:**
* Der Inhalt des Originals soll keinesfalls verloren gehen!
* Das hinzufügen neuer Karten ist zur Zeit nicht vorgesehen.
* Wenn du deinen Karten Medien (Bilder, Audio, etc.) hinzufügst, solltest du diese den Projektleitern zukommen lassen. Andernfalls sind diese in zukünftigen Deck-Releases _nicht enthalten_.
* Was Verwaltung von Medien angeht, werden wir uns nochmal was eleganteres überlegen.

## Schema der Übersetzung
* Die erste Zeile enthält den _Alltagsnamen_ (bspw. "Untere Hohlvene") und die gängige _Abkürzung_ in Klammern (bspw. IVC) gefolgt von einem Strichpunkt ";".
* Die zweite Zeile enthält den abgekürzten _Fachbegriff_ nach Terminologia Anatomica (bspw. "V. cava inferior").
* Wenn es keinen Alltagsnamen gibt, oder dieser mit dem Fachbegriff übereinstimmt, nur den Fachbegriff in einer Zeile.
* Sollte es mehrere wichtige Alltagsnamen oder Abkürzungen geben, dann kannst du diese durch einen unterstrichenen Querstrich (HTML lautet "`<u> / </u>`") getrennt in der selben Zeile angeben.
* Optionale, relevante Strukturen kommen nach einer Leerzeile _kursiv_, eine pro Zeile, unter den Fachbegriff.
* Gib bei deiner Übersetzung als Quellenangabe am besten [Amboss](https://www.amboss.com/de), ansonsten entweder [Wiktionary](https://en.wiktionary.org/wiki/Wiktionary:Main_Page), [Wikipedia](https://www.wikipedia.org) oder [Terminologia-Anatomica](http://terminologia-anatomica.org/en/) an.
* Quellenangaben aus Büchern sollten leicht nachvollziehbar sein. ~~Prometheus~~ -> Prometheus (X. Auflage, Seite YZ)

Before:
```
  1a: 'Inferior vena cava'
  ```
After:
```
  1a: 'Untere Hohlvene (IVC);<br>V. cava inferior'
  ```
..hierbei ist `<br>` ein HTML-Tag für einen Zeilenumbruch. Dieser ist notwendig, um den Inhalt der Karte richtig darzustellen.

_Klassen_ (Nervus, Nodus, Arteria, etc.) sollten bitte nach diesem Schema abgekürzt werden.

|      Begriff      |  Abkürzung (sg.)  |  Abkürzung (pl.)  |
|      :-----:      |      :-----:      |      :-----:      |
|      Arteria      |      A.           |      Aa.          |
|      Ligamentum   |      Lig.         |      Ligg.        |
|      Nervus       |      N.           |      Nn.          |
|      Nodus        |      Nd.          |      Ndd.         |
|      ...          |      ...          |      ...          |

# Bearbeiten einer Karte
### Wenn du den Editor zum ersten mal öffnest, musst du zunächst "Fork Repository" auswählen. Dadurch wird auf deinem Account eine Kopie hinterlegt, auf der deine Änderungen zwischengespeichert werden. Das passiert danach alles im Hintergrund, mach dir also keine Gedanken.
* Alle Karten des Dufte-Ranatomie-Decks, die am oberen rechten Bildrand einen "Errata"-Button haben, sind Teil dieses Projekts.
* Ein Click auf diesen Button führt dich, wenn du in Github eingeloggt bist, zu einem Editor. Das ganze sollte _Plattformunabhängig_ und _Unabhängig von deiner Anki-Version_ funktionieren.
* Wenn du bei Click auf den Errata-Button einen 404-Fehler bekommst, bearbeitest du höchstwahrscheinlich eine selbst gemachte, neue Karte, die nicht Teil des Decks ist.
* Du kannst auch manuell nach einer Karte suchen, indem du im Suchfenster die Note ID der Karte einfügst. Der Inhalt jeder Karte ist in einer .yaml-Textdatei gespeichert, die _nach der Note ID benannt_ ist. Diese findest du über den Button "_Note ID_" in der Kopfzeile

## Editor
<p align="center"><kbd><img width="800" alt="Screenshot 2021-06-29 at 15 18 47" src="https://user-images.githubusercontent.com/85392967/123748307-02c23f00-d8ef-11eb-9137-f7c8ab85eafd.png"></kbd></p>

Im Editor siehst du Inhalte der Felder im Format:
```
  Feldname1: 'Inhalt des <b>ersten Flelds</b> mit HTML-Tags'
  Feldname2: 'Inhalt des zweiten Felds'
  ```
... wobei die Elemente in eckigen Klammern Textformattinerung im HTML-Format darstellen. (In diesem Fall, `<b>fett</b>` = **fett**).

Damit Formattierung (**fett**, _kursiv_, Zeilenumbrüche, etc.) nicht verloren gehen, musst du den Text als HTML aus dem Anki-Editor kopieren und in die Gänsefüßchen des betreffenden Feldes eintragen:
```
  Feldname1: 'Inhalt des <b>ersten Felds</b> mit HTML-Tags'
  Feldname2: 'Inhalt des zweiten Felds'
  ```
Aufgrund der aktuell horrenden Implementierung unseres Programms darf der Text allerdings _keine Gänsefüßchen_ enthalten. Weder einfach noch doppelt.
Als Alternative können die HTML-Entities ```&apos; = '```, ```&quot; = "```, ```&bdquo; = „``` und ```&ldquo; = “``` verwendet werden.

### HTML-Quelltext aus Anki-Desktop
Der Shortcut für HTML-View ist "_CMD+Shift+x_" bzw. "_CTRL+Shift+x_" aus dem Karten-Editor. Diesen öffnest du mit der Taste "_E_" beim reviewen.

Alternativ clickst du im Editor auf den Sandwichbutton:

<p align="center"><img width="800" alt="Screenshot 2021-06-29 at 15 30 17" src="https://user-images.githubusercontent.com/85392967/123748735-909e2a00-d8ef-11eb-9dad-c65a37e429a7.png"></p>

Wähle hier den Reiter "_Edit HTML_" und kopiere den Inhalt des sich öffnenden Fensters:

<p align="center"><img width="800" alt="Screenshot 2021-06-29 at 15 37 57" src="https://user-images.githubusercontent.com/85392967/123749127-0b674500-d8f0-11eb-86ab-a72571ab1704.png"></p>

### HTML-Quelltext aus Anki-iOS
Hier geht das etwas einfacher.
Du kannst im Editor durch Click auf den "</>"-Button zwischen HTML und Normalansicht wechseln.

<p align="center" float="left"><kbd>
  <img src="https://user-images.githubusercontent.com/85392967/123753766-2ab4a100-d8f5-11eb-8f63-f9670638ec59.jpeg" width="350" />
  <img src="https://user-images.githubusercontent.com/85392967/123753916-4cae2380-d8f5-11eb-8c41-1e3cb9c19f0e.jpeg" width="350" />
  </kbd></p>

## Tags
Bei Tags brauchst du dir keine Gedanken um Formattierung machen. Diese enthalten kein HTML-Gedöns.
Jede Zeile entspricht einem Tag:
```
  - 'Parent::Child::Leberkas'
  ```
Um neue Tags hinzuzufügen, könnt ihr einfach neue Zeilen nach bestehendem Schema hinzufügen.

# Einreichen der Änderung
1. Wenn du zum Ende der Seite scrollst, kannst du die Änderung einreichen. Im unteren Beispiel habe ich einen neuen Tag hinzugefügt.
Wähle die Option "_Propose Changes_".

<p align="center"><kbd><img width="800" alt="Screenshot 2021-07-27 at 23 05 09" src="https://user-images.githubusercontent.com/85392967/127227707-dd7ccd57-daf2-4fe0-9be0-e3c4c2c205f1.png"></kbd></p>

2. Du kannst die Änderungen im nächsten Fenster ("Comparing Changes") kurz überprüfen. Wenn alles passt clickst du auf "_Create Pull Request_".

3. Im nächsten Fenster ("Open Pull Request") ist ein _Formular_, in dem du deinen Vorschlag kategorisieren, Quellen hinzufügen oder eine kurze Erklärung einfügen kannst. Um deinen Vorschlag einzureichen, clickst du auf "_Create Pull Request_".

<p align="center"><kbd><img width="800" alt="Screenshot 2021-06-29 at 16 03 58" src="https://user-images.githubusercontent.com/85392967/123752773-19b76000-d8f4-11eb-8566-37f7eda42469.png"></kbd></p>

4. Über den Reiter "_Pull Requests_" kannst du jeder Zeit den Stand aller Submissions einsehen.

<small><i><a href='http://ecotrust-canada.github.io/markdown-toc/'>Table of contents generated with markdown-toc</a></i></small>
