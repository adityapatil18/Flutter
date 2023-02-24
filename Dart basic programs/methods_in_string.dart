void main() {
  var s1 = "hello world";
  print(s1.length);
  print(s1.isEmpty);
  print(s1.isNotEmpty);
  //codeUnitAt
  print(s1.codeUnitAt(0));
  print(s1.codeUnits);
  print(s1.startsWith('he'));
  print(s1.startsWith('lo'));
  print(s1.endsWith('ld'));
  print(s1.endsWith('wo'));

  print(s1.contains('world'));
  print(s1.contains('l'));
  print(s1.contains('World'));

  print(s1.indexOf('l'));

  print(s1.lastIndexOf('l'));

  print(s1.padLeft(50, '*'));

  print((s1.padRight(50, '*')));

  print(s1.replaceAll('l', 'L'));

  print(s1.substring(2, 7));

  var arr = s1.split('l');
  print(arr);

  var s2 = ' aditya ';
  print(s2.trim());

  print(s1.toUpperCase());
}
