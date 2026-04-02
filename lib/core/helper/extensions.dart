import 'package:flutter/widgets.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? arguments, required RoutePredicate predicate}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  void pop() => Navigator.of(this).pop();
}

extension StringExtension on String? {
  bool isNullOrEmpty() => this == null || this == "";
}
extension ListExtension on List? {
  bool isNullOrEmpty() => this == null || this!.isEmpty;


}









// import 'package:flutter/material.dart';
//
// extension Navigation on BuildContext {
//   pushNamed(String routeName) {
//     return Navigator.of(this).pushNamed(routeName);
//   }
//
//   pushNamedAndRemoveUntil(String routeName) {
//     return Navigator.of(this).pushNamedAndRemoveUntil(routeName, (_) => false);
//   }
//
//   pop() {
//     return Navigator.of(this).pop();
//   }
// }
