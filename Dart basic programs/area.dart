import 'dart:io';

void main() {
  String? n;
  double a, r;
  print("enter radius");
  n = stdin.readLineSync();
  r = double.parse(n!);
  a = 3.14 * r * r;
  print("area is $a");
}
