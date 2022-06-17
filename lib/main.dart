import 'package:tresastronautas/ui/pages/islands/islands.dart';
import 'package:tresastronautas/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/isalnd_provider.dart';
import 'providers/main_provider.dart';
import 'providers/restaurants_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainProvider()),
        ChangeNotifierProvider(create: (_) => IslandProvider()),
        ChangeNotifierProvider(create: (_) => RestaurantsProvider.instance()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Tres Astronautas",
        routes: Routes.routes,
        themeMode: ThemeMode.system,
        home: const Islands(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
