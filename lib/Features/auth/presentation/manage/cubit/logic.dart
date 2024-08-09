import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twseel_app/Features/auth/presentation/manage/cubit/state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialState());
  static LoginCubit get(context) =>BlocProvider.of(context) ;
  bool visiblePassword = true;

  void changeVisiblePassword(){
    visiblePassword = !visiblePassword ;
    emit(LoginVisiblePasswordState()) ;
  }
}
