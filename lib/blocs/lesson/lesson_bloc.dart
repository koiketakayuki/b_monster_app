import 'package:b_monster_app/blocs/lesson/lesson_event.dart';
import 'package:b_monster_app/blocs/lesson/lesson_state.dart';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:b_monster_app/models/lesson.dart';
import 'package:b_monster_app/api/b_monster_api.dart';

class LessonBloc extends Bloc<LessonEvent, LessonState> {
  final BMonsterAPI _api = BMonsterAPI(http.Client());

  @override
  LessonState get initialState => LessonState.initial();

  @override
  Stream<LessonState> mapEventToState(LessonEvent event) async* {
    if (event is SelectStudioEvent) {
      yield* _mapSelectStudioToState(currentState, event);
    }

    if (event is SelectDateEvent) {
      yield* _mapSelectDateToState(currentState, event);
    }
  }

  Stream<LessonState> _mapSelectStudioToState(
      LessonState state, SelectStudioEvent event) async* {
    List<Lesson> lessons = await _api.getLessons(event.studio);
    yield LessonState(lessons, currentState.date);
  }

  Stream<LessonState> _mapSelectDateToState(
      LessonState state, SelectDateEvent event) async* {
    yield LessonState(currentState.lessons, event.date);
  }
}
