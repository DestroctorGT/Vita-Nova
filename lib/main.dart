import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vita_nova/screens/iniciar_sesion.dart';
import 'package:vita_nova/screens/nueva_cuenta_agregar_descripcion.dart';
import 'package:vita_nova/screens/nueva_cuenta_subir_foto_perfil.dart';
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
      initialRoute: HomeScreen().id,
      getPages: [
        GetPage(name: HomeScreen().id, page: () => HomeScreen()),
        GetPage(name: IniciarSesion().id, page: () => IniciarSesion()),
        GetPage(name: Registrarse().id, page: () => Registrarse()),
        GetPage(
            name: NuevaCuentaSubirFotoPerfil().id,
            page: () => NuevaCuentaSubirFotoPerfil()),
        GetPage(
            name: NuevaCuentaAgregarDescripcion().id,
            page: () => NuevaCuentaAgregarDescripcion()),
        GetPage(name: PaginaDeInicio().id, page: () => PaginaDeInicio()),
        GetPage(name: TuPerfil().id, page: () => TuPerfil()),
      ],
    );
  }
}
