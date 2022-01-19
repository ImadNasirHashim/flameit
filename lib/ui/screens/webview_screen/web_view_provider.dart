import 'package:flutter/cupertino.dart';

class WebViewProvider extends ChangeNotifier {
  bool isLoading = false;
  WebViewProvider() {
    isLoading = false;
  }

  onFineshedValue() {
    isLoading = true;
    notifyListeners();
  }
}
