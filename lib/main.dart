import 'package:flutter/material.dart';
import 'package:section_2/app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


Future<void> main() async {
  await Supabase.initialize(
    url: 'https://qronxxgqcrbkmtqctgmp.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFyb254eGdxY3Jia210cWN0Z21wIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDY5NDcxMzksImV4cCI6MjAyMjUyMzEzOX0.u-wEgxgl6Tusk2ek7JW6_TiXsVGZ0KmZLsZ-LFR5s20',
  );

  runApp(MyApp());
}


