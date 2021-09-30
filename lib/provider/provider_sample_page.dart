import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProviderSamplePage extends StatelessWidget {
  const ProviderSamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Provider Sample')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Text('FocusNode.hasFocus')],
        ),
      ),
    );
  }
}
