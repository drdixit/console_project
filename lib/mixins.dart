// What excetly are Mixins?
// class with no constructor
// A class of which behavior can be shared with other classes
// You can declare Mixins in three ways:
// option 1: Create simple class without constructor
// note that a class with no declared constructors comes with a default no argument constructor
// and can be actually instentiated
// class A{
// }
// void main(){
//   A a = A();
// }
// howerver, you shouldn't instantiated
// since that's an anti-pattern of a mixin

// also a second note to this approch is that functions can't be abstract in a simple class
// class A{
//   void method();
// }
// void main(){
// }
// thus they need to have at list an empty function body
// class A{
//   void method(){}
// }
// void main(){
// }

// option 2: or you could create a abstract class
// abstract class A{
//   void method();
//   void method2(){}
// }
// void main(){
//   // A a = A(); // error: Abstract classes can't be instantiated.
//   // that obviously can't be instantiated and can contain abstract methods or normal methods
//   // this can also be used as a mixin
// }

// or option 3: you could use the mixin keyword
// the esiest way to declare a mixin if you don't want to use it as a regular class
// is by simply declaring it with the mixin keyword
// mixin A{
//   void method();
// }
// void main(){
// }

// mixin A{
//   void method();
//   void method2(){}
// }
// void main(){
//   // A a = A(); // error: Mixins can't be instantiated.
//   // note that a mixin is like an abstract class they can't be instantiated
//   // and they can contain abstract and simple methods at the same time
// }


// // the only difference compared to an abstract class is that a mixin can't be extended
// // a mixin can't be used as a regular class
// the easiest way to declare a mixin if you don't want to use it as a regular class
// they can contain abstract and simple methods at the same time
// mixin A{
//   void method();
//   void method2(){}
// }
// // class B extends A{} //error: mixin can't be extended
// // since well their purpose is to be mixed in with other classes by using the with keyword
// void main(){
//   // A a = A(); // error: Mixins can't be instantiated.
// }


// so basically the entire purpose of a mixin is to contain specific methods that can be used
// or reimplemented by other classes
// mixin A{
//   void method1(){}
//   void method2(){}
//   void method3(){}
// }
// class B with A{
// @override
//   void method1() {
//     // TODO: implement method3
//     super.method1();
//   }
// }
// void main(){
//   B b = B();
//   b.method1();
// }

// In order to understand properly lets come back to our musician example

class Performer{
  void perform() => print("Performing");
}

mixin Guitarist{
  void playGuitar() => print("Playing the Guitar");
  void perform() => playGuitar();
}

mixin Drummer{
  void playDrums() => print("Playing the Drums");
  void perform() => playDrums();
}

// for now we can dich the performer class but we will keep it for demonstration purposes
// class Musician extends Performer implements Guitarist, Drummer{
// but compare to implementing an interface here you dont have to override all methods and fields
// that you declare inside the mixin
class Musician extends Performer with Drummer, Guitarist{
}

void main(){
  Musician musician = Musician();
  // musician.playGuitar();
  // musician.playDrums();
  // until now this mixin concept seems like just multiple inheritance with some minor limitations right?
  // but the same important question arises which of this perform method will the musician call?
  // when writting musician.perform();
  // how does this mixin effects the class hierarchy
  musician.perform();

}
