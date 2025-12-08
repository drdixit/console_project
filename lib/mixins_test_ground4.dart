class Performer{
  void perform() => print("Performing from Perfomer class");
}

// another cool characteristic of mixins is that
// you can specifically specify which classes can actually be mixed in with them
// by using the "on" keyword
// class Musician with Drummer, Guitarist{}
// this throws an error
// the Musician class must extend the Performer class in order to use the Guitarist mixin
// class Musician extend Perfomer with Drummer, Guitarist{}
// this is because well the Performer super class was mixed in with Guitarist mixin
// and inside the mixin we can depend on the method from inside the Performer class
// therefore we want to make sure we can access it in the Musician class by extending the Performer class
mixin Guitarist on Performer{
  void playGuitar() => print("Playing guitar from Guitarist mixin");
  void test() => perform();
  void test2() => super.perform();
}

mixin Drummer{
  void playDrums() => print("Playing drums from Drummer mixin");
  void perform() => playDrums();
}

class Musician extends Performer with Guitarist, Drummer{}
// Note that we definetely can't say that mixinis are inherited overall
// the only inherited class over here are the Musician and Performer class

void main(){
  Musician musician = Musician();
  musician.test();
  // what do you think this will print right now?
  // the program will print "Playing drums from Drummer mixin"
  // so the Musician class extends the Performer class
  // Performer that has two mixins attached to it
  // as a rersult every method you see in above classes are available as a whole inside the Musician class
  // this is why we can call the test method on musician object in the first place
  // this method calls the perform method that we think is inside the Performer class
  // but remember from the Musician class perspective
  // all functions in here are put in the place all together
  // or when finding out it needs to run perfrom method it starts to search for the first perform method
  // it can find in the hierarchy tree
  // Performer
  //
  // Performer
  // Guitarist
  //
  // Performer
  // Guitarist
  // Drummer <-
  //
  // Musician
  // and as we discuss previously the first class above our Musician class is the performer class mixed in with Guitarist and Drummer
  // hence the Drummer is the first place it will check for the perform method and gess what the drummer has the perform method inside of it.
  // therefore this will be the one that will get called

  // if you like to call the perform method from the Performer class what would you do?
  // you simply write super.perform();
  // so that it executes the perform method above
  // Performer
  //
  // Performer
  // Guitarist
  //
  // Performer <-
  // Guitarist
  // Drummer
  //
  // Musician
  musician.test2();

  SwitchOrderMusician switchOrderMusician = SwitchOrderMusician();
  // Performer
  //
  // Performer
  // Drummer
  //
  // Performer
  // Drummer <-
  // Guitarist
  //
  // Musician
  switchOrderMusician.test();
  // Performer
  //
  // Performer
  // Drummer
  //
  // Performer <-
  // Drummer
  // Guitarist
  //
  // Musician
  switchOrderMusician.test2();
  // if this  Drummer dont have any perform method inside
  // then it will go one step above also executing the perform method from inside
  // the Performer class
  // Performer
  //
  // Performer
  // Drummer
  //
  // Performer <-
  // Drummer
  // Guitarist
  //
  // Musician
}

// note that if we switch the order it still prints Drummer
class SwitchOrderMusician extends Performer with Guitarist, Drummer{}
