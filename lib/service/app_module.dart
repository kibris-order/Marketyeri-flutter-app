import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

import 'algolia_service.dart';
import 'firebase_service.dart';

@module
abstract class AppModule {
  @preResolve
  Future<FirebaseService> get fireService => FirebaseService.init();

  @injectable
  FirebaseFirestore get store => FirebaseFirestore.instance;

  @injectable
  FirebaseStorage get storage => FirebaseStorage.instance;

  @injectable
  FirebaseAuth get auth => FirebaseAuth.instance;

  @injectable
  Algolia get algolia => AlgoliaService.algolia.instance;
}