// Topic, People, publications 의 아이템
class ModelList {
  String _category;
  String _title;
  bool _checked = false;

  ModelList(this._category, this._title);
  ModelList.all(this._category, this._title, this._checked);

  bool get checked => _checked;
  String get title => _title;
  String get category => _category;

  set checked(bool value) {
    _checked = value;
  }
}



