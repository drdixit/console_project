class A {
  void methodA() { }
}
class B {
  void methodB() { }
}
class C {
  void methodC() { }
}

// if we have 3 classes conating methods and 
// if we have 4th class D implementing A, B, C interfaces
// we still need to override all the methods inside A, B, C
// what we want to observe here is that none of these classes or methods inside of them are abstract
// yet we can implement them without any issues how is that possible?
// well as i inorder to explicitely declare an interface in dart we need to use abstract classes
// EXPLICIT INTERFACE = ABSTRACT CLASS
// but what about IMPLICIT INTERFACE?
// in dart every class defines an implicit interface
// each class by default defines it's own interface formed out of it's public fields and methods
// in other words every class inside dart acts as an interface
// EXPLICIT INTERFACE = ABSTRACT CLASS
// IMPLICIT INTERFACE = EVERY CLASS
// so you can implement any class you create inside dart
// note that class can both extend one class and implement multiple other ones at the same time
// class D extends SomeClass implements A, B, C { ... }

class D implements A, B, C {
  @override
  void methodA() {
    // TODO: implement methodA
  }

  @override
  void methodB() {
    // TODO: implement methodB
  }

  @override
  void methodC() {
    // TODO: implement methodC
  }
}

// Little bit out of topic but still related
// Remember abstract method can be declared only inside abstract classes right?
// well this is not 100% true
// you can also declare a method header without a body inside a normal class
// thus making it an abstract method inside a normal class by using the external keyword
// class E {
//   external void methodE(); // abstract method inside a normal class
// }
// this keyword denotes that the implementation of this method is provided somewhere else
// by using implements just as we saw from interfaces above or by using extends
// both ways are overriding the memthods from base class in a derived class
