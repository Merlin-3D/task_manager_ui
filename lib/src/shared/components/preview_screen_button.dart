import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_manager_app/src/core/theming/dimens.dart';
import 'package:task_manager_app/src/core/theming/shared_colors.dart';

class PreviewScreenButton extends StatelessWidget {
  const PreviewScreenButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.radius),
          border: Border.all(color: SharedColors.borderColor, width: 1),
          color: Colors.transparent,
        ),
        child: SizedBox(
          height: 40,
          width: 40,
          child: IconButton(
            icon: const Icon(Ionicons.arrow_back_outline),
            onPressed: () {
              AutoRouter.of(context).pop();
            },
          ),
        ),
      ),
    );
  }
}
