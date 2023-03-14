import 'package:flutter/material.dart';
import 'package:routes_test/infra/composition/screen/screen_builder.dart';
import 'package:routes_test/infra/composition/screen/screen.dart';
import 'package:routes_test/infra/di/router/router_store_impl.dart';

class BluePage extends StatelessWidget with Screen {
  BluePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Placeholder(
          color: Colors.blue,
          child: Text('Pagina 2'),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
          onPressed: () {
            pop(context);
          },
          child: const Text('Go to page 1'),
        ),
      ],
    );
  }

  static Map<Type, WidgetBuilder> route() => {
        BluePage: (context) => ScreenFactory.instance.build(
              child: () => BluePage(),
            )
      };
}
