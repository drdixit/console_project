// // lets say we want to create a structure that contains excetely three values inside
// // most of the time we call this a tuple
// class Tuple{
//   final int a;
//   final int b;
//   final int c;
//   Tuple(this.a, this.b, this.c);
// }
//
// void main(List<String> args) {
//   // // the thig is that from a formal prespective we won't want to access the fields by
//   // // writing t.a t.b t.c because this brings some ambiguity into the game
//   // // what is a is it the first field is it a second one nobody knows
//   // Tuple t = Tuple(1, 2, 3);
//   // print(t.a);
//   // what everyone knows that inside a tuple there are three elements
//   // the first one the second one and the third one
//   // therefore it make sence to be able to access them by writing tuple.first tuple.second tuple.third
//   // what we can do is rename this fields to first second and third
// }

// or as we are about to do make this fields private so that they can't be accessed outside this library and create three getter methods
// named first second and third that will actually return the private a, b and c fields
// this way it will look little bit neat and structured

// class Tuple{
//   final int? _a;
//   final int? _b;
//   final int? _c;
//
//   // Tuple(this._a, this._b, this._c);
//   // now we have this basic constructor which we can transform into a constant one
//   const Tuple(this._a, this._b, this._c);
//
//   // and i would also like a named constructor called fromList
//   // that will receive a list as a parameter and will return a tuple with the first three elements of the list
//   // if the length of the list is less than three then we will populate the tuple with null
//   Tuple.fromList(List<int> list) 
//     : _a = list.asMap().containsKey(0) ? list[0] : null,
//       _b = list.asMap().containsKey(1) ? list[1] : null,
//       _c = list.asMap().containsKey(2) ? list[2] : null;
//
//   int? get first => _a;
//   int? get second => _b;
//   int? get third => _c;
// }
//
// void main(List<String> args) {
//   Tuple t = Tuple(1, 2, 3);
// }



// class Tuple{
//   final int? _a;
//   final int? _b;
//   final int? _c;
//
//   const Tuple(this._a, this._b, this._c);
//
//   Tuple.fromList(List<int> list) 
//     : _a = list.asMap().containsKey(0) ? list[0] : null,
//       _b = list.asMap().containsKey(1) ? list[1] : null,
//       _c = list.asMap().containsKey(2) ? list[2] : null;
//
//   int? get first => _a;
//   int? get second => _b;
//   int? get third => _c;
//
//   // what we also want to do right now is to override the plus and minus operators
//   // so that we will be able to add or subtract two tuples all together
//   // returning another tuple with the sum or the difference of all elements
//   // here we make sure to use ! exclemantion mark to let dart know that we are 100% sure
//   // that none of this values will be null
//   // so as expected we shouldn't call this methods on tuples that are not 100% populated with integer values
//   Tuple operator +(Tuple t) => Tuple(_a! + t._a!, _b! + t._b!, _c! + t._c!);
//   Tuple operator -(Tuple t) => Tuple(_a! - t._a!, _b! - t._b!, _c! - t._c!);
//
//   @override
//   String toString() => 'Tuple(first: $first, second: $second, third: $third)';
// }
//
//
// void main(List<String> args) {
//   // now we can create different tuple objects and we will try to cover every case
//   // constant one with default constructor
//   Tuple tuple1 = const Tuple(1, 2, 3);
//   // then we will create two other ones one created from a list with three elements
//   Tuple tuple2 = Tuple.fromList([4, 5, 6]);
//   // and one created from a list with only one element
//   Tuple tuple3 = Tuple.fromList([7]);
//   // i also create a sum tuple containing the sum of tuple1 and tuple2
//   Tuple tuple4 = tuple1 + tuple2;
//
//   print('tuple1 --> $tuple1');
//   print('tuple2 --> $tuple2');
//   print('tuple3 --> $tuple3');
//   print('tuple4 --> $tuple4');
// }




// as you might already observed this Tuple is kind of an abstract structure
// meaning that well the three elements inside of it can be of any type
// in our case currently we are limiting the functionality of our tuple to work just with integer values
// but what if we want a touple containing three String elements
// or top three F1 drivers
// this can't be achived right now because the only values we accept inside our tuple are integer values

// well in this case we want to make our class kind of universal
// more generic we shell say a class that can accept any type of elements inside of it

// in order to do that we need to make it accept generic types
// since this tuple is more or less a collection of three values we can name the
// generic type E from the type of elements inside of it
// and now the refactoring process goes like this
// we should search for every type that we declared in here that can be of a generic type and replace it with E
// we will starts with the fields which obviously can be of a generic E type
// class Tuple<E>{
//   final E? _a;
//   final E? _b;
//   final E? _c;
//
//   E? get first => _a;
//   E? get second => _b;
//   E? get third => _c;
//
//   const Tuple(this._a, this._b, this._c);
//
//   // the List parameter of the named constructor can also be of a generic type E
//   // since we want to be able to create a tuple out of any kind of list
//   Tuple.fromList(List<E> list) 
//     : _a = list.asMap().containsKey(0) ? list[0] : null,
//       _b = list.asMap().containsKey(1) ? list[1] : null,
//       _c = list.asMap().containsKey(2) ? list[2] : null;
//
//   // but now comes a really important question
//   // we want this + and - operators to only work if we have two tuples containing
//   // elements of a num type since well only numbers can be added or subtracted
//   // Tuple operator +(Tuple t) => Tuple(_a! + t._a!, _b! + t._b!, _c! + t._c!);
//   // Tuple operator -(Tuple t) => Tuple(_a! - t._a!, _b! - t._b!, _c! - t._c!);
//
//   // we must declare that we will return a Tuple of num type
//   // and that the tuple send as a parameter to the plus and minus operator should be also a tuple of num type
//   Tuple<num> operator +(Tuple<num> t) => Tuple(_a! + t._a!, _b! + t._b!, _c! + t._c!);
//   Tuple<num> operator -(Tuple<num> t) => Tuple(_a! - t._a!, _b! - t._b!, _c! - t._c!);
//
//   @override
//   String toString() => 'Tuple(first: $first, second: $second, third: $third)';
// }
//
// void main(List<String> args) {
//   // let's create two t1 and t2 tuples
//   Tuple t1 = Tuple(1, 2, 3);
//   Tuple t2 = Tuple(4, 5, 6);
//   // having this said if we do t1 + t2 right now
//   // we are sure that the return value of this operation will be a tuple of num
//   // and that t2 is surly a tuple of num
//   // the problem is now how we are going to check if t1 is a tuple of num
//   // since we can't really control it to make the static analyzer show an error if
//   // we call the plus operator on a t1 that's not a tuple of num
//   t1 + t2;
// }



class Tuple<E>{
  final E? _a;
  final E? _b;
  final E? _c;

  E? get first => _a;
  E? get second => _b;
  E? get third => _c;

  const Tuple(this._a, this._b, this._c);

  Tuple.fromList(List<E> list) 
    : _a = list.asMap().containsKey(0) ? list[0] : null,
      _b = list.asMap().containsKey(1) ? list[1] : null,
      _c = list.asMap().containsKey(2) ? list[2] : null;

  Tuple<num> operator +(Tuple<num> t) {
    // a solution I found to this problem is that we can use the ease operator
    // to check whether the object calling the plus method which by the way
    // is represented by the this keyword is indeed of type tuple of num or not
    if(this is Tuple<num>){
      final thisAsTupleNum = this as Tuple<num>;
     return Tuple(thisAsTupleNum._a! + t._a!, thisAsTupleNum._b! + t._b!, thisAsTupleNum._c! + t._c!);
    }
    // if it's not well we could throw an exception
    // but in this case we keep it as simple as possible and retrun a 0 0 0 default tuple
    return Tuple(0, 0, 0);
  }
  Tuple<num> operator -(Tuple<num> t) {
    if(this is Tuple<num>){
      final thisAsTupleNum = this as Tuple<num>;
     return Tuple(thisAsTupleNum._a! - t._a!, thisAsTupleNum._b! - t._b!, thisAsTupleNum._c! - t._c!);
    }
    return Tuple(0, 0, 0);
  }

  @override
  String toString() => 'Tuple(first: $first, second: $second, third: $third)';
}

class RandomClass<E>{}

void main(List<String> args) {
  const t1 = Tuple(1, 2, 3);
  const t2 = Tuple(4, 5, 6);
  final tSum = t1 + t2;
  final tDiff = t1 - t2;
  print(tSum);  //Tuple(first: 5, second: 7, third: 9)
  print(tDiff); //Tuple(first: -3, second: -3, third: -3)

  // we can even create seperate tuples of different objects and test their functionality
  // well because now our Tuple class is generic class and it can accept elements of any type
  const t6 = Tuple(1, '2', 3);
  const t3 = Tuple('a', 'b', 'c');
  const t4 = Tuple(Object(), Object(), Object());
  final t5 = Tuple.fromList(['Hello', 'I', 'am', 'dixit']);

  // one thing to keep in mind that even though you dont have to mention this type all the times
  // as they can be easily inferred by the dart
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['a', 'b', 'c'];
  // I highly recommend you to always mention them
  // it will make your life easier and win you huge amounts of lost hour strength to debug
  // why something related to them isn't properly working
  var listOfInts1 = <int>[1, 2, 3];
  var listOfStrings1 = <String>['a', 'b', 'c'];

  var intClass = RandomClass<int>();
  var stringClass = RandomClass<String>();
}

// one thing i forget to mention about this generic types in a class
// is that we can restrict it to only accept a couple of types rather than every possible type
// by using the popular extends keyword
// if for example we we'd want this tuple class to permit elements of types num and of those below in the
// class hierarchy we can definetely write E extends num
//    num
// int double
class TupleRestricted<E extends num> {}
// as we learned from previous tutorials inside the class hierarchy
// only int and double extends num
// therefore when instenciating this TupleRestricted class object we can only 
// mention numbers inside of it whether there are of int double or num type
// but we can't use Object or a String as these are not direct children of the num class
// in the class hierarchy

