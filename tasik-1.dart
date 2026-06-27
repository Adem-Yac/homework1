void main() {
  // Task 1.1
  const appName = "StudentTracker";
  final studentName = "Adem";
  var gpa = 15.5;
  double? scholarship;

  print("App: $appName");
  print("Student: $studentName");
  print("GPA: $gpa");
  print("Scholarship: ${scholarship ?? "None"}");
  // Task 1.2
  String rawScore = "87";
  String rawAverage = "14.75";

  int score = int.parse(rawScore);
  print(score + 13);

  double avg = double.parse(rawAverage);
  double doubled = avg * 2;
  print(doubled);

  String converted = doubled.toString();
  print(converted.length);
  // Task 1.3
  String? city;
  String? email;

  print(city?.length);

  email = "walid@dart.dz";
  print(email?.length);

  late String username;
  username = "admin";
  print(username);
  // Task 1.4
  const double taxRate = 0.19;
  double price = 49.99;
  String? label;

  print("Label length: ${label?.length ?? 0}");
}
