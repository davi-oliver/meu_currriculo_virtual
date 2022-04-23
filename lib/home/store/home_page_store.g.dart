// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomePageStore on _HomePageStoreBase, Store {
  late final _$visibilityProconAtom =
      Atom(name: '_HomePageStoreBase.visibilityProcon', context: context);

  @override
  bool get visibilityProcon {
    _$visibilityProconAtom.reportRead();
    return super.visibilityProcon;
  }

  @override
  set visibilityProcon(bool value) {
    _$visibilityProconAtom.reportWrite(value, super.visibilityProcon, () {
      super.visibilityProcon = value;
    });
  }

  late final _$visibilityPrefeituraAtom =
      Atom(name: '_HomePageStoreBase.visibilityPrefeitura', context: context);

  @override
  bool get visibilityPrefeitura {
    _$visibilityPrefeituraAtom.reportRead();
    return super.visibilityPrefeitura;
  }

  @override
  set visibilityPrefeitura(bool value) {
    _$visibilityPrefeituraAtom.reportWrite(value, super.visibilityPrefeitura,
        () {
      super.visibilityPrefeitura = value;
    });
  }

  late final _$_HomePageStoreBaseActionController =
      ActionController(name: '_HomePageStoreBase', context: context);

  @override
  void changeVisibilityProcon(dynamic _value) {
    final _$actionInfo = _$_HomePageStoreBaseActionController.startAction(
        name: '_HomePageStoreBase.changeVisibilityProcon');
    try {
      return super.changeVisibilityProcon(_value);
    } finally {
      _$_HomePageStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeVisibilityPrefeitura(dynamic _value) {
    final _$actionInfo = _$_HomePageStoreBaseActionController.startAction(
        name: '_HomePageStoreBase.changeVisibilityPrefeitura');
    try {
      return super.changeVisibilityPrefeitura(_value);
    } finally {
      _$_HomePageStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
visibilityProcon: ${visibilityProcon},
visibilityPrefeitura: ${visibilityPrefeitura}
    ''';
  }
}
