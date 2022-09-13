// import 'package:components_qt_kit/widgets/ui_kits/kit_buttons.dart';

// import 'package:flutter/material.dart';
// import 'package:meu_portifolio/app/home/home_wigets.dart';
// import 'package:provider/provider.dart';

// class HomeScreenPage extends StatefulWidget {
//   const HomeScreenPage({Key? key}) : super(key: key);

//   @override
//   State<HomeScreenPage> createState() => _HomeScreenPageState();
// }

// class _HomeScreenPageState extends State<HomeScreenPage> {
//   ScrollController _scrollViewController = ScrollController();
//   double xOffset = 0;
//   double yOffset = 0;

//   double scaleFactor = 1;
//   bool isDrawerOpen = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Stack(
//       children: [
//         NestedScrollView(
//           controller: _scrollViewController,
//           key: UniqueKey(),
//           headerSliverBuilder: (_, bool innerBoxIsScrolled) {
//             return <Widget>[
//               HomeWidgets(context).myInfos(),
//               // APP BAR
//             ];
//           },
//           body: HomeWidgets(context).corpoHome(),
//         ),
//         botaoMenuDrawer(),
//       ],
//     ));
//   }

//   Widget botaoMenuDrawer() {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           isDrawerOpen
//               ? KitButton(
//                   width: MediaQuery.of(context).size.width * .158,
//                   height: MediaQuery.of(context).size.height * .072,
//                   decorationButton: BoxDecoration(
//                       color: darkColor.withOpacity(0.4),
//                       // ignore: prefer_const_literals_to_create_immutables
//                       boxShadow: [kDefaultShadow],
//                       borderRadius: BorderRadius.all(Radius.circular(50))),
//                   onTap: () {
//                     setState(() {
//                       xOffset = 0;
//                       yOffset = 0;
//                       scaleFactor = 1;
//                       isDrawerOpen = false;
//                     });
//                   },
//                   widgetCenter: Container(),
//                   iconPrefix: const Icon(
//                     Icons.arrow_back_ios,
//                     color: Colors.white,
//                   ),
//                 )
//               : KitButton(
//                   width: MediaQuery.of(context).size.width * .158,
//                   height: MediaQuery.of(context).size.height * .072,
//                   decorationButton: const BoxDecoration(
//                     color: darkColor,
//                     boxShadow: [kDefaultShadow],
//                     borderRadius: BorderRadius.all(Radius.circular(50)),
//                   ),
//                   onTap: () {
//                     setState(() {
//                       xOffset = 200;
//                       yOffset = 180;

//                       scaleFactor = 0.7;
//                       isDrawerOpen = true;
//                     });
//                   },
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   spaceItens: 30,
//                   iconSufix: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(50),
//                           color: Colors.white,
//                         ),
//                         width: 25,
//                         height: 3,
//                       ),
//                       SizedBox(
//                         height: 5,
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(50),
//                           color: Colors.white,
//                         ),
//                         width: 15,
//                         height: 3,
//                       ),
//                     ],
//                   ),
//                   widgetCenter: Container(
//                     height: 5,
//                   ),
//                   containColumn: true,
//                 ),
//         ],
//       ),
//     );
//   }
// }
