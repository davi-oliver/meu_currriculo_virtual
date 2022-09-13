import 'package:flutter/material.dart';
import 'package:meu_portifolio/app/tema/temaDark.dart';
import 'package:meu_portifolio/app/tema/temaGlobal.dart';
import 'package:meu_portifolio/app/tema/temaLight.dart';

// minha classe provider
class TemaMode {
  late GlobalTheme globalTheme = TemaLigth();

  ThemeMode currentTeme = ThemeMode.light;

  void setTema([ThemeMode? theme]) {
    currentTeme = theme ?? ThemeMode.light;
    globalTheme = currentTeme == ThemeMode.light ? TemaDark() : TemaLigth();
  }
}
