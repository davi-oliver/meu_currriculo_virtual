import 'package:cvdavioliveira/globals/globals.dart';
import 'package:cvdavioliveira/home/home_wigets.dart';
import 'package:cvdavioliveira/menu/drawer_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollViewController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerScreen(),
        body: NestedScrollView(
          controller: _scrollViewController,
          key: UniqueKey(),
          headerSliverBuilder: (_, bool innerBoxIsScrolled) {
            return <Widget>[
              HomeWidgets(context).myInfos(),
            ];
          },
          body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 1),
            // constraints: const BoxConstraints(maxWidth: maxWidth),
            decoration: const BoxDecoration(
                boxShadow: [kDefaultShadow],
                color: darkColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(1),
                    topRight: Radius.circular(50))),
            // child: Row(
            //   children: const [
            //     Expanded(
            //       flex: 2,
            //       child: DrawerScreen(),
            //     ),
            //   ],
            // ),
          ),
        ));
  }
}
