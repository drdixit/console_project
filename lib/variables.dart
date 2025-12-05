void main(){
  // Lists
  // Ordered Group of Objects
  // it's Iterable Objects
  // uses zero based Indexing
  print('--- Lists ---');
  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  fruits.forEach(print);
  print('First index => 0 ${fruits[0]}');
  print('Last index => list.length - 1 ${fruits[fruits.length-1]}');
  // being and ordered group of objects this shows us that a list is a generic type
  // meaning it can contain objects of multiple types
  List<bool> boolList = [true, false, true];
  boolList.forEach(print);
  List<A> aList = [A(), A(), A()];
  aList.forEach(print);
}

class A{}

