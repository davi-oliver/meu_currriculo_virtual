import 'package:mobx/mobx.dart';
import 'package:mobx/mobx.dart';
part 'home_page_store.g.dart';

class HomePageStore = _HomePageStoreBase with _$HomePageStore;

abstract class _HomePageStoreBase with Store {
  @observable
  bool visibilityProcon = false;
  @action
  void changeVisibilityProcon(_value) => visibilityProcon = _value;

  @observable
  bool visibilityPrefeitura = false;
  @action
  void changeVisibilityPrefeitura(_value) => visibilityPrefeitura = _value;
}
