int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

String showFunc(int a, int b) {
  var addReturn = add(a, b);
  var subReturn = sub(a, b);
  return 'Add $a + $b = $addReturn \nSub $a - $b = $subReturn';
}
