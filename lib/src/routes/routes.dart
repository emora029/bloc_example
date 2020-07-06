import 'package:flutter/material.dart';

import 'package:proy_base/src/screens/login.dart';
import 'package:proy_base/src/screens/welcome.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {

  return <String, WidgetBuilder> {
    '/'     : ( BuildContext context ) => WelcomePage(),
    'login' : ( BuildContext context ) => LoginPage(),
  };

}
