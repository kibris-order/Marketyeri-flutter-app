abstract class IUserRepository {
  Future<void> signIn();
  Future<void> register();
  Future<bool> checkIfUserExists();
  //Future<User?> getUser();
  Future<void> signOut();
  bool isSignedIn();
}