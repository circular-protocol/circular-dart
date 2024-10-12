# Circular Blockchain API (Dart)
Welcome to the Circular Blockchain API documentation. This repository contains APIs written in Dart for interacting with the Circular Blockchain. The APIs are designed to simplify integration with smart contracts and transactions on the Circular Blockchain.

This package is based on the methods implemented in the official API written in [Javascript](https://circularlabs.io/CircularSDK/CircularJS.js)

## Install

Clone the GitHub repository with

```bash
git clone https://github.com/dannydenovi/CircularDartAPI.git
```

Put the `circular_api` folder in the project directory where you’re working on.

Enter in the `pubspec.yaml` file this value in the dependencies list:

```yaml
dependencies:
  CircularDartAPI:
    path: ./circular_api
```

and then launch

```bash
dart pub get
```

import where you need the API with

```dart
import 'package:CircularDartAPI/circular.dart';
```

## Usage 

```dart
import 'package:CircularDartAPI/circular.dart';

void main() async {
  final circular = CircularAPI();
  final blockchains = await circular.getBlockchains();
}
```

## Docs

Take a look at the [documentation](https://circular-protocol.gitbook.io/circular-sdk/api-docs/dart) for the list of methods and expected results.

## Test

You can test the API calls with the provided Postman json file.

