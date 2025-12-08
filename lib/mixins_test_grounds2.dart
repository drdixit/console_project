mixin A{
  void method1(){}
  void method2(){}
  void method3(){}
}

class B with A{
  @override
  String method1(){
    print("method1 from class B");
    return "method1";
  }
}

void main(){
  B bInstance = B();
  print(bInstance.method1());
}
