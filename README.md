# builder_design_pattern_app

A new Flutter project.

## Getting Started

This project applies builder design pattern as following

A class called "User" was created with some parameters:
  - firstName (required)
  - lastName (required)
  - age (not required)
  - phone (not required)
    
and a private named constructor to prevent creating objects easily

Another class called "UserBuilder" with some functions to set data to the fields defined in "User" class

A "build" function was added to this class to return an object from "User" class with the required data

In the main function, and object of type "UserBuilder" was created to set data only to these fields:
- firstName
- lastName
- age

This object was used also to call the build function then print the returned object's data.

Note that only firstName and lastName are required but the phone and age are not, so we can set data to them or not.
