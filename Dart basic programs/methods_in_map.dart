void main() {
  var m1 = {1: 'A', 123: 'abc', 2: 10};
  print(m1);

  m1[3] = 'C';
  m1[4] = 40;
  print(m1);

  var m2 = {
    5: 'xyz',
    6: '67',
  };
  m1.addAll(m2);
  print(m1);

  print(m1.containsKey((2)));

  m1.remove(2);
  print(m1);

  var mkeys = m1.keys;
  print(mkeys);

  var mvalues = m1.values;
  print(mvalues);
}
