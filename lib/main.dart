import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: GoRouter(routes: [
        GoRoute(path: "/test", builder: (context, state) {
          print(state.uri.queryParametersAll);
          return const Placeholder();
        })
      ],
      initialLocation: "/test"),
    );
  }
}