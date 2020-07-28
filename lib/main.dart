import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vita_nova/screens/iniciar_sesion.dart';
import 'package:vita_nova/screens/pagina_de_inicio.dart';
import 'package:vita_nova/screens/registrarse.dart';
import 'screens/home_screen.dart';
import 'package:vita_nova/screens/tu_perfil.dart';
import 'const.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Vita Nova',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: kHomeScreen,
      getPages: [
        GetPage(name: kHomeScreen, page: () => HomeScreen()),
        GetPage(name: kIniciarSesion, page: () => IniciarSesion()),
        GetPage(name: kRegistrarse, page: () => Registrarse()),
        GetPage(name: kPaginaDeInicio, page: () => PaginaDeInicio()),
        GetPage(name: kTuPerfil, page: () => TuPerfil()),
      ],
    );
  }
}
