import 'package:flutter_youtube_ui_clone/model/video_category.dart';

class CategoryRepository {
  List<VideoCategory> getCategories() {
    return [
      VideoCategory(id: 1, name: '전체'),
      VideoCategory(id: 2, name: '음악'),
      VideoCategory(id: 3, name: '믹스'),
      VideoCategory(id: 4, name: '시트콤'),
      VideoCategory(id: 5, name: '만화 영화'),
      VideoCategory(id: 6, name: '액션 어드벤처 게임'),
      VideoCategory(id: 7, name: '랩'),
      VideoCategory(id: 8, name: '스포츠 비디오 게임'),
      VideoCategory(id: 9, name: '축구'),
    ];
  }
}