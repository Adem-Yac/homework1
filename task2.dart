void main() {
  // Task 2.1
  int examScore = 80;

  if (examScore >= 90) {
    print("A - Excellent");
  } else if (examScore >= 75) {
    print("B - Good");
  } else if (examScore >= 60) {
    print("C - Average");
  } else {
    print("F - Failed");
  }

  print(examScore >= 60 ? "Pass" : "Fail");

  // Task 2.2
  bool isLoggedIn = true;
  bool isAdmin = false;
  int age = 20;

  if (isLoggedIn && age >= 18) {
    print("Welcome back!");
  }

  if (isAdmin || age > 25) {
    print("Admin panel unlocked");
  }

  if (!isLoggedIn) {
    print("Guest mode");
  }

  // Task 2.3
  String day = "Monday";

  switch (day) {
    case "Monday":
    case "Tuesday":
    case "Wednesday":
      print("Work from office");
      break;

    case "Thursday":
    case "Friday":
      print("Work from home");
      break;

    case "Saturday":
    case "Sunday":
      print("Rest day");
      break;

    default:
      print("Invalid day");
  }

  // Task 2.4
  for (int i = 1; i <= 20; i++) {
    if (i % 2 == 0) continue;
    print(i);
  }

  int count = 10;
  while (count >= 1) {
    print(count);
    count--;
  }

  print("Lift off!");

  int attempts = 0;
  int pin = 9999;
  int correctPin = 1234;

  do {
    attempts++;
  } while (pin != correctPin && attempts < 3);

  if (pin == correctPin) {
    print("Access granted");
  } else {
    print("Account locked");
  }
}
