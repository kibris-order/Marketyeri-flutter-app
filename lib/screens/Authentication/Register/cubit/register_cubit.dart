import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:marketyeri/data/repository/UserRepository/IUserRepository.dart';
import 'package:marketyeri/screens/Authentication/Register/cubit/register_state.dart';
import 'package:meta/meta.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  final IUserRepository _userRepository;

  RegisterCubit(this._userRepository) : super(const RegisterState());
}
