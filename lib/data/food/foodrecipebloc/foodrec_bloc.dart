import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../api_helper.dart';

part 'foodrec_event.dart';
part 'foodrec_state.dart';

class FoodrecBloc extends Bloc<FoodrecEvent, FoodrecState> {
  ApiHelper apiHelper;
  FoodrecBloc({required this.apiHelper}) : super(FoodrecInitial()) {
    on<FoodrecEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
