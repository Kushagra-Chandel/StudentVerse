import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Courses')),
      body: ListView(
        children: List.generate(6, (index) => ListTile(
              leading: const Icon(Icons.bookmark),
              title: Text('Course ${index + 1}'),
              subtitle: Text('Progress: ${(index + 1) * 15}%'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            )),
      ),
    );
  }
}
