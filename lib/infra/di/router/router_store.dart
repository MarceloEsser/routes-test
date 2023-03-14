import 'package:flutter/cupertino.dart';

abstract class RouterStore {
  Map<Type, WidgetBuilder> get routes;
}