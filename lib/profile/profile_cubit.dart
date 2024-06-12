import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(const ProfileState(selectedIndex: 1));

  void updateIndex(int newIndex) {
    emit(state.copyWith(selectedIndex: newIndex));
  }
}
