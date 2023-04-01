import 'dart:async';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:weventa/src/authentication/data/config/auth_status.dart';

import '../../../_core/errors/aurh_exception.dart';

class ConfirmReset {
  Future<AuthStatus> call(String email, String newPassword) async {
    try {
      return await _confirm(email, newPassword)
          .then((value) => AuthStatus.done);
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

Future<void> _confirm(String code, String newPassword) async {
  return await FirebaseAuth.instance
      .confirmPasswordReset(code: code, newPassword: newPassword);
}
