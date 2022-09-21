import 'package:firebase_auth/firebase_auth.dart';

abstract class IUserRepository {
  Future<void> signInEmailAndPassword();

  Future<UserCredential>  loginWithGoogle();

  Future<UserCredential>  loginWithFacebook();

  Future<UserCredential>  loginWithApple();

  Future<void>  registerEmailAndPassword();

  Future<UserCredential>  registerWithGoogle();

  Future<UserCredential>  registerWithFacebook();

  Future<UserCredential>  registerWithApple();

  Future<bool> checkIfUserExists();

  //Future<User?> getUser();
  Future<void> signOut();

  bool isSignedIn();
}
