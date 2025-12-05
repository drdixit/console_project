// By default every class in Dart extends the Object class.
class Animal{
  final String name;

  Animal({required this.name}){
    print('Creating an animal with name: $name');
  }

  Animal.fromJson() : name = 'Unknown'{
    print('Creating an animal from JSON');
  }

  void whatAmI() => print('I am an animal');
}

// Since our Bird class extends Animal, when creating a new Bird instance/object
// Dart will also need to create an Animal instance/object and it doesn't know which
// name to provide to it therefore we need to manually create a constructor for Bird
// class as well that will automatically call the animal class constructor and send a
// name value to it
class Bird extends Animal{
  // in this context by using super with () it will just access and call the constructor
  // that will initialize the Animal object with the name we provide inside the Bird constructor
  Bird(String name) : super(name: name);
  // Dart only allow to have one unnamed constructor in class
  Bird.unknown() : super.fromJson();
}

class Duck extends Bird{
  // Duck(String name) : super(name);
  // shorthand syntax
  Duck(super.name);
  @override
    void whatAmI() => print('I am a duck ${super.name}');
  void swim() => print('${super.name} is swimming');
}

void main(){
  Bird parrot = Bird('Parrot');
  parrot.whatAmI();
  Bird unknownBird = Bird.unknown();
  Duck duck = Duck('Donald');
  duck.whatAmI();
  print('Duck name is: ${duck.name}');
  duck.swim();
}
