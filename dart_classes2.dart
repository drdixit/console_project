// By default every class in Dart extends the Object class.
class Animal{
  final String name;

  Animal({required this.name}){
    print('Creating an animal with name: $name');
  }

  void whatAmI() => print('I am an animal');

  void chase(Animal a) => print('$name is chasing ${a.name}');
}

class Mouse extends Animal{
  Mouse(String name) : super(name: 'Jerry');
}
class Elephant extends Animal{
  Elephant(String name) : super(name: name);
}
class Cat extends Animal{
  Cat(String name) : super(name: 'Tom');
  // so everytime we want to tighten a type from super class to sub class
  // we use covariant keyword
  @override
    void chase(covariant Mouse a) {
    print('$name is chasing ${a.name} very fast');
    }
}

class Bird extends Animal{
  Bird(String name) : super(name: name);
}

class Duck extends Bird{
  Duck(super.name);
  @override
    void whatAmI() => print('I am a duck ${super.name}');
  void swim() => print('${super.name} is swimming');
}

void main(){
  var cat = Cat('Tom');
  var mouse = Mouse('Jerry');
  cat.chase(mouse);
  var elephant = Elephant('Dumbo');
  elephant.chase(mouse);
  cat.chase(mouse);
}
