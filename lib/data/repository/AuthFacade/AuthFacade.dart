import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:marketyeri/data/model/person/person.dart';

import 'IAuthFacade.dart';

@Injectable(as: IAuthFacade)
class AuthFacade implements IAuthFacade {

  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  AuthFacade(this._firebaseAuth, this._firebaseFirestore);

  @override
  Future<Person?> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<void> register({required String username, required String email, required String password}) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<void> signIn({required String email, required String password}) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<void> logOut() {
    // TODO: implement logOut
    throw UnimplementedError();
  }
}