/*
* Interests에 들어가는 데이터 생성.
 */
import 'package:first_ui/model/model_list.dart';
import 'package:flutter/material.dart';

class InterestsProvider with ChangeNotifier {
  List<ModelList> _topicLists = [];
  List<ModelList> _peopleLists= [];
  List<ModelList> _publicationsList= [];
  bool _readData = false;


  bool get readData => _readData;
  List<ModelList> get topicLists => _topicLists;
  List<ModelList> get peopleLists => _peopleLists;
  List<ModelList> get publicationsList => _publicationsList;

  void fetchData(names) {
    _topicLists = makeTopics();
    _peopleLists = makePeople(names);
    _publicationsList = makePublications();

    _readData = true;
    notifyListeners();
  }

  List<ModelList> makeTopics() {
    List<ModelList> _lists = [];

    // topic 리스트 목록 아이템 만들기
    _lists.add(ModelList('Android', 'Jatpack Compose'));
    _lists.add(ModelList('Android', 'Kotlin'));
    _lists.add(ModelList('Android', 'Jetpack'));
    _lists.add(ModelList('Programming', 'kotlin'));
    _lists.add(ModelList('Programming', 'Declarative Uls'));
    _lists.add(ModelList('Programming', 'Java'));
    _lists.add(ModelList('Technology', 'Pixel'));
    _lists.add(ModelList('Technology', 'Pixel'));
    _lists.add(ModelList('Technology', 'Pixel'));
    _lists.add(ModelList('Technology', 'Pixel'));

    return _lists;
  }

  // people 리스트 목록 아이템 만들기
  List<ModelList> makePeople(List<String> names) {
    List<ModelList> _lists = [];

    // for(String name in names) {
    //   ModelList _list = ModelList('people', _title)
    //   _lists.add();
    // }
    names.map((e) => _lists.add(ModelList('People', e))).toList();

    return _lists;
  }
  // publication 리스트 목록 아이템 만들기
  List<ModelList> makePublications() {
    List<ModelList> _lists = [];
    _lists.add(ModelList('publications', 'Kotlin Vibe'));
    _lists.add(ModelList('publications', 'Compose Mix'));
    _lists.add(ModelList('publications', 'Compose BreakDown'));
    _lists.add(ModelList('publications', 'Android Pursue'));
    _lists.add(ModelList('publications', 'Kotlin Watchman'));
    _lists.add(ModelList('publications', 'Jetpack ark'));
    _lists.add(ModelList('publications', 'Compose Mix'));
    _lists.add(ModelList('publications', 'Compose Mix'));
    _lists.add(ModelList('publications', 'Compose Mix'));
    _lists.add(ModelList('publications', 'Compose Mix'));
    _lists.add(ModelList('publications', 'Compose Mix'));

    return _lists;
  }

}