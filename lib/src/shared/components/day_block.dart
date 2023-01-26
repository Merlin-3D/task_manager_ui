import 'package:flutter/material.dart';
import 'package:task_manager_app/src/core/theming/dimens.dart';
import 'package:task_manager_app/src/core/theming/shared_colors.dart';

class DayBlock extends StatelessWidget {
  const DayBlock(
      {super.key,
      required this.dayOfMonth,
      required this.dayOfWeek,
      required this.dayIsSelected});

  final String dayOfMonth;
  final String dayOfWeek;
  final bool dayIsSelected;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: dayIsSelected ? SharedColors.primary : SharedColors.circleColor,
          borderRadius: BorderRadius.circular(Dimens.extraLargeRadius)),
      child: SizedBox(
        height: Dimens.halfHeightBlock,
        width: MediaQuery.of(context).size.width * 0.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              dayOfMonth,
              style: Theme.of(context).textTheme.headline2!.copyWith(
                  color: !dayIsSelected ? SharedColors.primary : Colors.white),
            ),
            const SizedBox(height: Dimens.space,),
            Text(
              dayOfWeek,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontSize: 12,
                  color: !dayIsSelected
                      ? SharedColors.primary.withOpacity(0.7)
                      : Colors.white.withOpacity(0.5)),
            ),
          ],
        ),
      ),
    );
  }
}
