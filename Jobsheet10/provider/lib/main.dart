import 'package:flutter/material.dart';
import 'models/data_layer.dart';
import 'provider/plan_provider.dart';
import 'screen/plan_screen.dart';
import 'views/plan_creator_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanProvider(
      notifier: ValueNotifier<List<Plan>>(const []),
      child: MaterialApp(
        title: 'State management app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // --- Langkah 9: Ubah home ---
        home: const PlanCreatorScreen(), // Diperlukan perubahan pada Langkah 3
      ),
    );
  }
}