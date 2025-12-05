// Top Level Non-nullable Variables MUST be Initialized
int topLevelNonNullableInt = 42;

// Top Level Nullable Variables can be Uninitialized
int? topLevelNullableInt;

class Demo{
  // Static Non-nullable Variables MUST be Initialized
  static int staticNonNullableInt = 100;

  // Static Nullable Variables can be Uninitialized
  static int? staticNullableInt;
}

void main(){
  print('Top Level Non-nullable Int: $topLevelNonNullableInt');
  print('Top Level Nullable Int: $topLevelNullableInt');
  print('Static Non-nullable Int: ${Demo.staticNonNullableInt}');
  print('Static Nullable Int: ${Demo.staticNullableInt}');
}
