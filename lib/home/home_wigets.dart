import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:components_qt_kit/widgets/ui_kits/kit_buttons.dart';
import 'package:cvdavioliveira/home/store/home_page_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:cvdavioliveira/globals/globals.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class HomeWidgets {
  BuildContext context;
  HomeWidgets(this.context);
  List<String> projectsListProcon = [
    // 'https://play-lh.googleusercontent.com/RDjq7mf3NkG2NI5Y4WsCFnxYO4YzWBkjWklNtXBk3CN2G7HpULC_3hKytmrFmJ3xU04=w720-h310-rw',
    'https://play-lh.googleusercontent.com/LFnJfbXmrgJzxh9we78ZGrR2-AE2y_UyLX4doEPzWcCCx94GbUGNLM0gcXZLuloVkg=w1366-h667-rw',
    'https://play-lh.googleusercontent.com/CGNWaoHQCR2IuREsp7X50oun-ijkU4sCHp7VaK0pGaKsxgI2bGS_4axtmQeBzoRmLDee=w1366-h667-rw',
    'https://play-lh.googleusercontent.com/K-qDizNrBHL7qq581nVGFgryQ_3xbEdiMjvxCxuoGYgozMYgqOShYLs6uFiopHVFLGg=w720-h310-rw',
    'https://play-lh.googleusercontent.com/sDgJ4cbKC_Od8cG5bqA2JegnbfnC6nSHs4c5NjQYT7Kx6wNjQmLt_NKh3dFsIDL72PY=w720-h310-rw',
  ];

  List<String> projectsListPrefeitura = [
    'assets/img1.jpeg',
    'assets/img2.jpeg',
    'assets/img3.jpeg',
    'assets/img4.jpeg',
    'assets/img5.jpeg',
  ];
  Widget corpoHome() {
    final homePageStore = Provider.of<HomePageStore>(context, listen: false);
    return Container(

        // constraints: const BoxConstraints(maxWidth: maxWidth),
        decoration: const BoxDecoration(
          boxShadow: [kDefaultShadow],
          color: darkColor,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // KitButton(
              //   onTap: () async {
              //     // FirebaseAnalytics analytics = FirebaseAnalytics.instance;
              //     // await analytics.logScreenView(screenClass: 'HomeWidgets');
              //   },
              // ),
              SizedBox(
                height: 30,
              ),
              const MyTopics(
                description:
                    'Olá, Bem Vindo ao meu Portifólio Web/Mobile. Meu nome é Davi Oliveira Teixeira. Sou Desenvolvedor de aplicações em Flutter.\nFalando um pouco sobre mim, em 2017 completei o ensino médio juntamente com o ensino técnico de Informatica para Internet, onde aprendi algumas linguens de programação, como php, java, python, por exemplo. Aos 18 anos de idade me alistei para as forças armadas do Brasil(Exército Brasileiro) e fiquei até meu estado probatório em 2019. No ano de 2020 me ingressei no ensino superior na Universidade Federal de Itajubá(UNIFEI) no curso de Sistemas de Informação, onde estou cursando. Neste mesmo ano consegui uma vaga de estágio da Prefeitura de Itajubá MG, não obrigatorio, para desenvolvimento de aplicativos mobile, em Flutter. Desde então estou estudando e aplicando meus conhecimentos junto com a equipe de desenvolvimento deste Framework, em aplicações que ja estão em produção.\n Capacidades: Trabalhar com metodologias ágeis, Publicar aplicativos na PlayStore e AppleStore, Desenvolver componentes(plugins), Trabalhar com APIs\n ',
                title: 'Sobre mim',
              ),
              const MyTopics(
                title: 'Meus Projetos',
                description:
                    'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',
              ),
              // Projetos em que ja trabalhei e implementei
              // Botar tipo o slider de tutorial procon
              // botar a descrição do projeto e qual sua funcionalidade
              _projectProcon(),
              const SizedBox(
                height: 30,
              ),
              _projectPrefeitura(),
            ],
          ),
        ));
    /*options: CarouselOptions(
      height: 400,
      aspectRatio: 16/9,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      onPageChanged: callbackFunction,
      scrollDirection: Axis.horizontal,
   )*/
  }

  Widget _projectProcon() {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: darkColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Procon Itajubá',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(width: MediaQuery.of(context).size.width * .03),
              Icon(FontAwesomeIcons.circleQuestion, size: 20),
            ],
          ),
          CarouselSlider(
              items: projectsListProcon
                  .map(
                    (item) => Container(
                      margin: const EdgeInsets.all(5.0),
                      child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5.0)),
                          child: Stack(
                            children: <Widget>[
                              Image.network(
                                item,
                                fit: BoxFit.fill,
                                width: MediaQuery.of(context).size.width * .6,
                              ),
                              Positioned(
                                bottom: 0.0,
                                left: 0.0,
                                right: 0.0,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(200, 0, 0, 0),
                                        Color.fromARGB(0, 0, 0, 0)
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                    ),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 20.0),
                                  child: const Text(
                                    'Procon Imagens',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * .5,
                aspectRatio: 16 / 9,
                viewportFraction: 0.6,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 4),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                // onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              )),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Confira já: ',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                FontAwesomeIcons.googlePlay,
                color: Colors.white70,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                FontAwesomeIcons.appStoreIos,
                color: Colors.white70,
              ),
            ],
          ),
        ],
      ),
    );
  }
  // Icon(FontAwesomeIcons.googlePlay),

  Widget _projectPrefeitura() {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: darkColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Itajubá Digital',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(width: MediaQuery.of(context).size.width * .03),
              const Icon(FontAwesomeIcons.circleQuestion, size: 20),
            ],
          ),
          CarouselSlider(
              items: projectsListPrefeitura
                  .map(
                    (item) => Container(
                      margin: const EdgeInsets.all(5.0),
                      child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5.0)),
                          child: Stack(
                            children: <Widget>[
                              Image.asset(
                                item,
                                fit: BoxFit.fill,
                                width: MediaQuery.of(context).size.width * .3,
                                height: MediaQuery.of(context).size.height * .5,
                              ),
                              Positioned(
                                bottom: 0.0,
                                left: 0.0,
                                right: 0.0,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(200, 0, 0, 0),
                                        Color.fromARGB(0, 0, 0, 0)
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                    ),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 20.0),
                                  child: const Text(
                                    'Itajubá Digital',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * .4,

                aspectRatio: 18 / 6,
                viewportFraction: 0.41,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                autoPlayAnimationDuration: Duration(milliseconds: 900),
                autoPlayCurve: Curves.easeInQuint,
                enlargeCenterPage: true,
                // onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              )),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Confira já: ',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                FontAwesomeIcons.googlePlay,
                color: Colors.white70,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                FontAwesomeIcons.appStoreIos,
                color: Colors.white70,
              ),
            ],
          ),
        ],
      ),
    );
  }

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

class MyTopics extends StatelessWidget {
  final String? title;
  final String? description;

  const MyTopics({
    this.title = '',
    this.description = '',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                this.title!,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [darkColor, Color.fromARGB(200, 0, 0, 0), darkColor],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        this.description!,
                        style: Theme.of(context).textTheme.overline,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
