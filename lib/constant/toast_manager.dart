import 'package:flutter/material.dart';

class ToastManager {
  static todaysSnackbar(context, String message) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Added Successfully!!")));
  }
}

class FailedToastManager {
  static todaysSnackbar(context, String message) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Error")));
  }
}

class MenuItems {
  final String ktitle;
  final IconData kicons;

  const MenuItems({required this.ktitle, required this.kicons});
}
