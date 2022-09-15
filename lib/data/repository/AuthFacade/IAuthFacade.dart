import 'package:marketyeri/data/model/person/person.dart';

abstract class IAuthFacade {
  Future<void> signIn({required String email, required String password,});
  Future<void> register({required String username, required String email, required String password});
  Future<Person?> getUser();
  Future<void> logOut();
}