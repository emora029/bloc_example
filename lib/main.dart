import 'package:flutter/material.dart';

import 'package:proy_base/src/blocs/provider.dart';

import 'package:proy_base/src/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final Color color = Color.fromRGBO(59, 27, 106, 1.0);

    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: getApplicationRoutes(),
        theme: ThemeData(
          fontFamily: 'Roboto',
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 30.0, color: color, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 25.0, color: color),
            bodyText1: TextStyle(fontSize: 20.0, color: color),
            bodyText2: TextStyle(fontSize: 15.0, color: color),
            subtitle1: TextStyle(fontSize: 13.0, color: color),
          ),
        )
      ),
    );
  }
}
