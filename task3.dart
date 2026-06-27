int clamp(int value, int min, int max) {
  if (value < min) return min;
  if (value > max) return max;
  return value;
}

String repeatString(String s, int times) {
  String result = "";
  for (int i = 0; i < times; i++) {
    result += s;
  }
  return result;
}

bool isPrime(int n) {
  if (n < 2) return false;
  for (int i = 2; i < n; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

String buildProfile({
  required String name,
  required int age,
  String role = "Student",
}) {
  return "$name | Age: $age | Role: $role";
}

double celsiusToFahrenheit(double c) => c * 9 / 5 + 32;
bool isLongString(String s) => s.length > 10;
int square(int n) => n * n;

List<int> getFibonacci(int count) {
  List<int> fib = [];
  int a = 0, b = 1;

  for (int i = 0; i < count; i++) {
    fib.add(a);
    int temp = a + b;
    a = b;
    b = temp;
  }

  return fib;
}

void main() {
  print(clamp(5, 1, 10));
  print(clamp(15, 1, 10));

  print(repeatString("ab", 3));
  print(repeatString("xy", 2));

  print(isPrime(7));
  print(isPrime(8));

  print(buildProfile(name: "Ali", age: 20, role: "Student"));
  print(buildProfile(name: "Sara", age: 21));
  print(buildProfile(name: "Walid", age: 30, role: "Instructor"));

  print(celsiusToFahrenheit(20));
  print(isLongString("Hello world test"));
  print(square(5));

  List<int> fib10 = getFibonacci(10);
  print(fib10);

  List<int> fib5 = getFibonacci(5);
  int sum = 0;

  for (int n in fib5) {
    sum += n;
  }

  print(sum);
}
