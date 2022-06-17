import 'package:flutter/material.dart';
import '../ui/pages/islands/islands.dart';
import '../ui/pages/nasa/nasa_home.dart';

class Routes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    NasaHome.route: (BuildContext context) => const NasaHome(),
    Islands.route: (BuildContext context) => const Islands(),
  };
}
