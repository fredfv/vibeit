import 'package:flutter_modular/flutter_modular.dart';
import 'package:vibeit/src/view/home_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    // Bind((i) => MyRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const HomePage()),
  ];
}
