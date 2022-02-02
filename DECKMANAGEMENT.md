# Deckmanagement
### In diesem Dokument ist festgehalten, wie man das Deck in bzw. aus GitHub im- bzw. exportiert, und wie man es aktualisiert.

Der Import- und Exportprozess basiert auf [Brainbrew](https://github.com/ohare93/brain-brew) und [CrowdAnki](https://github.com/Stvad/CrowdAnki).
Die Skripte wurden in PowerShell, Python und bash geschrieben.

## Import
Notwendig, wenn man zum ersten mal ein Deck einrichtet, oder den Note Type bearbeitet hat.
1. Deck via CrowdAnki exportieren
2. Durch Export generierten Ordner in scripts/import_deck bewegen
3. 3. Navigiere im Terminal zu scripts/import_deck
4. `sh import.sh`

## Compile CSV
Notwendig, um Änderungen der [Note ID].yaml-Dateien in [Deck].json einzubauen.
1. Über Github-Actions auf "run workflow"
2. Inhalt der exportierten data.zip in scripts/patch_deck bewegen
3. Navigiere im Terminal zu scripts/patch_deck
4. `sh patch.sh`
