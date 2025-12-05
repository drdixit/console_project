void main(){
  Object obj = 'Hello, Dart!';
  if (obj is String) {
    print('The length of the string is => ${obj.length}');
    print('The Object is => ${obj.toUpperCase()}');
  }

  String? nullableStr;
  nullableStr = getString();
  // Automatic Promoted to Non-Nullable String
  if (nullableStr != null) {
    print('The length of the string is => ${nullableStr.length}');
  }

  print(earlyReturnExample());
}

String? getString() {
  return 'Dart is fun!';
}

// Also Works with Early Return Analyzer is Smart Enough
String? earlyReturnExample(){
  String? nullableStr = getString();
  if(nullableStr == null){
    return null;
  }
  return nullableStr.toUpperCase();
}
