import 'package:flutter_components/src/pages/alert_page.dart';
import 'package:flutter_components/src/pages/animated_container_page.dart';
import 'package:flutter_components/src/pages/avatar_page.dart';
import 'package:flutter_components/src/pages/card_page.dart';
import 'package:flutter_components/src/pages/home_page.dart';
import 'package:flutter_components/src/pages/input_page.dart';
import 'package:flutter_components/src/pages/listview_page.dart';
import 'package:flutter_components/src/pages/slider_page.dart';

final _routes = {
  '/': (context) => HomePage(),
  '/avatar': (context) => AvatarPage(),
  '/alert': (context) => AlertPage(),
  '/card': (context) => CardPage(),
  '/animatedContainer': (context) => AnimatedContainerPage(),
  '/input': (context) => InputPage(),
  '/slider': (context) => SliderPage(),
  '/list': (context) => ListaPage(),
};

Map getAppRoutes() {
  return _routes;
}
