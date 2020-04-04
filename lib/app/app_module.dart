import 'package:corona_data/app/app_controller.dart';
import 'package:corona_data/app/modules/home/home_module.dart';
import 'package:corona_data/app/shared/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:corona_data/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController(),),
        Bind((i) => Dio(BaseOptions(baseUrl: BASE_URL)),),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}