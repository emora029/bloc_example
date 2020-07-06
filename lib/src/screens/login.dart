import 'package:flutter/material.dart';
import 'package:proy_base/src/blocs/provider.dart';
import 'package:proy_base/src/witgets/custom_raisedButton.dart';
import 'package:proy_base/src/witgets/custom_textField.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final bloc = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 211, 174, 1.0),
        title: Text('Login'),
      ),
      body: ListView(
        children: <Widget>[
          
          _createEmail(bloc),
          
          _createPassword(bloc),
          
          _login(context)
        ],
      ),
    );
  }

  Widget _createEmail(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.emailStream ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
          child: CustomTextField(
            keyboardType: TextInputType.emailAddress,
            hintText: 'ejemplo@correo.com',
            labelText: 'Correo electrónico',
            counterText: snapshot.data,
            errorText: snapshot.error,
            onChanged: bloc.changeEmail,
          ),
        );
      },
    );
  }

  Widget _createPassword(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.passwordStream ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
          child: CustomTextField(
            obscure: true,
            labelText: 'Contraseña',
            counterText: snapshot.data,
            errorText: snapshot.error,
            onChanged: bloc.changePassword,
          ),
        );
      },
    );
  }

  Widget _login(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(38.0),
      child: CustomRaisedButton(
        name: 'Ingresa',
          color: Colors.white,
          textColor: Color.fromRGBO(59, 27, 106, 1.0),
          borderRadius: 30.0,
          side: Color.fromRGBO(59, 27, 106, 1.0),
          sizeWidth: 220.0,
          sizeHeight: 43.0,
          padding: 12.0,
          fontWeight: FontWeight.w400,
          onPressed: (){},
      ),
    );
  }

}