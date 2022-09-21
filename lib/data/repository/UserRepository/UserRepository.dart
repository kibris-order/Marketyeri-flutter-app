import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import 'IUserRepository.dart';

@Injectable(as: IUserRepository)
class UserRepository implements IUserRepository {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  UserRepository(this._firebaseAuth, this._firebaseFirestore);

  @override
  Future<bool> checkIfUserExists() {
    // TODO: implement checkIfUserExists
    throw UnimplementedError();
  }

  @override
  bool isSignedIn() => _firebaseAuth.currentUser != null;

  @override
  Future<void> signInEmailAndPassword() {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() async{
    return await _firebaseAuth.signOut();
  }

  @override
  Future<UserCredential> loginWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(
            loginResult.accessToken?.token as String);

    // Once signed in, return the UserCredential
    return _firebaseAuth.signInWithCredential(facebookAuthCredential);
  }

  @override
  Future<UserCredential> loginWithGoogle() async {
// Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await _firebaseAuth.signInWithCredential(credential);
  }

  @override
  Future<UserCredential> loginWithApple() async {
    final appleProvider = AppleAuthProvider();
    if (kIsWeb) {
      return await _firebaseAuth.signInWithPopup(appleProvider);
    } else {
      return await _firebaseAuth.signInWithAuthProvider(appleProvider);
    }
  }

  @override
  Future<UserCredential> registerWithApple() {
    // TODO: implement loginWithApple
    throw UnimplementedError();
  }

  @override
  Future<void> registerEmailAndPassword() {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<UserCredential> registerWithFacebook() {
    // TODO: implement registerWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<UserCredential> registerWithGoogle() {
    // TODO: implement registerWithGoogle
    throw UnimplementedError();
  }
}
