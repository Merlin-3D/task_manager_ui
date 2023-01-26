import 'package:flutter/material.dart';
import 'package:flutter_face_pile/flutter_face_pile.dart';
import 'package:task_manager_app/src/core/theming/dimens.dart';
import 'package:task_manager_app/src/core/theming/shared_colors.dart';
import 'package:task_manager_app/src/shared/utils/mocks.dart';

class TaskContainer extends StatelessWidget {
  const TaskContainer({
    super.key,
    required this.title,
    required this.subtitle,
    required this.time,
  });

  final String title;
  final String subtitle;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimens.padding),
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: SharedColors.primary,
            borderRadius: BorderRadius.circular(Dimens.largeRadius)),
        child: Padding(
          padding: const EdgeInsets.all(Dimens.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: Dimens.halfSpace,
              ),
              Text(
                subtitle,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: Colors.white.withOpacity(0.5)),
              ),
              const SizedBox(
                height: Dimens.doubleSpace,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.2),
                    child: FacePile(
                      borderWidth: 2,
                      facePercentOverlap: .4,
                      borderColor: Colors.white,
                      faces: faceHolder,
                    ),
                  ),
                  Text(
                    time,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(color: Colors.white.withOpacity(0.5)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
