import 'package:bloc/bloc.dart';
import 'package:book_review/src/common/enum/common_state_status.dart';
import 'package:equatable/equatable.dart';

class AppDataLoadCubit extends Cubit<AppDataLoadState> {
  AppDataLoadCubit() : super(AppDataLoadState()) {
    _loadData();
  }

  void _loadData() async {
    emit(state.copyWity(status: CommonStateStatus.loading));
    await Future.delayed(const Duration(microseconds: 10000));
    emit(state.copyWity(status: CommonStateStatus.loaded));

  }
}

class AppDataLoadState extends Equatable {
  final CommonStateStatus status;
  const AppDataLoadState({this.status = CommonStateStatus.init});

  copyWity({
    CommonStateStatus? status,
}) {
    return AppDataLoadState(status: status ?? this.status);
  }

  @override
  List<Object?> get props => [status];

}
