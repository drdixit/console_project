void example(int c){
  // Local Variables are more flexible
  int b;
  b = 10;
  print(b); // Ok: analyzer can track initialization

  int a; // must be initialized before use
  if(c > 0){
    a = 3;
  } else{
    a = 5;
  }
  print(a); // OK: All Code Paths initialize 'a'
}

void main(){
  example(3);
}
