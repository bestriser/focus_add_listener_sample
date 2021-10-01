import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:focus_add_listener_sample/provider/provider_sample_vm.dart';
import 'package:provider/provider.dart';

class ProviderSamplePage extends StatelessWidget {
  const ProviderSamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Provider Sample')),
      body: ChangeNotifierProvider(
        create: (_) => ProviderSampleVM(),
        child: Consumer<ProviderSampleVM>(
          builder: (context, sampleVM, child) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    focusNode: sampleVM.focus,
                    decoration: InputDecoration(
                      hintText: 'テキスト',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(),
                      ),
                    ),
                  ),
                  Text('${sampleVM.isFocus}')
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
