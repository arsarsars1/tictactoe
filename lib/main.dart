import 'package:flutter/material.dart';
import 'package:tictactoe/export.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigationService.navigatorKey,
      title: 'Tic Tac Toe',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: CustomColor.bgColor),
      routes: {
        MainMenuScreen.routeName: (context) => const MainMenuScreen(),
        JoinRoomScreen.routeName: (context) => const JoinRoomScreen(),
        CreateRoomScreen.routeName: (context) => const CreateRoomScreen(),
      },
      initialRoute: MainMenuScreen.routeName,
    );
  }
}
