import 'dart:async';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';

import '../../../_core/errors/aurh_exception.dart';

class CreateUser {
  Future<User?> call(String email, String password) async {
    try {
      final response = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return response.user;
    } on FirebaseAuthException catch (e) {
      throw AuthException(msg: e.message ?? "", code: e.code);
    } on SocketException catch (e) {
      throw AuthException(msg: e.message, code: "404");
    } on TimeoutException catch (e) {
      throw AuthException(msg: e.message ?? "Taking much time", code: "401");
    } catch (e) {
      throw AuthException(msg: "unexcepted error occurred", code: "407");
    }
  }
}
