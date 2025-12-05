void main(){
  print('----- Field Promotion Limitation Example -----');
}

class Coffee{
  String? _temperature;

  void checkTemp(){
    if(_temperature != null){
      // print(_temperature.toUpperCase());
      // Error: Field might change between check and use

      // Workaround: use Null Assertion Operator
      // or with Null Assertion you can skip the check
      // it's like saying trust me, it's not null here
      print(_temperature!.toUpperCase());
      // OR user a Local Variable
      final temp = _temperature;
      if(temp != null){
        print(temp.toUpperCase());
      }
    }
  }
}
