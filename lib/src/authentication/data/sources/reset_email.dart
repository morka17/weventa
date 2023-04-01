import 'dart:async';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:weventa/src/_core/errors/aurh_exception.dart';
import 'package:weventa/src/authentication/data/config/auth_status.dart';

class ResetEmail {
  Future<AuthStatus> call(String email) async {
    try {
      return await _sendEmail(email).then((_) => AuthStatus.done);
    } on FirebaseAuthException catch (e) {
      throw AuthException(msg: e.message ?? "", code: e.code);
    } on SocketException catch (e) {
      throw AuthException(msg: e.message, code: "404");
    } on TimeoutException catch (e) {
      throw AuthException(msg: "TimeOut", code: "taking too more time");
    } catch (e) {
      throw AuthException(msg: "unexcepted error", code: "407");
    }
  }
}

Future<void> _sendEmail(String email) async {
  ActionCodeSettings codeSettings = ActionCodeSettings(
    url: "",
  );
  return await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
}
