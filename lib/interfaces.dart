// A usual interface is a class that contains list of fields and methods headers
// this is more like a contract that you declare inside a class
// so that every other derived class that implements your interface will have to implement all of your fields and methods
// In Dart, there are no explicit interfaces like in some other languages
// use abstract classes to declare interfaces
abstract class UserRepositoryInterface {
  late final List<int> usersList;
  // Note that only headers of the methods are written here
  // no body implementation is provided
  // also a method without a function body is called an abstract method
  void create();
  List<int> read();
  void delete();
  void update();
}

// Compare to the extends keyword which is used to share behaviour of base class to derived class
// the implements keyword forces behaviour of interface to derived class that implements it
// In other words, a class that implements an interface must absolutely implement all the fields and methods declared in the interface
class UserRepository implements UserRepositoryInterface {
  @override
  late final List<int> usersList;

  UserRepository() {
    usersList = read();
  }

  @override
  void create() => print('User created'); 

  @override
  void delete() => print('User deleted');

  @override
  List<int> read() => [1, 2, 3, 4, 5];

  @override
  void update() => print('User updated');
}

void main(){
  // Note that the interface can not be instantiated directly
  // since we can not instantiate abstract classes
  UserRepository userRepository = UserRepository();
  print(userRepository.usersList);
  userRepository.create();
  userRepository.update();
  userRepository.delete();
}

// another difference between extends and implements is that
// extend => only one class can be extended
// implements => multiple interfaces can be implemented as long as 
// all the fields and methods inside the interfaces are implemented / overridden inside the derived class
