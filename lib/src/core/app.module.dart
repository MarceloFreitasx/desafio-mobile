import 'package:desafioi9xp/src/core/views/main.view.dart';
import 'package:desafioi9xp/src/modules/dashboard/views/dashboard.view.dart';
import 'package:desafioi9xp/src/modules/home/controllers/home.controller.dart';
import 'package:desafioi9xp/src/modules/home/stores/home.store.dart';
import 'package:desafioi9xp/src/modules/home/views/home.view.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  // TODO: implement binds
  List<Bind> get binds => [
        Bind((i) => HomeController(i.get())),
        Bind((i) => HomeStore()),
      ];

  @override
  // TODO: implement bootstrap
  Widget get bootstrap => MyAppView();

  @override
  // TODO: implement routersx
  List<Router> get routers => [
        Router("/", child: (_, __) => HomeView()),
        Router("/home", child: (_, __) => DashboardView()),
        Router("/cart", child: (_, __) => DashboardView()),
        Router("/cart/success", child: (_, __) => DashboardView()),
        Router("/product/:id", child: (_, __) => DashboardView()),
      ];
}