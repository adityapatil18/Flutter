import 'dart:io';

void main() {
  String? n;
  int x, y, z;
  print("enter two number");
  n = stdin.readLineSync();
  x = int.parse(n!);
  n = stdin.readLineSync();
  y = int.parse(n!);
  z = x + y;

  print("addition of two number is $z");
  z = x - y;
  print("substraction of two number is $z");
  z = x * y;
  print("multiplication of two number is $z");
  z = x ~/ y;
  print("division is $z");
}
