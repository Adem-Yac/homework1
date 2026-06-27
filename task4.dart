void main() {
  // Task 4.1
  List<String> courses = ["Dart", "Flutter", "Git", "Python", "SQL"];

  print(courses[2]);
  courses.add("Firebase");
  courses.insert(1, "OOP");
  courses.remove("Python");

  for (int i = 0; i < courses.length; i++) {
    print("${i + 1}. ${courses[i]}");
  }

  print(courses.where((course) => course.length > 3));

  // Task 4.2
  List<int> scores = [55, 78, 42, 90, 63, 81, 38, 74];

  var passed = scores.where((s) => s >= 60).map((s) => "Pass: $s");

  print(passed.toList());

  int total = 0;
  for (int s in scores) {
    total += s;
  }

  print(total / scores.length);

  // Task 4.3
  Map<String, Map<String, dynamic>> students = {
    "Ali": {"score": 70, "attendance": 80},
    "Sara": {"score": 50, "attendance": 90},
    "Walid": {"score": 85, "attendance": 95},
    "Omar": {"score": 40, "attendance": 60},
    "Lina": {"score": 65, "attendance": 76},
  };

  students.forEach((name, data) {
    data["passed"] = data["score"] >= 60 && data["attendance"] >= 75;
  });

  students.forEach((name, data) {
    print("$name : $data");
  });

  int totalScores = 0;

  for (var s in students.values) {
    totalScores += s["score"] as int;
  }

  print(totalScores / students.length);

  List<String> failed = [];

  students.forEach((name, data) {
    if (data["passed"] == false) {
      failed.add(name);
    }
  });

  print(failed);

  students["Adam"] = {"score": 90, "attendance": 90, "passed": true};

  print(students.length);

  // Task 4.4
  Set<String> backendSkills = {"Dart", "SQL", "Firebase", "REST", "Git"};

  Set<String> frontendSkills = {"Dart", "Flutter", "HTML", "CSS", "Git"};

  print(backendSkills.intersection(frontendSkills));
  print(backendSkills.difference(frontendSkills));
  print(frontendSkills.difference(backendSkills));

  Set<String> union = backendSkills.union(frontendSkills);

  print(union);

  backendSkills.add("Dart");
  print(backendSkills.length);

  List<String> sortedSkills = union.toList();
  sortedSkills.sort();

  print(sortedSkills);
}
