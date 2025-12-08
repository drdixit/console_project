// Have you every been a position in which you wanted to add
// one more functionality to an already created dart class in order to
// integrate the code better but you try to extend that dart class
// and the compiler said no no no you can't extend this class
// this class can not be extended

// say for example you wanted to extend the integer class in order to implement
// a getter method called luckyNumber
// you can't really do it since int class can not be extended

// and since we are here if you want to prevent a class from being extended
// you can create a private constructor inside of it
// class A{
//   A._();
// }
// class B extends A{}
// you can still extend it in this file just like you can access any other private fields
// but outside of this file you won't be able to extend class A

// and this is also happening with the int class so what can you do in this situation?
// we want to have syntax like int.luckyNumber and that will return my lucky number 12
// well in this case we should use extension methods
// class IntegerExtension extends int {
//   int get luckyNumber => 12;
// }

// extension methods are just a simple way to add functionality to existing libraries and classes
// in our case all we have to do is to create something like this

// extension plus the name of it doesn't really matter we will call it IntegerExtension followed by the on keyword
// plus the class that we want to extend in our case the int class
// inside the curly braces we can create a getter called luckyInteger returning a lucky number 12
extension IntegerExtension on int{
  int get luckyInteger => 12;
// for example we can create a function inside the extension
// that will take the current integer object we will call the function with and add 15 to it then return the final value
  int add15() => this + 15;
}

// now the coolest thing every when every we have an object intenciated from the int class
// which is any number we can call the luckyInteger getter and retrive the value just like this
void main(){
  1.luckyInteger;
  print('1.luckyInteger: ${1.luckyInteger}');

  10.add15();
  print('10.add15(): ${10.add15()}');
}

// BASICALLY you can create extension methods on any classes and code additional functionalities just as you saw
// how cool and amazing is that
