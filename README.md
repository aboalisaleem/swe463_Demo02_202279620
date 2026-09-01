# demo02
# Lab 02 — Introduction to Dart

**Course:** Mobile Application Development  
**Lab:** 02  
**Suggested Time:** ~ 50  90 ~ minutes  
**Total Grade:** 100 points

## Learning Outcomes

By the end of this lab, you should be able to:

- declare Dart variables using explicit types and `var`;
- use `final`, `const`, and `dynamic` correctly;
- define and call functions with positional, optional positional, and named parameters;
- pass functions as arguments;
- work with `List`, `Map`, and `Set`;
- use collection `if`, spread (`...`), and collection `for`;
- create classes and objects;
- use inheritance, polymorphism, and mixins;
- understand Dart library privacy using `_`;
- use null safety and generics;
- use `Future`, `async`/`await`, and `Stream`.

---

# 0. Lab Setup — 5 points

## Task 0.1 — Create a Flutter project

Open a terminal and run:

```bash
flutter create dart_lab02
cd dart_lab02
code .
```

Open:

```text
lib/main.dart
```

For most tasks in this lab, you will use `main.dart` as a Dart console-style file. You do **not** need to build a user interface.

## Task 0.2 — Run the code

You may run the examples using either:

```bash
dart run lib/main.dart
```

or:

```bash
flutter run
```

> **Note:** In a Flutter project, VS Code may show the warning **“Don't invoke print in production code.”** This is a lint warning, not a compilation error. `print()` is acceptable for this learning lab.

### What to submit

- Screenshot showing the project created successfully.
- Screenshots showing each Dart program running successfully after student task.

---

# 1. Variables and Data Types — 8 points

## Task 1.1 — Explicitly typed variables

Replace the contents of `lib/main.dart` with:

```dart
void main() {
  int age = 25;
  double height = 1.80;
  bool isStudent = false;
  String name = 'Ahmad';
  List<int> scores = [90, 80, 70];

  print('$name is $age years old and $height meters tall.');
  print('Student: $isStudent');
  print('Scores: $scores');
}
```

Run the program.

### Student task

Change the values so they describe **you** instead of Ahmad.

### Expected observation

The values should be printed without errors.

---

## Task 1.2 — Type inference with `var`

Add this code inside `main()`:

```dart
var city = 'Dhahran';
print('City: $city');
```

### Student task

1. Run the program.
2. Change `Dhahran` to another city.
3. Observe that Dart infers `city` as a `String`.

---

# 2. Variable Modifiers — 7 points

## Task 2.1 — `final`, `const`, and `dynamic`

Use this program:

```dart
void main() {
  final String courseName = 'Mobile App Development';
  const double pi = 3.14159;

  dynamic anything = 'I can be any type!';
// courseName = 'Web Development';
// pi = 3.14;
  print(courseName);
  print(pi);
  print(anything);

  anything = 42;
  print(anything);
}
```

### Student task

1. Run the program.
2. Uncomment the following line and observe the error:

```dart
// courseName = 'Web Development';
```

3. Restore the comment.
4. Try the same experiment with:

```dart
// pi = 3.14;
```

### Questions

Answer briefly in your README submission notes:

1. What is the difference between `final` and `const`?
2. Why can `dynamic` change from `String` to `int`?

---

# 3. Functions — 12 points

## Task 3.1 — Positional, optional, and named parameters

Use this complete program:

```dart
void greet(String name, String greeting) {
  print('$greeting, $name!');
}

void greetWelcome(String name, [String greeting = 'Welcome']) {
  print('$greeting, $name!');
}

void greetAgain({required String name, String? greeting}) {
  print('${greeting ?? 'Hi'}, $name!');
}

void main() {
  greet('Ali', 'Hello');
  greetWelcome('Ali');
  greetWelcome('Ali', 'Good morning');
  greetAgain(name: 'Ali', greeting: 'Hello');
  greetAgain(name: 'Ali');
}
```

### Student task

1. Run the program.
2. Change `Ali` to your name.
3. Add one more call to each function.
4. Explain which function uses:
   - positional parameters;
   - optional positional parameters;
   - named parameters.

---

## Task 3.2 — Higher-order functions

Use this program:

```dart
void performOperation(
  int a,
  int b,
  int Function(int, int) operation,
) {
  print(operation(a, b));
}

int add(int a, int b) => a + b;
int subtract(int a, int b) => a - b;

void main() {
  performOperation(10, 5, add);
  performOperation(10, 5, subtract);
}
```

### Student task

Create a new function:

```dart
int multiply(int a, int b)
```

Then pass it to `performOperation()` and test it using `10` and `5`.

---

# 4. Collections — 12 points

## Task 4.1 — `List`, `Map`, and `Set`

Use this program:

```dart
void main() {
  var fruitsList = ['apples', 'oranges', 'bananas'];
  var grades = {'quiz1': 85, 'quiz2': 92};
  var tags = {'dart', 'flutter', 'mobile', 'flutter'};

  print(fruitsList[1]);
  print(grades['quiz2']);
  print(tags);
}
```

### Student task

1. Add one fruit to the list.
2. Add `quiz3` to the map.
3. Add `dart` to the set a second time.
4. Run the program and explain why the duplicate set item is not stored twice.

---

## Task 4.2 — Dynamic list building

Use this program:

```dart
void main() {
  List<String> fruitsList = ['apples', 'oranges', 'bananas'];
  List<String> moreFruits = ['grape', 'kiwi'];

  List<String> allFruits = [
    'watermelon',
    if (fruitsList.isNotEmpty) ...fruitsList,
    for (var fruit in moreFruits) fruit,
  ];

  print(allFruits);
}
```

### Student task

1. Run the program.
2. Add `'mango'` to `moreFruits`.
3. Make `fruitsList` empty and run the program again.
4. Explain what the spread operator `...` does.

---

# 5. Object-Oriented Programming — 18 points

## Task 5.1 — Classes and objects

Use this program:

```dart
class User {
  final String username;
  final String email;

  User(this.username, this.email);
}

void main() {
  var user = User('ali_ux', 'ali@email.com');

  print(user.username);
  print(user.email);
}
```

### Student task

Create a second `User` object containing your own sample data and print both fields.

---

## Task 5.2 — Inheritance and polymorphism

Use this program:

```dart
abstract class Post {
  final String author;

  Post(this.author);

  void render();
}

class TextPost extends Post {
  final String text;

  TextPost(String author, this.text) : super(author);

  @override
  void render() {
    print('Text post by $author: "$text"');
  }
}

class ImagePost extends Post {
  final String imageUrl;

  ImagePost(String author, this.imageUrl) : super(author);

  @override
  void render() {
    print('Image post by $author at $imageUrl');
  }
}

void main() {
  List<Post> feed = [
    TextPost('khalid', 'Flutter is amazing!'),
    ImagePost('omar', 'https://example.com/sunset.png'),
  ];

  for (final post in feed) {
    post.render();
  }
}
```

### Student task

Create a third class called `VideoPost` that extends `Post` and implements `render()`.

Add one `VideoPost` object to `feed` and test the program.

---

## Task 5.3 — Mixins

Use this program:

```dart
class Animal {
  void makeSound() {
    print('Some generic sound');
  }
}

mixin Swimmer {
  void swim() {
    print('I can swim!');
  }
}

class Dolphin extends Animal with Swimmer {}

void main() {
  final dolphin = Dolphin();
  dolphin.swim();
  dolphin.makeSound();
}
```

### Student task

Create another class named `Duck` that:

- extends `Animal`;
- uses the `Swimmer` mixin.

Create a `Duck` object and call both methods.

---

# 6. Libraries and Privacy — 10 points

Dart does not use `public`, `private`, or `protected` keywords like some other languages. An identifier beginning with `_` is private to its **library**.

## Task 6.1 — Private members across files

Create a file:

```text
lib/person.dart
```

Add:

```dart
class Person {
  final String _firstName;
  final String _lastName;

  Person(this._firstName, this._lastName);

  String greet() {
    return 'Hello, $_firstName $_lastName!';
  }
}
```

Now use this in `lib/main.dart`:

```dart
import 'person.dart';

void main() {
  final person = Person('Osama', 'Ali');
  print(person.greet());

  // The following line causes a compile-time error because
  // _firstName is private to person.dart's library.
  // print(person._firstName);
}
```

### Student task

Uncomment `print(person._firstName);`, observe the error, then comment it again.

---

## Task 6.2 — `part` and `part of`

Replace `lib/person.dart` with:

```dart
library person_library;

part 'greeting_person.dart';

class Person {
  final String _firstName;
  final String _lastName;

  Person(this._firstName, this._lastName);

  String greet() => 'Hello, $_firstName $_lastName!';
}
```

Create:

```text
lib/greeting_person.dart
```

Add:

```dart
part of person_library;

class GreetingPerson extends Person {
  GreetingPerson(super.firstName, super.lastName);

  void sayHi() {
    print('Hi $_firstName $_lastName');
  }
}
```

Now use this in `lib/main.dart`:

```dart
import 'person.dart';

void main() {
  final person = GreetingPerson('Ali', 'Hussian');
  person.sayHi();
}
```

### Student task

Explain why `GreetingPerson` can access `_firstName` and `_lastName` even though they start with `_`.

---

# 7. Null Safety and Generics — 12 points

## Task 7.1 — Null safety

Use this program:

```dart
class UserProfile {
  final String name;
  String? bio;

  UserProfile(this.name, {this.bio});

  String getDisplayBio() {
    return bio ?? 'No bio provided.';
  }
}

void main() {
  final user1 = UserProfile('Ahmed');
  final user2 = UserProfile('Layla', bio: 'Flutter Developer');

  print(user1.getDisplayBio());
  print(user2.getDisplayBio());
}
```

### Student task

Create a third user with no bio and verify the default message.

---

## Task 7.2 — Generics

Use this complete program:

```dart
class User {
  final String username;
  final String email;

  User(this.username, this.email);
}

abstract class Post {
  final String author;

  Post(this.author);

  void render();
}

class TextPost extends Post {
  final String text;

  TextPost(String author, this.text) : super(author);

  @override
  void render() {
    print('Text post by $author: "$text"');
  }
}

class ApiResponse<T> {
  final bool success;
  final T? data;
  final String? errorMessage;

  ApiResponse(this.success, {this.data, this.errorMessage});
}

void main() {
  final userResponse = ApiResponse<User>(
    true,
    data: User('khalid', 'khalid@example.com'),
  );

  print(userResponse.data?.username);

  final postResponse = ApiResponse<Post>(
    true,
    data: TextPost('Turki', 'Flutter is awesome'),
  );

  if (postResponse.success) {
    postResponse.data?.render();
  } else {
    print('Response failed: ${postResponse.errorMessage}');
  }

  final errorResponse = ApiResponse<User>(
    false,
    errorMessage: 'Unable to load user',
  );

  print(errorResponse.errorMessage);
}
```

### Student task

Create an `ApiResponse<int>` containing the value `200` and print its data.

---

# 8. Asynchronous Programming — 11 points

## Task 8.1 — `Future`, `async`, and `await`

Use this program:

```dart
Future<String> fetchData() async {
  await Future.delayed(const Duration(seconds: 2));
  return 'Fetched Data';
}

Future<void> main() async {
  print('[1] Using async/await');
  print('[2] Fetching data...');

  final data = await fetchData();
  print('[3] Result: $data');

  print('[4] Using .then()');

  fetchData().then((value) {
    print('[6] .then() result: $value');
  }).catchError((error) {
    print('[7] Error: $error');
  });

  print('[5] Program continues after .then() call');
}
```

### Student task

Run the program and write the order in which `[1]` through `[6]` are printed.

---

## Task 8.2 — Streams

Use this program:

```dart
Stream<int> countStream(int to) async* {
  for (int i = 1; i <= to; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

Future<void> main() async {
  print('Start counting...');

  await for (final count in countStream(5)) {
    print(count);
  }

  print('Done');
}
```

### Student task

Change the stream so it counts from `1` to `3` instead of `1` to `5`.

---

# 9. Final Exercise — Identify Dart Features in Flutter Code — 5 points

Study the following Flutter code. First identify the requested Dart features, then run it as a normal Flutter application.

```dart
import 'package:flutter/material.dart';                       // 1

void main() => runApp(const MyApp());                       // 3

class MyApp extends StatelessWidget {                       // 5
  const MyApp({super.key});                                 // 6

  @override                                                  // 8
  Widget build(BuildContext context) {                      // 9
    return const MaterialApp(                               // 10
      home: MyHomePage(title: 'Flutter Demo'),              // 11
    );                                                       // 12
  }                                                          // 13
}                                                            // 14

class MyHomePage extends StatefulWidget {                   // 16
  const MyHomePage({super.key, required this.title});       // 17

  final String title;                                       // 19

  @override                                                  // 21
  State<MyHomePage> createState() => _MyHomePageState();    // 22
}                                                            // 23

class _MyHomePageState extends State<MyHomePage> {          // 25
  int _counter = 0;                                         // 26
  String? message;                                          // 27

  void _incrementCounter() {                                // 29
    setState(() {                                           // 30
      _counter++;                                           // 31
      message = 'Button pressed';                           // 32
    });                                                      // 33
  }                                                          // 34

  @override                                                  // 36
  Widget build(BuildContext context) {                      // 37
    return Scaffold(                                        // 38
      appBar: AppBar(                                       // 39
        title: Text(widget.title),                          // 40
      ),                                                     // 41
      body: Center(                                         // 42
        child: Column(                                      // 43
          mainAxisAlignment: MainAxisAlignment.center,      // 44
          children: <Widget>[                               // 45
            Text('Count: $_counter'),                       // 46
            Text(message ?? 'Press the button'),            // 47
          ],                                                 // 48
        ),                                                   // 49
      ),                                                     // 50
      floatingActionButton: FloatingActionButton(           // 51
        onPressed: _incrementCounter,                       // 52
        child: const Icon(Icons.add),                       // 53
      ),                                                     // 54
    );                                                       // 55
  }                                                          // 56
}                                                            // 57
```

Fill in this table:

| Dart feature | Line number(s) |
|---|---|
| Variables and types | |
| Null safety | |
| Function definitions | |
| Collections | |
| Class definitions | |
| Generics | |
| Positional parameter definitions | |
| Named parameter definitions | |
| Private members | |
| Importing packages | |
| Inheritance | |

---

# Submission Requirements

Submit your GitHub repository containing:

```text
README.md
lib/main.dart
lib/person.dart              # when required
lib/greeting_person.dart     # when required
screenshots/
```

Your `screenshots/` folder should contain evidence that each major section ran successfully.

Recommended naming:

```text
screenshots/
  task1_variables.png
  task2_modifiers.png
  task3_functions.png
  task4_collections.png
  task5_oop.png
  task6_privacy.png
  task7_generics.png
  task8_async.png
```

---

# Grading Summary

| Section | Points |
|---|---:|
| 0. Setup | 5 |
| 1. Variables and Types | 8 |
| 2. Variable Modifiers | 7 |
| 3. Functions | 12 |
| 4. Collections | 12 |
| 5. Object-Oriented Programming | 18 |
| 6. Libraries and Privacy | 10 |
| 7. Null Safety and Generics | 12 |
| 8. Asynchronous Programming | 11 |
| 9. Final Exercise | 5 |
| **Total** | **100** |

## General grading rules

- Code must compile and run for full credit.
- Small syntax errors that prevent execution may receive partial credit.
- Screenshots must match the student's own code/output.
- Student modifications requested in each task are part of the grade.
- Copying only the provided starter code without completing the requested changes does not receive full credit.

