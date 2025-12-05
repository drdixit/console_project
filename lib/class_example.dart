void main(){
  print('----- Class Example -----');
  Example example = Example(c: 100, a: 10);
}

class Example{
  int a;
  final int c;
  late int d;
  Example({required this.a, required this.c}){
    print('Example class instantiated with a = $a and c = $c');
  }
}
