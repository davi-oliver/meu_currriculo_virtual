import 'package:components_qt_kit/components_qt_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meu_portifolio/app/tema/TemaMode.dart';
import 'package:meu_portifolio/app/tema/temaGlobal.dart';
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
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          curve: Curves.easeIn,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Titulo('Faça o Login'),
              Botoes(
                  FontAwesomeIcons.google,
                  "Continuar com o Google",
                  globalsTheme.globalTheme.colorIconGoogle,
                  globalsTheme.globalTheme.textMedio),
              Botoes(
                  FontAwesomeIcons.facebook,
                  "Continuar com o facebook",
                  globalsTheme.globalTheme.colorIconFace,
                  globalsTheme.globalTheme.textMedio),
              Botoes(
                  FontAwesomeIcons.invision,
                  "Continuar em modo visitante",
                  globalsTheme.globalTheme.colorIcon,
                  globalsTheme.globalTheme.textMedio),
            ],
          ),
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        this.titulo!,
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }
}

class Botoes extends StatelessWidget {
  String? titulo;
  IconData? icon;
  var colorIcon;
  var colorText;

  Botoes(this.icon, this.titulo, this.colorIcon, this.colorText);

  @override
  Widget build(BuildContext context) {
    final globalsThemeVarT = Provider.of<TemaMode>(context, listen: true);
    final globalsThemeVar = Provider.of<TemaMode>(context, listen: false);
    final size = MediaQuery.of(context).size;

    return StatefulBuilder(builder: (context, StateSetter setState) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: KitButton(
          width: size.width * .8,
          height: size.height * .1,
          onTap: () {
            setState(() {
              globalsThemeVar.setTema(ThemeMode.light);
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => LoginPage()));
            });
          },
          iconPrefix: Icon(
            this.icon!,
            color: colorIcon,
            size: 14,
          ),
          widgetCenter: Text(this.titulo!, style: TextStyle(color: colorText)),
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
