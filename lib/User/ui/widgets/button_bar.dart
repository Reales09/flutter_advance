import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:prueba/User/bloc/bloc_user.dart';
import 'circle_button.dart';

class ButtonsBar extends StatelessWidget {
  late UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 0.0,
            vertical: 10.0
        ),
        child: Row(
          children: <Widget>[
            //cambiar contraseña
            CircleButton(true, Icons.vpn_key, 20.0, Color.fromRGBO(255, 255, 255, 0.6), () => {}),
            //Cerrar Sesión
            CircleButton(false, Icons.exit_to_app, 40.0, Color.fromRGBO(255, 255, 255, 1),() => {
              userBloc.singOut()
            } ),

            //Añadiremos un nuevo lugar
            CircleButton(true, Icons.add, 20.0, Color.fromRGBO(255, 255, 255, 0.6),() => {}),



          ],
        )
    );
  }

}