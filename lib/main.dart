import 'package:flutter/material.dart';

class User {
  final String firstName;
  final String lastName;
  final int? age;
  final String? phone;
  //private named constructor
  User._(
      {required this.firstName, required this.lastName, this.age, this.phone});
}

class UserBuilder {
  late String firstName;
  late String lastName;
  int? age;
  String? phone;
  setFirstName(String first) {
    firstName = first;
  }

  setLastName(String last) {
    lastName = last;
  }

  setAge(int userAge) {
    age = userAge;
  }

  setPhone(String phoneNumber) {
    phone = phoneNumber;
  }

//a function to build the User object
  User build() {
    User user1 = User._(
        firstName: firstName, lastName: lastName, age: age, phone: phone);
    return user1;
  }
}

void main() {
  UserBuilder user = UserBuilder();
  user.setFirstName("Rania");
  user.setLastName("Mostafa");
  user.setAge(20);
  var user1 = user.build();
  debugPrint("Username is ${user1.firstName} ${user1.lastName}");
  debugPrint("User has ${user1.age ?? 0} years old");
  debugPrint("User phone number is ${user1.phone ?? "no number"}");
}
