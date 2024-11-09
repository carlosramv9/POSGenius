import 'package:flutter/material.dart';
import 'package:posgenius/screens/login/index.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

Future<void> main() async {
  usePathUrlStrategy();
  await Supabase.initialize(
    url: 'https://kkvmhglrmwgnoirabtku.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imtrdm1oZ2xybXdnbm9pcmFidGt1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzExMTU1ODIsImV4cCI6MjA0NjY5MTU4Mn0.SWUKWaSxQ3EmBYMr1wP5HksCRgciedz0XhUqFi17InU',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'POS Genius',
      home: LoginScreen(),
    );
  }
}
