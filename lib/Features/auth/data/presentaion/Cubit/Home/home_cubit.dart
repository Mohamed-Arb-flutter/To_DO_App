import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/Features/auth/data/model/My_task.dart';
import 'package:todo/Features/auth/data/presentaion/Cubit/Home/home_state.dart';
import 'package:todo/Features/auth/data/repo/AuthRebo.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(super.initialState);
  static HomeCubit get(context) => BlocProvider.of(context);
  Authrebo Rebo = Authrebo();
  onprsed() async {
    emit(HomeLoading());
    var resukt = await Rebo.Mytask();
    resukt.fold(
      ifLeft: (String error) {
        emit(HomeError(error));
      },
      ifRight: (List<Tasks> task) {
        emit(HomeSuccess(task));
      },
    );
  }
}
