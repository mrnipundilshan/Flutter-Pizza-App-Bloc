part of 'sign_up_bloc.dart';

sealed class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  List<Object> get props => [];
}

class SignRequired extends SignUpEvent {
  final MyUser user;
  final String password;

  const SignUpRequired(this.user, this.password);

  @override
  List<Object> get props => [user, password];
}
