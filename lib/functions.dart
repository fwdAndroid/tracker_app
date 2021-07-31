//Pubic Go
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseFunctions {

  //Anyone
  void signInPublicly() async {
    final authResult = await FirebaseAuth.instance.signInAnonymously();
    print('${authResult.user!.uid}');
  }
}
