import 'package:clean_soundboard/sound/ui/sound_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:clean_soundboard/sound/ui/sound_widget.dart';

void main() {
  final testWidget = MaterialApp(
    home: SoundWidget(),
  );

  // Checks if three main Widgets build into screen correctly
  testWidgets('Screen builds', (WidgetTester tester) async {
    await tester.pumpWidget(testWidget);
    await tester.pump(Duration(milliseconds: 200));
    
    expect(find.byType(AppBar), findsOneWidget);
    expect(find.byType(TextFieldListTile), findsOneWidget);
    expect(find.byIcon(Icons.play_arrow), findsOneWidget);
  });
  
  // Checks if AppBar builds correctly
  testWidgets('AppBar text found', (WidgetTester tester) async {
    await tester.pumpWidget(testWidget);
    await tester.pump(Duration(milliseconds: 200));
    
    expect(find.widgetWithText(AppBar, 'Sample clean_framework App'), findsOneWidget);
  });
  
  // Alternate group implementation of above tests
  group('GROUP: Screen builds', () {
    testWidgets('AppBar', (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      await tester.pump(Duration(milliseconds: 200));
      
      expect(find.byType(AppBar), findsOneWidget);
    });
    
    testWidgets('AppBar text', (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      await tester.pump(Duration(milliseconds: 200));
      
      expect(find.widgetWithText(AppBar, 'Sample clean_framework App'), findsOneWidget);
    });
    
    testWidgets('TFLT', (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      await tester.pump(Duration(milliseconds: 200));
      
      expect(find.byType(TextFieldListTile), findsOneWidget);
    });
    
    testWidgets('Submit button', (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      await tester.pump(Duration(milliseconds: 200));
      
      expect(find.byIcon(Icons.play_arrow), findsOneWidget);
    });
  });
}