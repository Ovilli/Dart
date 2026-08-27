import 'dart:io';
import 'dart:math';

var stadtname = "Dresden";
var einwohnerzahl = 140467;
var flaeche = 326342.4324;
var liebfilm = ["Top1", "Top2", "Top3"];
var map = {"Bob": 127381273897};
var listeofstaete = ["Stadt1","Stadt2","Stadt3","Stadt4","Stadt5"];
var sum = 0;
double week= 0;
var einkaufslite = [];
var aufgabe = 1;

void aufgabe1() {
  print("Hallo schön dich kzl!");
}

void aufgabe2() {
  print("Bevoelkerung ist $einwohnerzahl");
  print("Flaeche ist $flaeche");
  print("Bevoelkerungsdichte ist ${einwohnerzahl / flaeche}");
}

void aufgabe3() {
  liebfilm.add("Top4");
  print(liebfilm);

  map["Bob2"] = 109019820390;
  print(map);
}

void aufgabe4() {
  print("Enter a Nummber:");

  int? number = int.parse(stdin.readLineSync()!);

  if (number == null) {
    print("in?");
    return;
  }

  if (number > 0) {
    print("Positiv");
  } else if (number < 0) {
    print("Negativ");
  } else {
    print("0");
  }
}
void aufgabe5(){
	for(int i = 0;i<10;i++){
		//print("$i * $i");
		print(i*i);
	}
  print("---------------");
	for(var stadt in listeofstaete){
		print(stadt);
	}
}

var sum2 = 0;
void aufgabe6(){
  for(int i = 0;i<=20;i++){
    if(sum2 <=50){
      sum2 = sum2 + i;
      print(sum2);
    }
  }
  print("---------------");
  for(int l = 0;l<=20;l++){
    if(l%3 != 0){
      print(l);
    }
  }
}


bool isPrime(int n){
  if(n<=0) return false;
  if(n == 2) return true;
  if(n % 2 == 0)return true;

  //?
  for (int i = 3; i * i <= n; i += 2) {
    if (n % i == 0) return false;
  }

  return true;
}

double calcArea(int r){
  print(pi);
  print(pi*(r*r));
  return pi*(r*r);
}

void aufgabe7(){
  print(isPrime(11));
  print(isPrime(25));
  print(isPrime(37));
  print(calcArea(4));
  
}


aufgabe8(){
  print("Name ? ");
  String? name  = stdin.readLineSync();
  print("Nachname ? ");
  String? name2  = stdin.readLineSync();
  print("Mein name ist $name $name2 und ich lerne dart");

  print("---------------");

  print("Geburstags TAG !!");

  int? day = int.parse(stdin.readLineSync()!);

  print("Geburstags MONAT !!");
  int? month = int.parse(stdin.readLineSync()!);

  week = ((month-1)*4)+(day/7);

  print("---------------");
  print("$week");
  





  //sum = (((((day * 2)+5)*50)+month)-250)

  //print("Du hast $sum")

}
void addList(){
  print("What item to add?");
  String? item = stdin.readLineSync();
  einkaufslite.add(item);
  print("Added $item");
  return;
}

int delList() {
  print("What item to del?");
  showList();

  String? item = stdin.readLineSync();

  print("Do you want to remove $item ? YES (1) NO (2)");
  int yesno = int.parse(stdin.readLineSync()!);

  if (yesno == 1) {
    if (einkaufslite.remove(item)) {
      print("$item removed.");
      return 1;
    } else {
      print("$item ?");
      return 0;
    }
  }

  print("nahh.");
  return 0;
}

void showList() {
  print("");
  print("===== SHOPPING LIST =====");

  if (einkaufslite.isEmpty) {
    print("emty.");
  } else {
    for (int i = 0; i < einkaufslite.length; i++) {
      print("${i + 1}. ${einkaufslite[i]}");
    }
  }
}

void cleanUp(){
  print("#################################################");
  String? item = stdin.readLineSync();
  stdout.write('\x1B[2J\x1B[0;0H');
}

void topbar() {
  print("#################################################");
  print("                 AUFGABE : $aufgabe");
  print("#################################################");
}

void aufgabe9() {
  while (true) {
    print("Choose (1 = ADD ; 2 = DEL ; 3 = SHOW 4 = EXIT)");

    int? choose = int.tryParse(stdin.readLineSync() ?? "");

    if (choose == null) {
      print("?");
      continue;
    }

    switch (choose) {
      case 1:
        addList();
        break;

      case 2:
        delList();
        break;

      case 3:
        showList();
        break;

      case 4:
        print("bye...");
        return;

      default:
        print("Ewwwow 404");
    }
  }
}


void main() {
  topbar();
  aufgabe1();
  aufgabe++;
  cleanUp();
  topbar();
  aufgabe2();
  aufgabe++;
  cleanUp();
  topbar();
  aufgabe3();
  aufgabe++;
  cleanUp();
  topbar();
  aufgabe4();
  aufgabe++;
  cleanUp();
  topbar();
  aufgabe5();
  aufgabe++;
  cleanUp();
  topbar();
  aufgabe6();
  aufgabe++;
  cleanUp();
  topbar();
  aufgabe7();
  aufgabe++;
  cleanUp();
  topbar();
  aufgabe8();
  aufgabe++;
  cleanUp();
  topbar();
  aufgabe9();
  aufgabe++;
  cleanUp();
}