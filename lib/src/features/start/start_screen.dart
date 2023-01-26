import 'package:flutter/material.dart';
import 'package:task_manager_app/generated/assets.gen.dart';
import 'package:task_manager_app/src/core/routing/app_router.dart';
import 'package:task_manager_app/src/core/theming/dimens.dart';
import 'package:task_manager_app/src/core/theming/shared_colors.dart';
import 'package:auto_route/auto_route.dart';
import 'package:task_manager_app/src/shared/components/layout.dart';
import 'package:task_manager_app/src/shared/utils/commons.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Layout(
        colors: backGrayColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              Assets.images.image99.path,
              fit: BoxFit.cover,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: Dimens.triplePadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Manage your daily tasks',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      const SizedBox(
                        height: Dimens.tripleSpace,
                      ),
                      Text(
                        'Team and Project management with solution providing App ',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: Dimens.tripleSpace,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: Dimens.tripleSpace,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: InkWell(
                      onTap: () =>
                          context.router.replaceAll([const MainRoute()]),
                      child: Stack(
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                                color: SharedColors.circleColor,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        SharedColors.primary.withOpacity(0.1),
                                    spreadRadius: 2,
                                    blurRadius: 6,
                                    offset: const Offset(0.0, 1.0),
                                  ),
                                ]),
                            child: const SizedBox(
                              height: Dimens.avatarSizeXXl,
                              width: Dimens.avatarSizeXXl,
                            ),
                          ),
                          Positioned(
                              bottom: 0,
                              top: 0,
                              right: 0,
                              child: Align(
                                child: Text(
                                  'Get Started',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
