void main(){
  greet();
  greet('Alice');
  greetNullable();
  greetNullable('Alice');
  greetNamed();
  greetNamed(name: 'Bob');
  greetNamedNullable();
  greetNamedNullable(name: 'Bob');
  greetNamedRequired(name: 'Charlie');
  greetNamedRequired(name: 'Dave');
}

// Non-nullable optional parameter must have a default value
void greet([String name = 'Guest']){
  print('Hello, $name');
}

// or make it Nullable
void greetNullable([String? name]){
  print("Hello, ${name ?? 'Guest'}");
}

// Named Optionl Parameters
void greetNamed({ String name = 'Guest' }){
  print('hello, $name');
}

// Named Nullable Parameters
void greetNamedNullable({ String? name }){
  print("hello, ${ name ?? 'Guest' }");
}

// Named Required Parameters
void greetNamedRequired({ required String name }){
  print('hello, $name');
}

class Example{
  // MUST initialize before constructor body
  int a = 1;
  int b;
  final int c;
  late int d;

  Example({required this.b, required this.c}){
    d = 4;
    print(d);
  }
}

