import 'package:flutter/material.dart';
import 'package:task_manager_app/src/core/theming/dimens.dart';

class RedLineDivider extends StatelessWidget {
  const RedLineDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              color: Colors.red,
              borderRadius: BorderRadius.circular(Dimens.trippleRadius)),
          child: const SizedBox(
            width: Dimens.radius,
            height: Dimens.radius,
          ),
        ),
        const SizedBox(
          width: Dimens.halfSpace,
        ),
        Container(
          height: 1.0,
          width: MediaQuery.of(context).size.width - (Dimens.appBarHeight * 2),
          color: Colors.red,
        ),
      ],
    );
  }
}
