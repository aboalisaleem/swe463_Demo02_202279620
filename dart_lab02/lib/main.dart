//import 'package:flutter/material.dart';

//Task 1.1
// void main() {
//   int age = 25;
//   double height = 1.65;
//   bool isStudent = false;
//   String name = 'Hady AL Saleem';
//   List<int> scores = [90, 80, 70];

//   print('$name is $age years old and $height meters tall.');
//   print('Student: $isStudent');
//   print('Scores: $scores');
// }

//Task 1.2
// void main() {
// var city = 'Qatif';
// print('City: $city');

//   city = 'Khobar';
//   print('after change \nCity: $city');
// }

//Task 2.1
// void main() {
//   final String courseName = 'Mobile App Development';
//   const double pi = 3.14159;

//   dynamic anything = 'I can be any type!';
//   //courseName = 'Web Development'; // as final cannot be changed
//   //pi = 3.14; // as const cannot be changed
//   print(courseName);
//   print(pi);
//   print(anything);

//   anything = 42;
//   print(anything);
// }

                              //Task 3.1

// void greet(String name, String greeting) {
//   print('$greeting, $name!');
// }

// void greetWelcome(String name, [String greeting = 'Welcome']) {
//   print('$greeting, $name!');
// }

// void greetAgain({required String name, String? greeting}) {
//   print('${greeting ?? 'Hi'}, $name!');
// }

// void main() {
//   greet('Hady AL Saleem', 'Hello');
//   greetWelcome('Hady AL Saleem');
//   greetWelcome('Hady AL Saleem', 'Good morning');
//   greetAgain(name: 'Hady AL Saleem', greeting: 'Hello');
//   greetAgain(name: 'Hady AL Saleem');

//   greet('\n\n\nhasan', 'nice to meet you');
//   greetWelcome('hasan');
//   greetAgain(name: 'hasan', greeting: 'Hello');
//   greetAgain(name: 'hasan');
// }




                              //Task 3.2
// void performOperation(
//   int a,
//   int b,
//   int Function(int, int) operation,
// ) {
//   print(operation(a, b));
// }

// int add(int a, int b) => a + b;
// int subtract(int a, int b) => a - b;
// int multiply(int a, int b) => a * b;

// void main() {
//   performOperation(10, 5, add);
//   performOperation(10, 5, subtract);
//   performOperation(10, 5, multiply);
// }
                              //Task 4.1
// void main() {
//   var fruitsList = ['apples', 'oranges', 'bananas','strawberries'];
//   var grades = {'quiz1': 85, 'quiz2': 92,'quiz3': 78};
//   var tags = {'dart', 'flutter', 'mobile', 'flutter','dart'};

//   print(fruitsList[3]);
//   print(grades['quiz3']);
//   print(tags);
// }

                              //Task 4.2
// void main() {
//   List<String> fruitsList = []; 
//   List<String> moreFruits = ['grape', 'kiwi', 'mango']; 

//   List<String> allFruits = [
//     'watermelon',
//     if (fruitsList.isNotEmpty) ...fruitsList,
//     for (var fruit in moreFruits) fruit,
//   ];

//   print(allFruits);
// // }
//                               //Task 5.1
// class User {
//   final String username;
//   final String email;

//   User(this.username, this.email);
// }

// void main() {
//   var user = User('ali_ux', 'ali@email.com');
//   var user2 = User('hady al saleem', 'hady@email.com');
//   print(user.username);
//   print(user.email);
//   print(user2.username);
//   print(user2.email);
// }              


//                            //Task 5.2
// abstract class Post {
//   final String author;

//   Post(this.author);

//   void render();
// }

// class TextPost extends Post {
//   final String text;

//   TextPost(String author, this.text) : super(author);

//   @override
//   void render() {
//     print('Text post by $author: "$text"');
//   }
// }

// class ImagePost extends Post {
//   final String imageUrl;

//   ImagePost(String author, this.imageUrl) : super(author);

//   @override
//   void render() {
//     print('Image post by $author at $imageUrl');
//   }
// }

// class VideoPost extends Post {
//   final String videoUrl;

//   VideoPost(String author, this.videoUrl) : super(author);

//   @override
//   void render() {
//     print('Video post by $author at $videoUrl');
//   }
// }
// void main() {
//   List<Post> feed = [
//     TextPost('khalid', 'Flutter is amazing!'),
//     ImagePost('omar', 'https://example.com/sunset.png'),
//     VideoPost('sara', 'https://example.com/tutorial.mp4'),
//   ];

//   for (final post in feed) {
//     post.render();
//   }
// }

                              //Task 5.3
// class Animal {
//   void makeSound() {
//     print('Some generic sound');
//   }
// }

// mixin Swimmer {
//   void swim() {
//     print('I can swim!');
//   }
// }

// class Dolphin extends Animal with Swimmer {}

// class Duck extends Animal with Swimmer {
//   @override
//   void makeSound() {
//     print('Quack!');
//   }
// }
// void main() {
//   final dolphin = Dolphin();
//   final duck = Duck();
//   dolphin.swim();
//   dolphin.makeSound();
//   duck.swim();
//   duck.makeSound();
// }

                              //Task 6.1
// import 'person.dart';

// void main() {
//   final person = Person('Osama', 'Ali');
//   print(person.greet());

//   // The following line causes a compile-time error because
//   // _firstName is private to person.dart's library.
//    //print(person._firstName);
// }
                              //Task 6.2
// import 'person.dart';

// void main() {
//   final person = GreetingPerson('Ali', 'Hussian');
//   person.sayHi();
// }
                              //Task 7.1
//                               class UserProfile {
//   final String name;
//   String? bio;

//   UserProfile(this.name, {this.bio});

//   String getDisplayBio() {
//     return bio ?? 'No bio provided.';
//   }
// }

// void main() {
//   final user1 = UserProfile('Ahmed');
//   final user2 = UserProfile('Layla', bio: 'Flutter Developer');
//   final user3 = UserProfile('Omar', bio: null);
//   print(user1.getDisplayBio());
//   print(user2.getDisplayBio());
// }




//                               //Task 7.2
// class User {
//   final String username;
//   final String email;

//   User(this.username, this.email);
// }

// abstract class Post {
//   final String author;

//   Post(this.author);

//   void render();
// }

// class TextPost extends Post {
//   final String text;

//   TextPost(String author, this.text) : super(author);

//   @override
//   void render() {
//     print('Text post by $author: "$text"');
//   }
// }

// class ApiResponse<T> {
//   final bool success;
//   final T? data;
//   final String? errorMessage;

//   ApiResponse(this.success, {this.data, this.errorMessage});
// }

// void main() {
//   final userResponse = ApiResponse<User>(
//     true,
//     data: User('khalid', 'khalid@example.com'),
//   );

//   print(userResponse.data?.username);

//   final postResponse = ApiResponse<Post>(
//     true,
//     data: TextPost('Turki', 'Flutter is awesome'),
//   );

//   if (postResponse.success) {
//     postResponse.data?.render();
//   } else {
//     print('Response failed: ${postResponse.errorMessage}');
//   }
//   // Task solution
// final intResponse = ApiResponse<int>(
//   true,
//   data: 200,
// );

// print(intResponse.data);

//   final errorResponse = ApiResponse<User>(
//     false,
//     errorMessage: 'Unable to load user',
//   );

//   print(errorResponse.errorMessage);
// }


                              //Task 8.1

// Future<String> fetchData() async {
//   await Future.delayed(const Duration(seconds: 2));
//   return 'Fetched Data';
// }

// Future<void> main() async {
//   print('[1] Using async/await');
//   print('[2] Fetching data...');

//   final data = await fetchData();
//   print('[3] Result: $data');

//   print('[4] Using .then()');

//   fetchData().then((value) {
//     print('[6] .then() result: $value');
//   }).catchError((error) {
//     print('[7] Error: $error');
//   });

//   print('[5] Program continues after .then() call');
// }








