<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

Ось переклад README.md на англійську мову з додаванням прикладу використання `globalNavigatorKey`:

# Simplify Navigation

Simplify Navigation is a Flutter package designed to simplify navigation in your applications. It provides easy-to-use methods for navigating between pages with different types of transitions.

## Features

- Simple and convenient interface for page navigation.
- Supports various transition types (fade, right-to-left, left-to-right).
- Ability to use a global navigator key.
- Method to exit the application.

## Getting started

### Prerequisites

To get started with this package, you need to have the Flutter SDK installed.

### Installation

Add `simplify_navigation` to your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  simplify_navigation:
    git:
      url: https://github.com/your-repo/simplify_navigation.git
```

## Usage

### Import the package

```dart
import 'package:simplify_navigation/simplify_navigation.dart';
```

### Using the navigation methods

#### Push a new page

```dart
SimplyNavigator.push(
  context,
  page: NewPage(),
  transition: NavigationTransitionType.fade,
);
```

#### Push and remove all previous pages

```dart
SimplyNavigator.pushAndRemoveAll(
  context,
  page: NewPage(),
  transition: NavigationTransitionType.slideRightToLeft,
);
```

#### Push and replace the current page

```dart
SimplyNavigator.pushReplacement(
  context,
  page: NewPage(),
  transition: NavigationTransitionType.slideLeftToRight,
);
```

#### Pop the current page

```dart
SimplyNavigator.pop(context);
```

#### Exit the application

```dart
SimplyNavigator.systemPop();
```

### Using the global navigator key

Using a `SimplyNavigator.globalNavigatorKey` is helpful when you have bottom navigation with multiple tabs, each with its own navigation stack. It makes it easier to manage navigation and allows for simpler transitions between tabs and the main navigation.  
You can also use other navigator keys for specific navigation needs within different parts of your app.

<!-- ## Additional information

For more detailed information about the package, check the documentation in the `/example` folder.

If you have any questions or want to contribute to the package, please create an issue or submit a pull request on [GitHub](https://github.com/your-repo/simplify_navigation). -->

## Contributing

We welcome your contributions! Please follow the standard GitHub process for creating pull requests. Make sure your changes pass all tests and comply with the project's coding standards.

<!-- ## License

This project is licensed under the MIT License. See the LICENSE file for details. -->
