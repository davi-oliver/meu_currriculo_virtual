import 'package:cvdavioliveira/globals/globals.dart';
import 'package:cvdavioliveira/menu/drawer_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints(maxWidth: maxWidth),
        child: Row(
          children: [
            const Expanded(
              flex: 2,
              child: DrawerScreen(),
            ),
            Expanded(
              flex: 7,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
