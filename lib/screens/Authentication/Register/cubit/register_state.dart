

import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
 class RegisterState with _$RegisterState {

  const factory RegisterState({
    bool? loading
})=_RegisterState;

}
