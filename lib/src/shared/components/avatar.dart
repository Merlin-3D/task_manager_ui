import 'package:flutter/material.dart';
import 'package:task_manager_app/src/core/theming/dimens.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key, required this.picture});
  final String picture;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: Dimens.avatarSizeXl,
        backgroundColor: Colors.white,
        child: CircleAvatar(
            radius: Dimens.avatarSizeL,
            backgroundImage: NetworkImage(picture)));
  }
}
