void showString(String s){
  print(s.toUpperCase());
}

void main(){
  String? nullableString;
  print(nullableString ?? 'default');
  Object obj = 'Hello';
  showString(obj as String);

print('---------Function always return Implicit Return Null-----------');
  print(test());
}

String? test(){
  return null;
}

String getGread(int score){
  if(score >= 100){
  return 'good';
  }
  if(score < 100){
  return 'test';
  }
  return 'good enough';
}
