void main(){
  print('----- Parameters Example -----');

  print('Non-nullable Optional Parameters:');
  nonnullableOptional();
  nonnullableOptional('Alice');

  print('Nullable Optional Parameters:');
  nullableOptional();
  nullableOptional('Bob');

  print('Optional Named Parameters:');
  optionalNamed();
  optionalNamed(name: 'Charlie');

  print('Nullable Optional Named Parameters:');
  nullableOptionalNamed();
  nullableOptionalNamed(name: 'Diana');

  print('Required Named Parameters:');
  requiredNamed(name: 'Eve');
}

// Non-nullable optional parameters must have default values
void nonnullableOptional([String name = 'Guest']){
  print('Hello, $name');
}

// or make it Nullable
void nullableOptional([String? name]){
  print('Hello, $name ${name ?? 'Guest'}');
}

// optional named parameters
void optionalNamed({String name = 'Guest'}){
  print('Hello, $name');
}

// Nullable Optional Named Parameters
void nullableOptionalNamed({String? name}){
  print('Hello, $name, ${name ?? 'Guest'}');
}

// Required Named Parameters
void requiredNamed({required String name}){
  print('Hello, $name');
}
