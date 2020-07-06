import 'package:flutter/material.dart';
import 'package:proy_base/src/witgets/custom_raisedButton.dart';

class WelcomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            children: <Widget>[
              _createTitle(context),
              _createImage(),
              _createButtons(context),
              _termsAndConditions(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget _createTitle(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 30),
      child: Column(
        children: <Widget>[
          Text('Bienvenido', textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline1),
          Text('Patrón Bloc', style: Theme.of(context).textTheme.bodyText2)
        ],
      ),
    );
  }

  Widget _createImage(){
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Image(
        height: 240.0,
        image: AssetImage('assets/Data.png'),
      ),
    );
  }

  Widget _createButtons(BuildContext context){
    return Column(
      children: <Widget>[
        CustomRaisedButton(
          name: 'Ingresa',
          color: Color.fromRGBO(0, 211, 174, 1.0),
          textColor: Colors.white,
          borderRadius: 30.0,
          sizeWidth: 220.0,
          sizeHeight: 43.0,
          padding: 12.0,
          fontWeight: FontWeight.bold,
          onPressed: () => Navigator.pushNamed(context, 'login'),
        ),
        SizedBox(height: 5.0,),
        CustomRaisedButton(
          name: 'Registrate',
          color: Colors.white,
          textColor: Color.fromRGBO(59, 27, 106, 1.0),
          borderRadius: 30.0,
          side: Color.fromRGBO(59, 27, 106, 1.0),
          sizeWidth: 220.0,
          sizeHeight: 43.0,
          padding: 12.0,
          fontWeight: FontWeight.w400,
          onPressed: () => Navigator.pushNamed(context, 'login'),
        )
      ],
    );
  }

  Widget _termsAndConditions(BuildContext context){
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Text('Términos y Condiciones', style: Theme.of(context).textTheme.subtitle1),
      ),
    );
  }

}