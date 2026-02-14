# 🩺 MedQ

A comprehensive medical education platform built with Flutter, designed to help medical students master their subjects through interactive learning, practice questions, and progress tracking.

## 🚧 Development Status

**Currently Under Active Development** - Core UI and features are being implemented.

## ✨ Features

### 📚 Learning Hub
- **Daily Goals** - Personalized learning targets with daily quizzes and flashcards
- **Progress Tracking** - Monitor your progress across different medical subjects
- **Streak System** - Stay motivated with daily learning streaks
- **Continue Reading** - Pick up where you left off in your studies

### 🎯 Question Bank
- **Multiple Question Types**
  - Multiple Choice Questions (MCQs)
  - Essay Questions
  - Short Answer Questions
- **Smart Filtering** - Filter by subject, difficulty, and question type
- **High Yield Questions** - Focus on the most important topics
- **Progress Indicators** - Track completed vs. pending questions
- **Subject Categories** - Organized by medical specialties:
  - Anatomy
  - Pathology
  - Biochemistry
  - Neurology
  - Cardiology
  - And more...

### 👤 User Features
- **Firebase Authentication** - Secure login and signup
- **User Profiles** - Personalized learning experience
- **Dark Mode Support** - Study comfortably in any lighting
- **Cross-Platform** - Works on Android, iOS, Web, Linux, macOS, and Windows

## 🛠️ Tech Stack

- **Framework**: Flutter 3.10.7+
- **Language**: Dart
- **Backend**: Firebase
  - Firebase Auth - User authentication
  - Cloud Firestore - Database
  - Firebase Core - Core Firebase functionality
- **State Management**: Provider
- **UI**: Material Design 3 with custom theming
- **Font**: Inter (custom font family)

## 📋 Prerequisites

Before you begin, ensure you have:
- Flutter SDK (version 3.10.7 or higher)
- Dart SDK
- A code editor (VS Code, Android Studio, or IntelliJ IDEA)
- Firebase account for backend services

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/mdcreator-2/medq.git
cd medq
```

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Firebase Setup

This project uses Firebase. You'll need to:

1. Create a new Firebase project at [Firebase Console](https://console.firebase.google.com/)
2. Add your app to the Firebase project (Android/iOS/Web)
3. Download and replace the configuration files:
   - `google-services.json` for Android
   - `GoogleService-Info.plist` for iOS
4. Update `lib/firebase_options.dart` with your Firebase configuration

### 4. Run the App

```bash
# Run on your connected device/emulator
flutter run

# Or specify a platform
flutter run -d chrome    # Web
flutter run -d android   # Android
flutter run -d ios       # iOS
```

## 📱 Supported Platforms

- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ Windows
- ✅ macOS
- ✅ Linux

## 🎨 App Architecture

```
lib/
├── main.dart                 # App entry point
├── app_shell.dart           # Main app navigation shell
├── home.dart                # Learning hub/dashboard
├── qb.dart                  # Question bank
├── login.dart               # Authentication - Login
├── signup.dart              # Authentication - Signup
├── profile_page.dart        # User profile
├── tests_page.dart          # Tests and assessments
├── firebase_options.dart    # Firebase configuration
└── components/              # Reusable UI components
    ├── home/               # Home page components
    └── questionbank/       # Question bank components
```

## 🗺️ Roadmap

- [ ] Complete question bank with real medical questions
- [ ] Implement flashcard system
- [ ] Add video lessons
- [ ] Create mock exams and timed tests
- [ ] Implement spaced repetition algorithm
- [ ] Add notes and bookmarking
- [ ] Social features (study groups, leaderboards)
- [ ] Offline mode support
- [ ] Analytics dashboard
- [ ] Content management system for educators

## 🤝 Contributing

Contributions are welcome! If you'd like to contribute:

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is private and not yet licensed for public use.

## 📧 Contact

For questions or feedback, please open an issue in the repository.

---

**Built with ❤️ for medical students**
