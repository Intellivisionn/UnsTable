import 'package:flutter/material.dart';
import 'package:unstable/pages/home_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://gchpzrrdcleabasvhqhv.supabase.co",
    anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdjaHB6cnJkY2xlYWJhc3ZocWh2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjk2ODU4NTUsImV4cCI6MjA0NTI2MTg1NX0.3vz9fmw-pkaDpLdpP67ohwbYuNg00hCfEbt-NlGVBvk",
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Unstable',
      home: const HomePage(),
    );
  }
}
