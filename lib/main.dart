import 'package:figma_clone/canvas/canvas_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  Supabase.initialize(
    url: 'https://bweddswdsfjrybsmvpvn.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJ3ZWRkc3dkc2Zqcnlic212cHZuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTExMTIzMTIsImV4cCI6MjAyNjY4ODMxMn0.xHAHcT3CtbRZnGm4p5VHSZIF8ORwHBBeHtU9wRS_g_E',
  );
  runApp(const MainApp());
}

final supabase = Supabase.instance.client;

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Figma Clone',
      debugShowCheckedModeBanner: false,
      home: CanvasPage(),
    );
  }
}
