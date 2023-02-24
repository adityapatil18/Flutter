void sayhello() {
  print("hello world");
  print("this is my first function");
}

int add(int x, int y) {
  int z;
  z = x + y;
  return z;
}

double area(double r) {
  double a;
  a = 3.14 * r * r;
  return a;
}

void main() {
  sayhello();
  int a;
  a = add(100, 200);
  print("addition is $a");
  double b;
  b = area(1.2);
  print('area is $b');
}
