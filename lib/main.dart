import 'package:flutter/material.dart';
import 'package:routes_test/infra/composition/screen/screen_builder.dart';
import 'package:routes_test/infra/di/router/router_store.dart';
import 'package:routes_test/infra/di/router/router_store_impl.dart';
import 'package:routes_test/scenes/home/home.dart';

final RouterStore routeModule = RouterStoreImpl();

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      routes: {
        ...routeModule.routes.map(
          (key, value) =>
              MapEntry<String, WidgetBuilder>(key.toString(), value),
        ),
      },
      home: ScreenFactory.instance.build(
        child: () => HomePage(),
      ),
    );
  }
}
