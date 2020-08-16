import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:get/get.dart';
import 'package:vita_nova/const.dart';
import 'package:vita_nova/screens/tu_perfil.dart';

class UserTopIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        IconButton(
          icon: Icon(FeatherIcons.user),
          padding: EdgeInsets.all(10.0),
          iconSize: kIconSizeNavigationBar,
          onPressed: () {
            Get.toNamed(TuPerfil().id);
          },
        ),
      ],
    );
  }
}
