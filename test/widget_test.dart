// This is a basic Flutter widget test.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:tic_tac_toe/main.dart';

void main() {
// test the reset button
// should clear the board and set it to all 0
  testWidgets('Reset button', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const Tictactoe());

    expect(find.text('X'), findsNothing); // check that the X's aren't displayed
    expect(find.text('O'), findsNothing); // check that the O's aren't displayed

    // Tap the reset button
    await tester.tap(find.byKey(const Key('resetButton')));
    await tester.pump();

    expect(find.text('X'), findsNothing); // check that the X's aren't displayed
    expect(find.text('O'), findsNothing); // check that the O's aren't displayed

    // Tap the reset button
    await tester.tap(find.byKey(const Key('resetButton')));
    await tester.pump();

    expect(find.text('X'), findsNothing); // check that the X's aren't displayed
    expect(find.text('O'), findsNothing); // check that the O's aren't displayed

    // Tap the reset button
    await tester.tap(find.byKey(const Key('resetButton')));
    await tester.pump();

    expect(find.text('X'), findsNothing); // check that the X's aren't displayed
    expect(find.text('O'), findsNothing); // check that the O's aren't displayed

    // Tap the reset button
    await tester.tap(find.byKey(const Key('resetButton')));
    await tester.pump();

    expect(find.text('X'), findsNothing); // check that the X's aren't displayed
    expect(find.text('O'), findsNothing); // check that the O's aren't displayed
  });

// test the game board
// should display X's and O's
  testWidgets('Game board', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const Tictactoe());

    expect(find.text('X'), findsNothing); // check that the X's aren't displayed
    expect(find.text('O'), findsNothing); // check that the O's aren't displayed

    // Tap the reset button
    await tester.tap(find.byKey(const Key('resetButton')));
    await tester.pump();

    // Tap the game board
    await tester.tap(find.byKey(const Key('gameBoard')));
    await tester.pump();

    expect(find.text('X'), findsOneWidget); // check that the X's are displayed
    expect(find.text('O'), findsNothing); // check that the O's aren't displayed

    // Tap the game board
    await tester.tap(find.byKey(const Key('gameBoard')));
    await tester.pump();

    expect(find.text('X'), findsOneWidget); // check that the X's are displayed
    expect(find.text('O'), findsOneWidget); // check that the O's are displayed

    // Tap the game board
    await tester.tap(find.byKey(const Key('gameBoard')));
    await tester.pump();

    expect(find.text('X'), findsOneWidget); // check that the X's are displayed
    expect(find.text('O'), findsOneWidget); // check that the O's are displayed
  });
}
