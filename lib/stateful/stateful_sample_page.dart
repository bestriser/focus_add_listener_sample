import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatefulSamplePage extends StatefulWidget {
  const StatefulSamplePage({Key? key}) : super(key: key);

  @override
  State<StatefulSamplePage> createState() => _StatefulSamplePageState();
}

class _StatefulSamplePageState extends State<StatefulSamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stateful Sample')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Text('FocusNode.hasFocus')],
        ),
      ),
    );
  }
}
