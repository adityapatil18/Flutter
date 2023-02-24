void main() {
  var mylist = [10, 20, 30, 'xyz'];
  print(mylist.length);
  print(mylist.reversed);
  print(mylist.first);
  print(mylist.last);
  print(mylist.isEmpty);
  print(mylist.isNotEmpty);

  mylist.add(40);
  print(mylist);
  mylist.addAll([1, 2, 3]);
  print(mylist);

  mylist.insert(1, 50);
  print(mylist);

  print(mylist.elementAt(2));

  print(mylist.indexOf(10));

  print(mylist.lastIndexOf(2));

  print(mylist.contains(10));
  print(mylist.contains(100));

  mylist.remove('xyz');
  print(mylist);

  var s1 = mylist.join('#');
  print(s1);

  var list = mylist.sublist(2, 5);
  print(list);
}
