/*Aufgabenstellung:
Schreibt eine Funktion, die eine Römische Zahl in eine Arabische Zahl konvertiert
- Diese Funktion sollte Int als Argument bekommen und ein String oder NULL zurückliefern
- Die Funktion sollte auch mit ungültigen Eingaben funktionieren(dann halt NULL)
- Sie muss nicht effizent sein . Sollte nur irgendwie Funktionieren.


 */
String roemischeZahlen(int ausgangszahl) {
  var result = '';
  var rest = ausgangszahl;
  print(rest);
  while (rest > 0) {
    if (rest >= 1000) {
      result += 'M';
      rest -= 1000;
    } else if (rest >= 900) {
      result += 'CM';
      rest -= 900;
    } else if (rest >= 500) {
      result += 'D';
      rest -= 500;
    } else if (rest >= 400) {
      result += 'CD';
      rest -= 400;
    } else if (rest >= 100) {
      result += 'C';
      rest -= 100;
    } else if (rest >= 90) {
      result += 'XC';
      rest -= 90;
    } else if (rest >= 50) {
      result += 'L';
      rest -= 50;
    } else if (rest >= 40) {
      result += 'XL';
      rest -= 40;
    } else if (rest >= 10) {
      result += 'X';
      rest -= 10;
    } else if (rest >= 9) {
      result += 'IX';
      rest -= 9;
    } else if (rest >= 5) {
      result += 'V';
      rest -= 5;
    } else if (rest >= 4) {
      result += 'IV';
      rest -= 5;
    } else if (rest > 0) {
      rest -= 1;
      result += 'I';
    }
  }
  // print(result);
  return result;
}
  //   if (input > 1000) {
  //     for(var i =input; i>1000;i-1000 ){
  //     result += 'M';
  //     }
  //   if(input>500){
  //   for(var i=input; i>500;i-500){
  //     result += 'D';}
  //   }
  //   if(input>100){
  //   for(var i=input; i>100;i-100){
  //     result+= 'C';
  // }
  // }
  // if(input>50){
  // for(i=input;i>50;i-50){
  //   result=+L;
  // }
  // }
  // if(input>10){
  //   for(var i=input; i>10;i-10){
  //     result=+X;
  //   }
  // }
  // if(input>5){
  //   for(var i=input;i>5;i-5){
  //     result=+V;
  //   }
  // }
  // if(input<5){
  //   for(var i=input;i>0;i--){
  //     result=+I;
  //   }
  // }


  //   return result;
  // }
