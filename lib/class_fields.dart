class Example {
  int a = 1; // Initialized at declaration
  int b; // Must be set before constructor body
  final int c; // Must be initialize once, before constructor body
  late int d; // can be initialized later before use

  Example({required this.b}) : c = 2{
    d = 10;
    print(d);
  }
}

void main(){
  print('----- Class Fields Example -----');
  Example example = Example(b: 3);
  print(example);
}
