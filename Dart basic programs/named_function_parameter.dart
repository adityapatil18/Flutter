// positional args
void sayhello(String fname, String lname) {
  print('hello $fname,$lname');
}

//all named args
void sayhello1({String? fname, String? lname}) {
  print("hello $fname,$lname");
}

//1 postional and one named
void sayhello2(String fname, {String? lname}) {
  print('hello $fname,$lname');
}

void main() {
  sayhello('abc', 'xyz');
  sayhello1(lname: 'xyz', fname: 'abc');
  sayhello1(lname: 'xyz');
  sayhello2('abc', lname: 'xyz');
}
