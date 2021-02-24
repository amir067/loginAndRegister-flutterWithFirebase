import 'package:flutter/material.dart';

class ModalHUD extends ChangeNotifier
{
  bool isloading = false;
  changeIsLoading(bool value)
  {
    isloading = value;
    notifyListeners();

  }
}