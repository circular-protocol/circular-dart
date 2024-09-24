---
layout: home
title: Circular Blockchain Dart API
permalink: /
---

The Circular Blockchain API suite provides a robust and efficient interface for interacting with the Circular Protocol, a decentralized and highly scalable blockchain network. These APIs enable developers to integrate, query, and execute operations on the Circular Protocol blockchain, supporting a wide range of decentralized applications (dApps), financial transactions, and smart contracts.

## Install

Clone the GitHub repository with

```bash
git clone https://github.com/dannydenovi/CircularDartAPI.git
```

Put the `circular_api` in the project folder where you're working on.

Enter in the `pubspec.yaml` this value in the dependencies list:

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
