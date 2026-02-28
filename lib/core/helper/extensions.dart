import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  pushNamed(String routeName) {
    return Navigator.of(this).pushNamed(routeName);
  }

  pushNamedAndRemoveUntil(String routeName) {
    return Navigator.of(this).pushNamedAndRemoveUntil(routeName, (_) => false);
  }

  pop() {
    return Navigator.of(this).pop();
  }
}
