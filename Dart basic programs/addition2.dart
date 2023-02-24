import 'dart:io';

void main() {
  print("enter two numbers");
  int n1 = int.parse(stdin.readLineSync()!);
  int n2 = int.parse(stdin.readLineSync()!);
  int n3 = n1 + n2;
  print("addition is $n3");
}
