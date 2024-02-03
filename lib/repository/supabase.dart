import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> signUp(
    {required String email,
    required String password,
    required String confirm_password,
    required String full_name,
    required String phone_number,
    required Function onResponse,
    required Function onError}) async {
  try {
    if (confirm_password == password) {
      var result = await Supabase.instance.client.auth.signUp(
        email: email,
        password: password,
        data: {'full_name': full_name, 'phone_number': phone_number},
      );
      onResponse(result);
    }
    else{
      throw throw Exception("Passwords don't match");
    }
  } on AuthException catch (e) {
    onError(e.message);
  }
}


Future<void> signIn(
    {required String email,
      required String password,
      required Function onResponse,
      required Function onError}) async {
  try {
      var result = await Supabase.instance.client.auth.signInWithPassword(
        email: email,
        password: password,
      );
      onResponse(result);
  } on AuthException catch (e) {
    onError(e.message);
  }
}