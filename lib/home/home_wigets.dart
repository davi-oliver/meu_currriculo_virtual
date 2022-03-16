import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cvdavioliveira/globals/globals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeWidgets {
  BuildContext context;
  HomeWidgets(this.context);
  Widget myInfos() {
    var _tam = MediaQuery.of(context).size.width;
    return SliverAppBar(
      shadowColor: Colors.green,
      foregroundColor: Colors.blue,
      expandedHeight: 300,
      floating: false,
      pinned: false,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        background: AspectRatio(
          aspectRatio: 1.6,
          child: SizedBox(
            width: _tam,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'assets/fundo.png',
                  fit: BoxFit.cover,
                ),
                Container(
                  color: darkColor.withOpacity(0.67),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .08,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .095,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'assets/perfil.jpg',
                            width: MediaQuery.of(context).size.width * .2,
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .03,
                    ),
                    Text(
                      'Davi Oliveira Teixeira',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    const Text('Flutter Developer',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            height: 1.5)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const TagFlutter(),
                        AnimatedTextKit(
                            repeatForever: true,
                            pause: const Duration(seconds: 3),
                            animatedTexts: [
                              TyperAnimatedText('Aplicativo web e mobile.',
                                  textStyle:
                                      Theme.of(context).textTheme.subtitle1),
                              TyperAnimatedText('100% desenvolvido em FLUTTER',
                                  textStyle:
                                      Theme.of(context).textTheme.subtitle1),
                              TyperAnimatedText('Meu Curriculo Virtual.',
                                  textStyle:
                                      Theme.of(context).textTheme.subtitle1),
                              TyperAnimatedText('Seja Bem Vindo.',
                                  textStyle:
                                      Theme.of(context).textTheme.subtitle1),
                            ]),
                        const TagCloseFlutter(),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        // title: Text(
        //   'title\n Developer',
        //   style: Theme.of(context).textTheme.subtitle2,
        // ),
      ),
    );
  }
}

class TagCloseFlutter extends StatelessWidget {
  const TagCloseFlutter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(text: '<', children: [
        TextSpan(text: '/flutter', style: TextStyle(color: primaryColor)),
        TextSpan(text: '>', style: TextStyle(color: primaryColor))
      ]),
    );
  }
}

class TagFlutter extends StatelessWidget {
  const TagFlutter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(text: '<', children: [
        TextSpan(text: 'flutter', style: TextStyle(color: primaryColor)),
        TextSpan(text: '>', style: TextStyle(color: primaryColor))
      ]),
    );
  }
}
