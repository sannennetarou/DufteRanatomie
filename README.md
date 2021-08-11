# DufteRanatomie
Ziel des Projekts ist eine Übersetzung des Anatomie- und Kadaver-Decks [DopeRanatomy](https://www.reddit.com/r/medicalschoolanki/comments/gx128c/fully_tagged_dope_anatomy/) und des Histologie-Decks [Navicularis](https://www.reddit.com/r/medicalschoolanki/comments/beg21n/navis_histology/) ins Deutsche.

Um das ganze für die Organisatoren möglichst reibungslos zu gestalten, wird der Inhalt über diese Github-Repository verwaltet. Das erlaubt es allen, die zum Projekt beitragen wollen:
- Parallel zu arbeiten
- Eine Geschichte der Änderungen des Decks zwischenzuspeichern
- Jeder Zeit den aktuellen Stand des Decks zu überprüfen
- Regelmäßig Decks zu releasen

# Cheatsheet
1. Click auf den _**Errata-Button**_
2. (Wenn du zum ersten Mal eine Änderung einreichst, musst du zuerst "_**Fork Repository**_" auswählen.)
3. Bearbeite die Karte im _**Editor**_
4. Click ganz unten auf"_**Propose Changes**_"
5. Click im Fenster "Comparing Changes" auf "_**Create Pull Request**_"
6. Fülle im Fenster "Open Pull Request" das Formular aus und click anschließend auf "_**Create Pull Request**_"

### Eine ausführliche Guide mit Richtlinien für Korrekturen findest du [hier](https://github.com/sannennetarou/DufteRanatomie/blob/main/CONTRIBUTING.md).

# Manuelles aktualisieren des Decks
Benutzer des Addons [CrowdAnki](https://ankiweb.net/shared/info/1788670778) können jeder Zeit über "File -> CrowdAnki: Import git repository" die aktuelle Version des Decks runterladen. Der neueste Stand entspricht dem Alter der Datei `DufteRanatomie.json`.

<p align="center"><kbd><img width="800" alt="Screenshot 2021-07-28 at 20 45 10" src="https://user-images.githubusercontent.com/85392967/127378885-b47bc117-d4b2-4e7f-b0b6-58bac771ce76.png"></kbd></p>

Gebt dafür in das Fenster "**_URL_**" einfach `https://github.com/sannennetarou/DufteRanatomie` ein. Das Deck wird hierbei umbenannt, Fortschritt und Note Type bleiben beibehalten.

## Probleme bei manuellem aktualisieren des Decks
1. CrowdAnki erlaubt es nicht, [das Deck ohne Deckoptionen zu ex-/importieren](https://github.com/Stvad/CrowdAnki/issues/61). Mit jeder Aktualisierung werden Deckeinstellungen (z.B. #Neue Karten, Lernschritte) verändert.
Du musst also nach jedem Update manuell zur gewünschten Deckeinstellung wechseln.

2. CrowdAnki erzeugt bei Updates manchmal ein neues Deck oder einen neuen Note Type. Karten werden, sofern du beim Importieren nicht "Do not move existing cards" anclickst, in ein neues Deck verschoben. Das leere Deck kannst du dann löschen.

### Diese beiden Probleme gibt es bei .apkg-releases nicht

# Acknowledgements
Verwaltung des Decks basiert auf den Projekten [Brainbrew](https://github.com/ohare93/brain-brew) und [CrowdAnki](https://github.com/Stvad/CrowdAnki).
