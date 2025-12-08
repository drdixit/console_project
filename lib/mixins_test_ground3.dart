class Performer {
  void perform() => print("Performing from Performer class");
}

mixin Guitarist {
  void playGuitar() => print("Playing guitar from Guitarist mixin");
  void perform() => playGuitar();
}

mixin Drummer {
  void playDrums() => print("Playing drums from Drummer mixin");
  void perform() => playDrums();
}

class Musician extends Performer with Guitarist, Drummer {}
// just like the implement keyword, but here you dont have to override
// all methods and fields you declare inside the mixin
// class heirarchy:
// Performer
//   |
// Performer
// Guitarist
//   |
// Performer
// Guitarist
// Drummer
//   |
// Musician

// but if we wrote it like this:
// class Musician extends Performer with Drummer, Guitarist {}
// then the heirarchy would be:
// Performer
//   |
// Performer
// Drummer
//   |
// Performer
// Drummer
// Guitarist
//   |
// Musician


// class Musician with Guitarist, Drummer {}
// then the heirarchy would be:
// Object
//   |
// Object
// Guitarist
//   |
// Object
// Guitarist
// Drummer
//   |
// Musician

void main(){
  Musician musician = Musician();
  musician.perform(); // Output: Playing drums from Drummer mixin
  musician.playDrums(); // Output: Playing drums from Drummer mixin
  musician.playGuitar(); // Output: Playing guitar from Guitarist mixin
}
