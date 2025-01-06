import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<LoadStatus> {
  SplashCubit() : super(LoadStatus.DATA_LOAD);

  changeLoadStatus(LoadStatus status) {
    emit(status);
  }
}

enum LoadStatus {
  DATA_LOAD('데이터 로드'),
  AUTH_CHECK('로그인 체크');

  const LoadStatus(this.message);
  final String message;
}

