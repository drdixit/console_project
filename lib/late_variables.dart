// Late Non Nullable Variables must be initialized before use
// It dont show lsp error so you are playing with fire
// If you access it before initialization it will throw runtime error LateInitializationError
late int number;

void init(){
  number = 10;
}

void main(){
  init();
  print('Late Non-nullable Int: $number');

  Test.staticLateVar = 20;
  print('Static Late Variable before initialization: ${Test.staticLateVar}');
}

class Test{
  static late int staticLateVar;
}
