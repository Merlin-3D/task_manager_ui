import 'package:flutter/material.dart';
import 'package:task_manager_app/src/core/theming/dimens.dart';
import 'package:task_manager_app/src/core/theming/shared_colors.dart';

class BlockContainer extends StatelessWidget {
  const BlockContainer(
      {super.key,
      required this.heightBlock,
      required this.firstValue,
      required this.onTap,
      required this.secondValue});
      
  final double heightBlock;
  final String firstValue;
  final String secondValue;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: SharedColors.primary,
          borderRadius: BorderRadius.circular(Dimens.largeRadius)),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: heightBlock,
          width: MediaQuery.of(context).size.width * 0.4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                firstValue,
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(
                height: Dimens.space,
              ),
              Text(
                secondValue,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.white.withOpacity(0.5)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
