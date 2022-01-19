import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier {
  bool isLoading = false;
  HomeProvider() {
    isLoading = false;
  }

  onFineshedValue() {
    isLoading = true;
    notifyListeners();
  }
}
