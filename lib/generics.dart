// GENERIC TYPES
// from List implementation
// void set first(E value);
// we can set the first element of the list to a generic type named E as we can observe right here
// this way we can reuse this method 100 of times no matter what type it will hold
// it will be universal, this generic type E can be anything any class, any type you could think of
// from the List implementation
// abstract class List<E> implements EfficientLengthIterable<E> {
// but one thing to be noted though is that
// this E type is actually the same generic type mationed in the class header
// we learned that DART IS A TYPE SAFE LANGUAGE
// meaning that you can not assign for example
// int a = 5;
// a = '5';
// a string type object to an integer type instance
// Lists are no exceptions to this rule
// the List class is define in a such a way so that the type safety characteristic of DART language remains intact
// meaning that a list can only hold objects or values of the same type of the generic type E in our case
// mentioned here between angle brackets


// what i want you to also realize before we go to precticing with those generic types
// is that they follow really important convention from effective dart
// that is how we should actually name them
// everywhere in dart api and most of the time in different dart packages as well
// you will find various generic types but what interesting is that they are named using single capital letters
// most of the times
// abstract class List<E>
// abstract class Map<K, V>
// abstract class HashSet<E>
// for example we saw in the case of list that they use the <E> generic type
// <E> = Elements
// to represent the type of elements that a list object can have
// therefore E stands for Elements type in any collection you would find ex Lists Sets Maps HashSet...
// if we switch our view to map implementation
// abstract class Map<K, V>
// we see that due to it's nature a map is collection containing key value pairs
// so it make sence that any of the keys and values can be of any possible type
// therefore we have two generic types
// <K, V> = Key Value
// sometimes you also find generic types named using
// static List<T> castFrom<S, T>(List<S> source)
// <T> = Type
// <S> = Source
// sometimes you also find generic types named using T letter which is stands for Type or R
// List<R> cast<R>();
// <R> = Return
// R which is less comman and stands for Return type of a function or a class method

// abstract class Block<Event, State>
// how ever you must understand that sometimes none of this single letters will help you
// or any other developer looking over your code what the meaning of a generic type is in your implementations
// in this case you're actually free to use any name you'd like for a generic type as long as it provides
// further explanations to someone that might be reading your code
void main(){
}
