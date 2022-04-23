import 'package:cvdavioliveira/globals/globals.dart';
import 'package:cvdavioliveira/globals/globals_functions.dart';
import 'package:cvdavioliveira/home/home_screen/home_screen_page.dart';
import 'package:cvdavioliveira/home/store/home_page_store.dart';
import 'package:cvdavioliveira/menu/drawer_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<HomePageStore>(
          create: (_) => HomePageStore(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/HomeScreenPage',
        routes: {
          '/HomeScreenPage': (context) => const HomeScreenPage(),
          '/FirstScreen': (context) => const FirstScreen(),
          '/segunda': (context) => const SecondScreen(),
          '/terceira': (context) => const TerceiraTela(),
        },
        // we are using dark theme and we modify it as our need
        theme: ThemeData.dark().copyWith(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: bgColor,
          canvasColor: bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white)
              .copyWith(
                bodyText1: const TextStyle(color: bodyTextColor),
                bodyText2: const TextStyle(color: bodyTextColor),
              ),
        ),
        // navigatorObservers: [AnalyticsService().getAnalyticsObserver()],
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          // Within the `FirstScreen` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/segunda');
          },
          child: const Text('Launch screen'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          // Within the SecondScreen widget
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pushNamed(context, '/terceira');
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class TerceiraTela extends StatelessWidget {
  const TerceiraTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TerceiraTela Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          // Within the SecondScreen widget
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pushNamed(context, '/FirstScreen');
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
