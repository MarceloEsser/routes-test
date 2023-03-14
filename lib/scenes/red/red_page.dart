import 'package:flutter/material.dart';
import 'package:routes_test/infra/composition/screen/screen_builder.dart';
import 'package:routes_test/infra/composition/screen/screen.dart';
import 'package:routes_test/infra/di/router/router_store_impl.dart';
import 'package:routes_test/scenes/blue/blue_page.dart';
import 'package:routes_test/scenes/red/red_view_model.dart';

// ignore: must_be_immutable
class RedPage extends StatelessWidget with Screen {
  RedPage({super.key});

  late final RedViewModel viewModel = getViewModel<RedViewModel>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Placeholder(
          color: Colors.red,
          child: Text('Pagina 1'),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          onPressed: () {
            push(context, page: BluePage);
          },
          child: const Text('Go to page 2'),
        ),
      ],
    );
  }

  static Map<Type, WidgetBuilder> route() => {
        RedPage: (context) => ScreenFactory.instance.build(
              child: () => RedPage(),
            )
      };
}
