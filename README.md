README.md

# Habit Tracker App

A simple Habit Tracker app built using **Flutter** and **Riverpod** with **Clean Architecture**.

## **Features**

- Add new habits.
- Toggle the completion status of habits.
- List all the habits with their completion status.

## **Architecture**

This app follows **Clean Architecture** with the following structure:

1. **Presentation Layer**: Manages UI-related code and state management.
2. **Domain Layer**: Contains business logic (use cases).
3. **Data Layer**: Manages data sources (API, local storage, repositories).
4. **Core Layer**: Reusable logic like error handling and use cases.

## **Folder Structure**
   ```
Here is the folder structure of the app:

lib/ ├── core/ # Core functionalities │ ├── use_cases/ # Common use cases │ ├── errors/ # Error handling ├── features/ # Features like Habit Tracker │ ├── habit_tracker/ # Feature-specific directory │ │ ├── data/ # Data sources (API, DB) │ │ │ ├── models/ # Habit models │ │ │ └── repositories/ │ │ ├── domain/ # Business logic (use cases) │ │ │ ├── entities/ # Habit entity │ │ │ └── repositories/ │ │ └── presentation/ # Screens and widgets │ │ ├── providers/ # State management (Riverpod/Provider) │ │ ├── screens/ # Habit screens │ │ └── widgets/ # UI widgets ├── main.dart # Entry point
   ```


### **Description of the Folder Structure:**

- **core**: Contains reusable core logic such as error handling and base use cases.
    - `use_cases/`: Contains common use cases that can be shared across features.
    - `errors/`: Manages error classes for consistent error handling across the app.
  
- **features**: Contains the features of the app, in this case, the **habit tracker** feature.
    - **habit_tracker**: The folder for the habit tracking feature which includes:
        - **data/**: Deals with data-related tasks such as fetching and saving data from/to repositories.
            - `models/`: Habit models that convert data from JSON and represent the entities.
            - `repositories/`: Implements the repository interface to communicate with the data layer.
        - **domain/**: Contains business logic for the habit tracker.
            - `entities/`: Habit entity that defines the core structure of a habit.
            - `repositories/`: Interface for the repositories to be used by the domain layer.
            - `use_cases/`: Contains the specific use cases for adding and toggling habits.
        - **presentation/**: Manages UI-related logic, state management, and UI screens.
            - `providers/`: Contains state management logic using **Riverpod**.
            - `screens/`: Contains the screens of the app like the Habit Tracker screen.
            - `widgets/`: Contains UI components like Habit list items.

## **Dependencies**

The app uses the following dependencies:

- `flutter_riverpod`: State management for Flutter.
- `flutter`: Flutter SDK.

## **How to Set Up the Project**

1. Clone the repository:

   ```bash
   git clone <your-repository-url>
  ```

2. Navigate to the project directory:

cd habit_tracker_app

3. Run flutter pub get to install dependencies:

 ```bash
flutter pub get
 ```

4. Run the app using:
 ```bash
flutter run
 ```

## **How the App Works**
**Add a Habit:** The user can add a new habit through the floating action button. A dialog will appear to input the name of the habit.
**Toggle Habit Status:** The user can mark a habit as completed or incomplete by tapping on the habit item. This toggles the completion status.
**Display Habits:** All the habits are displayed in a list with their completion status.
## **Technologies Used**
**Flutter:** Framework for building the cross-platform mobile app.
**Riverpod:** State management solution to handle the business logic and UI state.
**Clean Architecture:** Codebase is structured based on Clean Architecture principles, which promotes separation of concerns, maintainability, and testability.

Example UI
Main Screen:
The list displays habits with their names and completion status (checked or unchecked).
A FloatingActionButton is provided to add a new habit.
License
This project is open-source and available under the MIT License.


---

### **Explanation of Changes in the README**:

- **File Structure**: I've added the folder structure with a detailed explanation of each folder's purpose. It should give a clear overview of the architecture and where each type of code (UI, logic, data handling) resides.
  
- **Setup Instructions**: The setup section explains the necessary commands to clone the repo, get the dependencies, and run the app.

- **Technologies Used**: Mentioned that **Flutter**, **Riverpod**, and **Clean Architecture** were used in the development.

- **App Functionality**: Provided a brief description of how the app works — adding habits, toggling their status, and displaying them.
