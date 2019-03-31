import 'package:http/http.dart' as http;
import 'package:b_monster_app/models/lesson.dart';
import 'package:b_monster_app/models/studio.dart';
import 'package:b_monster_app/api/parse_lesson_list.dart';


class BMonsterAPI {

  static final String _baseUrl = "https://www.b-monster.jp";

  final http.Client _client;

  BMonsterAPI(this._client);

  close() {
    _client.close();
  }

  Future<List<Lesson>> getLessons(Studio studio) async {
    var url = _getLessonTableUrl(studio);
    http.Response response = await _client.get(url);

    return parseLessonList(response.body);
  }

  String _getLessonTableUrl(Studio studio) {
    return _baseUrl + "/reserve/?studio_code=${studio.id}";
  }
}
