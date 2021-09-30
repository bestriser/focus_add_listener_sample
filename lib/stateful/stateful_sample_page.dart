import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatefulSamplePage extends StatefulWidget {
  const StatefulSamplePage({Key? key}) : super(key: key);

  @override
  State<StatefulSamplePage> createState() => _StatefulSamplePageState();
}

class _StatefulSamplePageState extends State<StatefulSamplePage> {
  final _focus = FocusNode();
  bool _isFocus = false;

  @override
  void initState() {
    super.initState();
    _focus.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    debugPrint("Focus: " + _focus.hasFocus.toString());
    setState(() {
      _isFocus = _focus.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stateful Sample')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              focusNode: _focus,
              decoration: InputDecoration(
                hintText: 'テキスト',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(),
                ),
              ),
            ),
            Text('$_isFocus')
          ],
        ),
      ),
    );
  }
}
