import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:get/get.dart';

class UserTopIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        IconButton(
          icon: Icon(FeatherIcons.user),
          padding: EdgeInsets.all(10.0),
          iconSize: 27.0,
          onPressed: () {},
        ),
      ],
    );
  }
}
