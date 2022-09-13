import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:meu_portifolio/app/login/login_page.dart';
import 'package:meu_portifolio/app/tema/TemaMode.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<TemaMode>(create: (_) => TemaMode()),
      ],
      child: const MaterialApp(
        supportedLocales: [Locale('pt', 'BR')],
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
      ),
    );
  }
}
