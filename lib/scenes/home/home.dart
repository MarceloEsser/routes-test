import 'package:flutter/material.dart';
import 'package:routes_test/infra/composition/screen/screen.dart';
import 'package:routes_test/scenes/red/red_page.dart';

class HomePage extends StatelessWidget with Screen {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            push(context, page: RedPage);
          },
          child: const Text('Red'),
        ),
      ],
    );
  }
}
