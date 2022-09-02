/*
Schreibt eine Funktion, die eine roemische Zahl in eine arabische Zahl konvertiert.
- diese Funktion sollte einen String bekommen und ein INT oder NULL zurückgeben. 
- die Funktion sollte auch mit ungültigen Eingaben funktioniernen(dann halt NULL)
- sie muss nicht effizient sein. Sollte nur irgednwie funktionieren.

 */
// roemische Zahlen haben einen wert der von Links nach Rechts addiert werden kann oder wenn sie größer
//wird, wird diese abgezogen.
//
//
// den String in ein Array aufteilen mit ähnlich wie bei "decompress"?
// wenn eine Kleinere Zahl vor der größeren Zahl kommt muss diese zusammen abgelegt werden.
//bei einer doppelten ablage muss die vordere Zahl von der Hinteren abgezogen werden wie 10 - 50(XL);

int? arabischeZahl(String ausgangsString) {
  ausgangsString = ausgangsString.toUpperCase();
  var result = 0;
  List roemischNumber = <String>[];
  final regel = RegExp(r"[IVXLCDM]");
  final test = regel.allMatches(ausgangsString);
  if (test.length < ausgangsString.length) {
    return null;
  }
  print(ausgangsString);
// kann man durch funktion ersetzen.
// final sonderfall(ausgangsString);
  // Function sonderFall(ausgangsString);
  if (ausgangsString.contains("CM")) {
    result += 900;
    ausgangsString = ausgangsString.replaceFirst("CM", "");
  }
  if (ausgangsString.contains("CD")) {
    ausgangsString = ausgangsString.replaceFirst("CD", "");
    result += 400;
  }
  if (ausgangsString.contains("XC")) {
    ausgangsString = ausgangsString.replaceFirst("XC", "");
    result += 90;
  }
  if (ausgangsString.contains("XL")) {
    ausgangsString = ausgangsString.replaceFirst("XL", "");
    result += 40;
  }
  if (ausgangsString.contains("IX")) {
    ausgangsString = ausgangsString.replaceFirst("IX", "");
    result += 9;
  }
  if (ausgangsString.contains("IV")) {
    ausgangsString = ausgangsString.replaceFirst("IV", "");
    result += 4;
  }

  for (var i = 0; i < ausgangsString.length; i++) {
    roemischNumber.add(ausgangsString.substring(i, i + 1));
  }

  while (roemischNumber[0] == 'M') {
    result += 1000;
    roemischNumber.removeAt(0);
    if (roemischNumber.isEmpty) {
      return result;
    }
  }

  while (roemischNumber[0] == 'D') {
    result += 500;
    roemischNumber.removeAt(0);
    if (roemischNumber.isEmpty) {
      return result;
    }
  }

  while (roemischNumber[0] == 'C') {
    result += 100;
    roemischNumber.removeAt(0);
    if (roemischNumber.isEmpty) {
      return result;
    }
  }

  while (roemischNumber[0] == 'L') {
    result += 50;
    roemischNumber.removeAt(0);
    if (roemischNumber.isEmpty) {
      return result;
    }
  }

  while (roemischNumber[0] == 'X') {
    result += 10;
    roemischNumber.removeAt(0);
    if (roemischNumber.isEmpty) {
      return result;
    }
  }

  while (roemischNumber[0] == 'V') {
    result += 5;
    roemischNumber.removeAt(0);
    if (roemischNumber.isEmpty) {
      return result;
    }
  }
  while (roemischNumber[0] == 'I') {
    roemischNumber.removeAt(0);
    if (roemischNumber.isEmpty) {
      return result;
    }
  }

  return result;
}

// String sonderFall(ausgangsString) {
//   var result=0;
//   if (ausgangsString.contains("CM")) {
//     ausgangsString.replaceFirst("CM", "");
//     result += 900;
//   }
//   if (ausgangsString.contains("CD")) {
//     ausgangsString.replaceFirst("CD", "");
//     result += 400;
//   }
//   if (ausgangsString.contains("XC")) {
//     ausgangsString.replaceFirst("XC", "");
//     result += 90;
//   }
//   if (ausgangsString.contains("XL")) {
//     ausgangsString.replaceFirst("XL", "");
//     result += 40;
//   }
//   if (ausgangsString.contains("IX")) {
//     ausgangsString.replaceFirst("IX", "");
//     result += 9;
//   }
//   if (ausgangsString.contains("IV")) {
//     ausgangsString.replaceFirst("IV", "");
//     result += 4;
//   }
// }
