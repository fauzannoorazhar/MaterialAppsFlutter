import 'package:flutter/material.dart';
import 'package:material_flutter/ui/views/home_page/home.dart';

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Material Flutter',
            theme: ThemeData(
                primarySwatch: Colors.indigo,
                visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: Home(),
        );
    }
}