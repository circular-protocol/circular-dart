---
title: Cryptographic Functions
author: Danny De Novi
date: 2024-09-12
category: Jekyll
layout: post
mermaid: true
---


signMessage
-------------

Sign a message using secp256k1.

Method signature:

```dart
String signMessage(String plainMessage, String privateKey);
```

Example:

```dart
import 'package:circular_api/circular_api.dart';

void main() {
  final circular = CircularAPI();

  final privateKey = "0x248ea24763f3aeb2590114257b0b95ebc8fc40e287574aa25379bb24c6d661ec";
  final message = "Hello, World!";
  
  final signedMessage = circular.signMessage(message, privateKey);
  print(signedMessage);
}
```

The result of this operation will be a String:

```bash
6aa65e46e2db7fe30c7ea68c931e26f1a97f60f35745b25b1baec250f62432e670b0267dd7e3d78e02e5dc6fc2db0aa720d6db617b9cb251403aec5aec03e582
```

verifySignature
-------------

Verify a signature with a public key

Method signature:

```dart
bool verifySignature(String publicKey, String message, String signature);
```

Example:

```dart
import 'package:circular_api/circular_api.dart';

void main() {
  final circular = CircularAPI();
  final publicKey = "04b92abae6932e0faa578231fe4f6d83237acccb09f5343a5455abfaf8e2091a989e64dae6e4ebb9f6a1be5bd48d0bab6dbc99641514f19ee43052ab27178fd9ce";
  final message = "Hello, World!";
  final signature = "6aa65e46e2db7fe30c7ea68c931e26f1a97f60f35745b25b1baec250f62432e670b0267dd7e3d78e02e5dc6fc2db0aa720d6db617b9cb251403aec5aec03e582";
  
  final isVerified = circular.verifySignature(publicKey, message, signature);
  print(signedMessage);
}
```

The result of this operation will be a bool:

```bash
true
```

getKeysFromString
-------------

Get private key, public key and wallet address form a seed phrase written on a single String object

Method signature:

```dart
Map<String, String> getKeysFromString(String seedPhrase);
```

Example:

```dart
import 'package:circular_api/circular_api.dart';

void main() {
  final circular = CircularAPI();
  final seedPhrase = "Hello, World!";

  final keys = circular.getKeysFromString(seedPhrase);
}
```

The result of this operation will be a Map with these keys:

```bash
{
  "privateKey" : String,
  "publicKey"  : String,
  "address"    : String,
  "seedPhrase" : String,
}
```

getKeysFromListOfStrings
-------------

Is the same method as `getKeysFromString` but it accept a list of strings instead a single object of type String.

Method signature:

```dart
Map<String, String> getKeysFromListOfStrings(List<String> seedPhrase);
```

Example:

```dart
import 'package:circular_api/circular_api.dart';

void main() {
  final circular = CircularAPI();
  final seedPhrase = ["Hello", ",", "World!"];

  final keys = circular.getKeysFromListOfStrings(seedPhrase);
}
```

The result of this operation will be a Map with these keys:

```bash
{
  "privateKey" : String,
  "publicKey"  : String,
  "address"    : String,
  "seedPhrase" : String,
}
```

getPublicKey
-------------

Get the public key from a private key

Method signature:

```dart
String getPublicKey(String privateKey);
```

Example:

```dart
import 'package:circular_api/circular_api.dart';

void main() {
  final circular = CircularAPI();
  final privateKey = "0x248ea24763f3aeb2590114257b0b95ebc8fc40e287574aa25379bb24c6d661ec";

  final keys = circular.getPublicKey(privateKey);
}
```

The result of this operation will be an object of type String:

```bash
04b92abae6932e0faa578231fe4f6d83237acccb09f5343a5455abfaf8e2091a989e64dae6e4ebb9f6a1be5bd48d0bab6dbc99641514f19ee43052ab27178fd9ce
```






