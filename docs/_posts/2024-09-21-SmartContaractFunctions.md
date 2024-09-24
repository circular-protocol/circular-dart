---
title: Smart Contract Functions
author: Danny De Novi
date: 2024-09-12
category: Jekyll
layout: post
mermaid: true
---

testContract
-------------

Test the execution of a smart contract project and returns eventually errors in the code.

Method signature:

```dart
Future<Map<String, dynamic>> testContract(String blockchain, String from, String project);
```

Example:

```dart
import 'package:circular_api/circular_api.dart';

void main() {
    final circular = CircularAPI();

    final blockchain = "0x8a20baa40c45dc5055aeb26197c203e576ef389d9acb171bd62da11dc5ad72b2";
    final address = "0x248ea24763f3aeb2590114257b0b95ebc8fc40e287574aa25379bb24c6d661ec";
    final contractAddress = "0x77796a30a3f0744ca73975547a24f939a1b93e121b3b7f50663c92d38d437d86"
  
    final wallet = await circular.testContract(blockchain, address);
}
```

The result of this operation will be a Map<String, dynamic>.

If there are errors in the code the result will be:

```json
{
    "Result": 117,
    "Response": "4552524f523a4661696c656420746f207061727365204a534f4e2066696c653a202a204c696e6520312c20436f6c756d6e20310a202053796e746178206572726f723a2076616c75652c206f626a656374206f722061727261792065787065637465642e0a0a",
    "Node": "fc8fe5ee103dafe353c98ce90a1cb2956fd51a109512e074bd3d26a06d268e81"
}
```


callContract
-------------

Use this method if you want to execute a function writte in a smart contract.

Method signature:

```dart
Future<Map<String, dynamic>> callContract(String blockchain, String from, String project, String request);
```

Example: 

Example:

```dart
import 'package:circular_api/circular_api.dart';

void main() {
    final circular = CircularAPI();

    final blockchain = "0x8a20baa40c45dc5055aeb26197c203e576ef389d9acb171bd62da11dc5ad72b2";
    final address = "0x248ea24763f3aeb2590114257b0b95ebc8fc40e287574aa25379bb24c6d661ec";
    final contractAddress = "0x77796a30a3f0744ca73975547a24f939a1b93e121b3b7f50663c92d38d437d86"
    final request = "CRC_Contract.__GetContractName();";
  
    final wallet = await circular.callContract(blockchain, address, contractAddress, request);
}
```

The result will be:

```json
{
    "Result": 200,
    "Response": "7b20225f506572666f726d616e636522203a2022487970657220436f646520457865637574696f6e2054696d653a20313038337573222c200a0a225f436f6e736f6c655f4f757470757422203a2022346436663736363534343431373037303061227d",
    "Node": "8a93c6b6f8d166097ddfeb3e5e3a2998b35e0b6f0bd2e31a8a130a11b6749279"
}
```

The response needs to be converted from Hex to String and analized separately.


callContractWithPlainConsoleOutput
-------------

This function is the same as callContract but the console output is already parsed to plain text String.

Method Signature:

```dart
Future<dynamic> callContractWithPlainConsoleOutput(String blockchain, String from, String project, String request);
```

Example:

```dart
import 'package:circular_api/circular_api.dart';

void main() {
    final circular = CircularAPI();

    final blockchain = "0x8a20baa40c45dc5055aeb26197c203e576ef389d9acb171bd62da11dc5ad72b2";
    final address = "0x248ea24763f3aeb2590114257b0b95ebc8fc40e287574aa25379bb24c6d661ec";
    final contractAddress = "0x77796a30a3f0744ca73975547a24f939a1b93e121b3b7f50663c92d38d437d86"
    final request = "CRC_Contract.__GetContractName();";
  
    final wallet = await circular.callContractWithPlainConsoleOutput(blockchain, address, contractAddress, request);
}
```

The result will be an Object of type String:

```bash
  ContractName
```



