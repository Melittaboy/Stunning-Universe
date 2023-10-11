class Aufgabe {
  String titel;
  String beschreibung;

  Aufgabe(this.titel, this.beschreibung);

  @override
  String toString() {
    return '$titel, $beschreibung';
  }
}

class AufgabenManager {
  List<Aufgabe> aufgabenListe = [];

  void hinzufuegenAufgabe(String titel, String beschreibung) {
    Aufgabe neueAufgabe = Aufgabe(titel, beschreibung);
    aufgabenListe.add(neueAufgabe);
  }

  void loeschenAufgabe(String titel) {
    aufgabenListe.removeWhere((aufgabe) => aufgabe.titel == titel);
  }

  void bearbeitenAufgabe(String alterTitel, String neuerTitel, String neueBeschreibung) {
    for (var aufgabe in aufgabenListe) {
      if (aufgabe.titel == alterTitel) {
        aufgabe.titel = neuerTitel;
        aufgabe.beschreibung = neueBeschreibung;
      }
    }
  }

  void anzeigenAufgaben() {
    for (var aufgabe in aufgabenListe) {
      print(aufgabe);
    }
  }
}

void main() {
  AufgabenManager aufgabenManager = AufgabenManager();
  
  aufgabenManager.hinzufuegenAufgabe('Einkaufen', 'Milch, Brot, Marmelade');

  aufgabenManager.bearbeitenAufgabe('Einkaufen', 'Großes Einkaufen', 'Milch, Brot, Marmelade, Käse, Wurst');

  aufgabenManager.loeschenAufgabe('Einkaufen');

  aufgabenManager.anzeigenAufgaben();
}
