import 'package:flutter/cupertino.dart';

class ProviderSampleVM extends ChangeNotifier {
  ProviderSampleVM() {
    init();
  }

  final _focus = FocusNode();
  FocusNode get focus => _focus;

  bool _isFocus = false;
  bool get isFocus => _isFocus;

  void init() {
    _focus.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    debugPrint("Focus: " + _focus.hasFocus.toString());
    _isFocus = _focus.hasFocus;
    notifyListeners();
  }
}
