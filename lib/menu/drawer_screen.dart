import 'package:components_qt_kit/widgets/ui_kits/kit_buttons.dart';
import 'package:cvdavioliveira/globals/globals.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.only(top: 70, bottom: 30, left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: botoesDrawer('Botaoq1', Icons.ac_unit_sharp),
          ),
        ],
      ),
    );
    /*Container(
      color: darkColor,
      width: MediaQuery.of(context).size.width * .5,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Expanded(
              child: SingleChildScrollView(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: const [
                MyAdress(
                  title: 'Cidade',
                  text: 'Itajubá',
                ),
                SizedBox(
                  height: 5,
                ),
                MyAdress(
                  title: 'Universidade',
                  text: 'UNIFEI',
                ),
                SizedBox(
                  height: 5,
                ),
                MyAdress(
                  title: 'Idade',
                  text: '21 anos',
                ),
                Divider(),
                MySkills(),
                Coding(),
              ],
            ),
          ))
        ],
      ),
    );*/
  }

  Widget botoesDrawer(
    String titulo,
    icone,
  ) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
          child: KitButton(
            onTap: () {},
            paddingButton: EdgeInsets.only(right: 100),
            marginButton: EdgeInsets.only(right: 40, bottom: 3),
            height: size.height * .069,
            decorationButton: BoxDecoration(color: darkColor),
            widgetCenter: Text(
              '$titulo',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold),
            ),
            iconPrefix: Icon(icone),
            spaceItens: 20,
            mainAxisAlignment: MainAxisAlignment.start,
          ),
        ),
      ],
    );
  }
}

List<CodingAnimated> listCodingAnimated = const [
  CodingAnimated(
    percentage: 0.95,
    title: 'Dart',
  ),
  CodingAnimated(
    percentage: 0.8,
    title: 'Node',
  ),
  CodingAnimated(
    percentage: 0.68,
    title: 'HTML',
  ),
  CodingAnimated(
    percentage: 0.45,
    title: 'CSS',
  ),
  CodingAnimated(
    percentage: 1.0,
    title: 'Beleza',
  ),
];

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Text(
            'Código',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: listCodingAnimated.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) {
            var item = listCodingAnimated[index];
            return CodingAnimated(
                title: item.title, percentage: item.percentage);
          },
        )
      ],
    );
  }
}

class CodingAnimated extends StatelessWidget {
  const CodingAnimated({
    Key? key,
    required this.title,
    required this.percentage,
  }) : super(key: key);

  final String? title;
  final double? percentage;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: defaultDuration,
        builder: (context, double value, child) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title!,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text((value * 100).toInt().toString() + "%"),
                  ],
                ),
                LinearProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
              ],
            ));
  }
}

class MySkills extends StatelessWidget {
  const MySkills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Text(
            'Habilidades',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: const [
            Expanded(
              child: PercentAnimated(
                label: 'Flutter',
                percentage: 0.8,
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: PercentAnimated(
                label: 'Node',
                percentage: 0.72,
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: PercentAnimated(
                label: 'Firebase',
                percentage: .65,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PercentAnimated extends StatelessWidget {
  const PercentAnimated({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);
  final double? percentage;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
                Center(
                  child: Text((value * 100).toInt().toString() + '%',
                      style: Theme.of(context).textTheme.subtitle1),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        Text(
          label!,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ],
    );
  }
}

class MyAdress extends StatelessWidget {
  const MyAdress({Key? key, this.text, this.title}) : super(key: key);
  final String? title, text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: const TextStyle(color: Colors.white),
          ),
          const Spacer(),
          Flexible(
            child: Text(
              text!,
            ),
          ),
        ],
      ),
    );
  }
}
