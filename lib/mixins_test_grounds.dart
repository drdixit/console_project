mixin Flyable {
  void fly() => print("Flying");
}

mixin Swimmable {
  void swim() => print("Swimming");
}

class Duck with Flyable, Swimmable {}

class Fish with Swimmable {}


mixin A {
  void method();
  void method2() {
    print("Method2 from mixin A");
  }
}

class B with A {
  @override
  void method() {
    print("method() override from class A");
  }
}

void main(){
  Duck daffy = Duck();
  daffy.fly();  // Output: Flying
  daffy.swim(); // Output: Swimming

  Fish nemo = Fish();
  nemo.swim();  // Output: Swimming

  B bInstance = B();
  bInstance.method();
  bInstance.method2();
}
