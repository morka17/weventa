import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weventa/firebase_options.dart';
import 'package:weventa/src/authentication/data/sources/create_user.dart';

void main() {
  testWidgets('create user ...', (tester) async {
   WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    final createuser = CreateUser();

    String email = "joshuamorka@gmail.com";

    final result = await createuser(email, "Josh10E3");

    assert(result != null);

    expect(result!.email, email);
  });
}
