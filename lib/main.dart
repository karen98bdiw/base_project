import 'package:baseproj/base_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

run() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  runApp(BaseApp());
}

main(List<String> args) async {
  await run();
}
