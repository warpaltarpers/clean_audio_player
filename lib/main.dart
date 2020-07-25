import 'package:flutter/material.dart';
import 'sound/ui/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      home: MainScreen(),
    ),
  );
}
