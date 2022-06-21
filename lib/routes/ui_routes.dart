import 'package:flutter/material.dart';

class UIRoutes {
  static final UIRoutes _instance = UIRoutes._init();
  static UIRoutes get instance => _instance;
  UIRoutes._init();
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;

    switch (s.name) {
    }
  }
}
