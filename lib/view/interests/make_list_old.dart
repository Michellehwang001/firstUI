import '../../model/model_list.dart';

class MakeList {
  List<ModelList> topicLists = [];
  
  List<ModelList> makeTopics() {
    // topic 리스트 목록 아이템 만들기
    topicLists.add(ModelList('Android', 'Jatpack Compose'));
    topicLists.add(ModelList('Android', 'Kotlin'));
    topicLists.add(ModelList('Android', 'Jetpack'));
    topicLists.add(ModelList('Programming', 'kotlin'));
    topicLists.add(ModelList('Programming', 'Declarative Uls'));
    topicLists.add(ModelList('Programming', 'Java'));
    topicLists.add(ModelList('Technology', 'Pixel'));
    topicLists.add(ModelList('Technology', 'Pixel'));
    topicLists.add(ModelList('Technology', 'Pixel'));
    topicLists.add(ModelList('Technology', 'Pixel'));

    return topicLists;
  }

  // people 리스트 목록 아이템 만들기
  List<ModelList> makePeople() {
    topicLists.add(ModelList('people', 'Pixel'));
    return topicLists;
  }
  // publication 리스트 목록 아이템 만들기
  List<ModelList> makePublications() {
    topicLists.add(ModelList('publications', 'Kotlin Vibe'));
    topicLists.add(ModelList('publications', 'Compose Mix'));
    topicLists.add(ModelList('publications', 'Compose BreakDown'));
    topicLists.add(ModelList('publications', 'Android Pursue'));
    topicLists.add(ModelList('publications', 'Kotlin Watchman'));
    topicLists.add(ModelList('publications', 'Jetpack ark'));
    topicLists.add(ModelList('publications', 'Compose Mix'));
    topicLists.add(ModelList('publications', 'Compose Mix'));
    topicLists.add(ModelList('publications', 'Compose Mix'));
    topicLists.add(ModelList('publications', 'Compose Mix'));
    topicLists.add(ModelList('publications', 'Compose Mix'));
    return topicLists;
  }
}