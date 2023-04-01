import 'dart:async';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';

import '../../../_core/errors/aurh_exception.dart';

class ResetCodeVerification {
  Future<String> call(String code) async {
    try {
      return await FirebaseAuth.instance
          .verifyPasswordResetCode(code)
          .then((value) => value);
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
