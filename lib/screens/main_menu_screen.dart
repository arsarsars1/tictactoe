import 'package:flutter/material.dart';
import 'package:tictactoe/export.dart';

class MainMenuScreen extends StatefulWidget {
  static String routeName = "/main-menu";
  const MainMenuScreen({Key? key}) : super(key: key);

  @override
  State<MainMenuScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveCustom(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomButton(
              onPressed: () {
                NavigationService.pushAndRemoveNamedRoute(
                    CreateRoomScreen.routeName);
              },
              text: "Create Room",
            ),
            const SizedBox(height: 20),
            CustomButton(
              onPressed: () {
                NavigationService.pushAndRemoveNamedRoute(
                    JoinRoomScreen.routeName);
              },
              text: "Join Room",
            ),
          ],
        ),
      ),
    );
  }
}
