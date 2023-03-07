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
5. The app is connected to firebase for safety and authentication, it wont run unless in production mode.

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

## Screenshots
| | |
| ------------- | ------------- |
|![Simulator Screen Shot - iPhone 14 Pro - 2023-03-07 at 14 14 29](https://user-images.githubusercontent.com/42773250/223421466-313cfb61-0f64-4966-ac20-c61f6d7ef11c.png)| ![Simulator Screen Shot - iPhone 14 Pro - 2023-03-07 at 14 14 37](https://user-images.githubusercontent.com/42773250/223421513-ddd2c165-c280-47a6-94c6-61f21df14e89.png)
| ![Simulator Screen Shot - iPhone 14 Pro - 2023-03-07 at 14 14 44](https://user-images.githubusercontent.com/42773250/223422719-42c06089-2ae6-4708-a0e3-39ea3bb046bd.png) | ![Simulator Screen Shot - iPhone 14 Pro - 2023-03-07 at 14 14 52](https://user-images.githubusercontent.com/42773250/223422798-b475e5fd-50dd-468a-ab57-719c2f7e4742.png)  |
| ![Simulator Screen Shot - iPhone 14 Pro - 2023-03-07 at 14 15 00](https://user-images.githubusercontent.com/42773250/223422824-c3e3480c-bacb-4046-ad13-b76a2cf61b28.png)  | ![Simulator Screen Shot - iPhone 14 Pro - 2023-03-07 at 14 15 06](https://user-images.githubusercontent.com/42773250/223422853-fe4364b0-f230-47e2-9cdb-f23d4fa62e3a.png) |

## Author
Khaled Mitkees
