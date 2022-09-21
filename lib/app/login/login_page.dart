import 'dart:io';

import 'package:components_qt_kit/components_qt_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meu_portifolio/app/controllers/login/login_functions.dart';
import 'package:meu_portifolio/app/tema/TemaMode.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final globalsTheme = Provider.of<TemaMode>(context, listen: true);
    return Scaffold(
      backgroundColor: globalsTheme.globalTheme.backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Platform.isWindows
                ? LoginPageForApplications(
                    heightBotao: MediaQuery.of(context).size.height * .1,
                    widthBotao: MediaQuery.of(context).size.width * .5,
                  )
                : Platform.isAndroid || Platform.isIOS
                    ? LoginPageForApplications(
                        heightBotao: MediaQuery.of(context).size.height * .1,
                        widthBotao: MediaQuery.of(context).size.width * .85,
                        heightPerfil: MediaQuery.of(context).size.height * .07,
                        widthPerfil: MediaQuery.of(context).size.width * .145,
                      )
                    : Container(),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/lockup_built-w-flutter.png',
                      height: MediaQuery.of(context).size.height * .08,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Titulo extends StatelessWidget {
  String? titulo;
  Titulo(this.titulo, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final globalsThemeVarT = Provider.of<TemaMode>(context, listen: true);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        titulo!,
        style: TextStyle(
            color: globalsThemeVarT.globalTheme.textForte,
            fontSize: 30,
            fontWeight: FontWeight.w300),
      ),
    );
  }
}

// ignore: must_be_immutable
class LoginPageForApplications extends StatelessWidget {
  // criar variaveis para aceitar tamanhos para os respectivos layouts
  double? heightBotao;
  double? widthBotao;
  double? widthPerfil;
  double? heightPerfil;

  LoginPageForApplications(
      {this.heightBotao,
      this.widthBotao,
      this.heightPerfil,
      this.widthPerfil,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final globalsTheme = Provider.of<TemaMode>(context, listen: true);

    return StatefulBuilder(builder: (context, StateSetter setState) {
      return Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: IconButton(
                    onPressed: () {
                      if (globalsTheme.currentTeme == ThemeMode.dark) {
                        setState(() {
                          globalsTheme.currentTeme = ThemeMode.light;
                          globalsTheme.setTema();
                        });
                      } else {
                        setState(() {
                          globalsTheme.currentTeme = ThemeMode.dark;
                          globalsTheme.setTema();
                        });
                      }
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) => LoginPage()));
                    },
                    icon: globalsTheme.currentTeme == ThemeMode.dark
                        ? Icon(FontAwesomeIcons.solidMoon)
                        : Icon(
                            FontAwesomeIcons.solidSun,
                            color: globalsTheme.globalTheme.textForte,
                          )),
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/perfil.jpg',
                      width: widthPerfil,
                      height: heightPerfil,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .15,
                ),
                Titulo(
                  'Faça sua Autenticação',
                ),
                Botoes(
                  FontAwesomeIcons.google,
                  "Continuar com o Google",
                  globalsTheme.globalTheme.colorIconGoogle,
                  globalsTheme.globalTheme.textMedio,
                  () async {
                    await GoogleSingIn().singIn();
                  },
                  heightBotao!,
                  widthBotao!,
                ),
                // Botoes(
                //     FontAwesomeIcons.facebook,
                //     "Continuar com o facebook",
                //     globalsTheme.globalTheme.colorIconFace,
                // globalsTheme.globalTheme.textMedio),
                Botoes(
                  FontAwesomeIcons.invision,
                  "Continuar em modo visitante",
                  globalsTheme.globalTheme.colorIcon,
                  globalsTheme.globalTheme.textMedio,
                  () {},
                  heightBotao!,
                  widthBotao!,
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}

class Botoes extends StatelessWidget {
  String? titulo;
  IconData? icon;
  var colorIcon;
  var colorText;
  void Function()? ontap;
  double width;
  double height;
  Botoes(this.icon, this.titulo, this.colorIcon, this.colorText, this.ontap,
      this.height, this.width);

  @override
  Widget build(BuildContext context) {
    final globalsThemeVarT = Provider.of<TemaMode>(context, listen: true);
    final globalsThemeVar = Provider.of<TemaMode>(context, listen: false);
    final size = MediaQuery.of(context).size;

    return StatefulBuilder(builder: (context, StateSetter setState) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: KitButton(
          width: width,
          height: height,
          onTap: ontap!,
          iconPrefix: Icon(
            icon!,
            color: colorIcon,
            size: 20,
          ),
          widgetCenter: Text(titulo!, style: TextStyle(color: colorText)),
          decorationButton: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: globalsThemeVarT.globalTheme.colorButtons,
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(29, 0, 0, 0),
                    blurRadius: 5.0,
                    spreadRadius: .5,
                    offset: Offset(
                      1.5,
                      1.0,
                    )),
              ]),
        ),
      );
    });
  }
}
