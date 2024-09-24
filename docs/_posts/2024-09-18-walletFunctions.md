---
title: Wallet Functions
author: Danny De Novi
date: 2024-09-12
category: Jekyll
layout: post
mermaid: true
---

checkWallet
-------------

This method checks if a wallet exists in the specified blockchain.

Method signature:

```dart
Future<Map<String, dynamic>> checkWallet(String blockchain, String address);
```

Example:

```dart
import 'package:circular_api/circular_api.dart';

void main() {
    final circular = CircularAPI();

    final blockchain = "8a20baa40c45dc5055aeb26197c203e576ef389d9acb171bd62da11dc5ad72b2";
    final address = "0x248ea24763f3aeb2590114257b0b95ebc8fc40e287574aa25379bb24c6d661ec";
  
    final wallet = await circular.checkWallet(blockchain, address);
}
```

The result of this operation will be a Map<String, dynamic>.

If the wallet exists in the blockchain the result will be:

```bash
{
    Result:200,
    Response:Success,
    Node:02fc8b01bfc5dc2911941871e6de81f5f6fe60f3961343f802ad78e7e077ea32
}
```

If the wallet is not specified in the function call the result will be:

```bash
{
    Result:118,
    Response:Missing Address,
    Node:7bb5bd50729d6857942701d5673ea70ca1625f883230d8543970a452d1abe1c4
}
```

If the wallet does not exist in the blockchain the result will be:

```bash
{
    Result: 108, 
    Response: Wallet Not found, 
    Node: fc8fe5ee103dafe353c98ce90a1cb2956fd51a109512e074bd3d26a06d268e81
}
```

getWallet
-------------

This method retrieves the wallet information from the specified blockchain.

Method signature:

```dart
  Future<Map<String, dynamic>> getWallet(String blockchain, String address);
```

Example:

```dart
import 'package:circular_api/circular_api.dart';

void main() {
    final circular = CircularAPI();

    final blockchain = "8a20baa40c45dc5055aeb26197c203e576ef389d9acb171bd62da11dc5ad72b2";
    final address = "0x248ea24763f3aeb2590114257b0b95ebc8fc40e287574aa25379bb24c6d661ec";
  
    final wallet = await circular.getWallet(blockchain, address);
}
```

The result of this operation will be a Map<String, dynamic>.

If the wallet exists in the blockchain the result will be:

```json
{
  "Result": 200,
  "Response": {
    "Address": "986e15a59af8a9317c424c3bc14d3bf628c20d6f3387f4270af96100f20e2b23",
    "Assets": [
      {
        "Address": "",
        "Amount": "0.000000",
        "Description": "Circular Coin",
        "EnableSwap": 0,
        "Name": "CIRX",
        "Price": "1",
        "Royalties": "0",
        "Type": "C_TYPE_COIN",
        "URL": "",
        "URLType": ""
      }
    ],
    "ContractData": [],
    "DateCreation": "2024:09:19-15:21:01",
    "Nonce": 0,
    "PublicKey": "04d85aaa9f6d9fa1f7b90132b3f8cb49075dae25558b494b54be4ccef9142464eff8b31cddac5c3e0e41098ec82098defa5096d83311db5827a7d3ee7c61e48ab9",
    "Version": "1.0.1",
    "Vouchers": []
  },
  "Node": "8a93c6b6f8d166097ddfeb3e5e3a2998b35e0b6f0bd2e31a8a130a11b6749279"
}
```


getWalletBalance
-------------

This method retrieves the wallet balance from the specified blockchain chosen a specific asset.

Method signature:

```dart
Future<Map<String, dynamic>> getWalletBalance(String blockchain, String address, String asset)
```

Example:

```dart

import 'package:circular_api/circular_api.dart';

void main() {
    final circular = CircularAPI();

    final blockchain = "8a20baa40c45dc5055aeb26197c203e576ef389d9acb171bd62da11dc5ad72b2";
    final address = "0x248ea24763f3aeb2590114257b0b95ebc8fc40e287574aa25379bb24c6d661ec";
    final asset = "CIRX";
  
    final wallet = await circular.getWalletBalance(blockchain, address, asset);
}
```

The result of this operation will be a Map<String, dynamic>.

```json
{
  "Result": 200,
  "Response": {
    "Balance": 0,
    "Description": "Circular Coin"
  },
  "Node": "8a93c6b6f8d166097ddfeb3e5e3a2998b35e0b6f0bd2e31a8a130a11b6749279"
}
```

If the asset is not found on the wallet the result will be:

```json
{
  "Result": 108,
  "Response": "Wallet Not found",
  "Node": "8a93c6b6f8d166097ddfeb3e5e3a2998b35e0b6f0bd2e31a8a130a11b6749279"
}
```

getWalletNonce
-------------

This method retrieves the wallet nonce from the specified blockchain.

Method signature:

```dart
  Future<dynamic> getWalletNonce(String blockchain, String address);
```

Example:

```dart
import 'package:circular_api/circular_api.dart';

void main() {
    final circular = CircularAPI();

    final blockchain = "8a20baa40c45dc5055aeb26197c203e576ef389d9acb171bd62da11dc5ad72b2";
    final address = "0x248ea24763f3aeb2590114257b0b95ebc8fc40e287574aa25379bb24c6d661ec";
  
    final wallet = await circular.getWalletNonce(blockchain, address);
}
```

The result of this operation will be a Map.

```json
{
  "Result": 200,
  "Response": {
    "Nonce": 0
  },
  "Node": "8a93c6b6f8d166097ddfeb3e5e3a2998b35e0b6f0bd2e31a8a130a11b6749279"
}
```

If the wallet is not found the result will be:

```json
{
  "Result": 108,
  "Response": "Wallet Not found",
  "Node": "8a93c6b6f8d166097ddfeb3e5e3a2998b35e0b6f0bd2e31a8a130a11b6749279"
}
```

