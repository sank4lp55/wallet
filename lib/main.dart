import 'package:flutter/material.dart';
import 'package:wallet/wallet_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wallet mod',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WalletView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
