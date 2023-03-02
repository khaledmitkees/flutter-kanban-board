# Flutter Kanban Board Application

This is a Flutter application that implements a kanban board using the bloc architecture pattern.
It allows users to create tasks and move them across different boards representing different stages of work.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

## Prerequisites
To run this project, you need to have:

- [Flutter](https://flutter.dev/docs/get-started/install) installed on your local machine.
- An IDE of your choice like [Android Studio](https://docs.flutter.dev/get-started/editor?tab=androidstudio)(Recommended), VSCode, or IntelliJ IDEA.

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

## Installing
1. Clone the repository to your local machine.
   `git clone`
2. Change into the project directory.
   `cd <project-name>`
3. Get the dependencies.
   `flutter pub get`
4. Run the app
   `flutter run`

## Features
* Create new tasks with a title.
* Move tasks across different boards representing different stages of work.
* Update the title of a task.
* Delete a task.
* Add a task
* Add a board
* Export to csv
* See completed tasks
* Crashlytics 
* Google Analytics 
* Localization [en, de]

## Architecture
This application uses the bloc architecture pattern to manage state. The key components of the application's architecture include:

* **Bloc** - This is the core component of the bloc pattern. It manages the application's state and responds to events from the user interface.
* **Event** - This is an object that represents a user interaction or a system event. It is passed to the bloc to trigger a state change.
* **State** - This is an object that represents the current state of the application. It is emitted by the bloc in response to an event.
* **Repository** - This is a class that provides an implementation of a specific data source like a REST API or a local database. It is used by the repository to retrieve and store data.

## Built With
* [Flutter](https://flutter.dev/) - The framework used to build the application.
* [Bloc](https://pub.dev/packages/bloc) - A state management library that implements the bloc pattern.
* [Firebase](https://firebase.google.com/) - A free Google to with several services

## Author
Khaled Mitkees
