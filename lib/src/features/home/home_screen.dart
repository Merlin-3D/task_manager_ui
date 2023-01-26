import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_manager_app/generated/assets.gen.dart';
import 'package:task_manager_app/src/core/routing/app_router.dart';
import 'package:task_manager_app/src/core/theming/dimens.dart';
import 'package:task_manager_app/src/core/theming/shared_colors.dart';
import 'package:task_manager_app/src/shared/components/avatar.dart';
import 'package:task_manager_app/src/shared/components/block_container.dart';
import 'package:task_manager_app/src/shared/components/layout.dart';
import 'package:flutter_face_pile/flutter_face_pile.dart';
import 'package:task_manager_app/src/shared/utils/commons.dart';
import 'package:task_manager_app/src/shared/utils/mocks.dart';
import 'package:auto_route/auto_route.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Layout(
          colors: backPrimaryColor,
          child: Stack(
            children: [
              Positioned(
                right: -50,
                top: -50,
                child: Wrap(
                  children: [
                    SvgPicture.asset(
                      Assets.images.group1,
                      // matchTextDirection: true,
                      // color: Colors.white,
                    ),
                  ],
                ),
              ),
              Positioned(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: Dimens.padding),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: Dimens.appBarHeight,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(
                                  height: Dimens.iconSizeLg,
                                  Assets.icons.textalignLeft,
                                  matchTextDirection: true,
                                  color: Colors.white,
                                ),
                                const Avatar(
                                    picture:
                                        "https://images.pexels.com/photos/904332/pexels-photo-904332.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
                              ],
                            ),
                            const SizedBox(
                              height: Dimens.tripleSpace,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hi Ghulam',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline2!
                                      .copyWith(color: Colors.white),
                                ),
                                const SizedBox(
                                  height: Dimens.halfSpace,
                                ),
                                Text(
                                  '6 Task are pending',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(
                                          color: Colors.white.withOpacity(0.5)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: Dimens.tripleSpace,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Card(
                                color: SharedColors.primary,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      Dimens.trippleRadius),
                                ),
                                elevation: 8,
                                child: Padding(
                                  padding: const EdgeInsets.all(Dimens.padding),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Mobile App Design',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: Dimens.halfSpace,
                                      ),
                                      Text(
                                        'Mike and Anita',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .copyWith(
                                                color: Colors.white
                                                    .withOpacity(0.5)),
                                      ),
                                      const SizedBox(
                                        height: Dimens.doubleSpace,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            constraints: BoxConstraints(
                                                maxWidth: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.2),
                                            child: FacePile(
                                              borderWidth: 2,
                                              facePercentOverlap: .4,
                                              borderColor: Colors.white,
                                              faces: faceHolder,
                                            ),
                                          ),
                                          Text(
                                            'Now',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2!
                                                .copyWith(
                                                    color: Colors.white
                                                        .withOpacity(0.5)),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: Dimens.doubleSpace,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Monthly Review',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(color: Colors.white),
                                ),
                                FloatingActionButton.small(
                                  backgroundColor: SharedColors.success,
                                  child: const Icon(
                                    Ionicons.calendar_outline,
                                    size: Dimens.iconSizeSm,
                                  ),
                                  onPressed: () {
                                    context.router
                                        .navigate(const ManagmentRoute());
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: Dimens.doubleSpace,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                BlockContainer(
                                  heightBlock: Dimens.largeHeightBlock,
                                  firstValue: '22',
                                  secondValue: 'Done',
                                  onTap: () => context.router
                                      .navigate(const ManagmentRoute()),
                                ),
                                const SizedBox(
                                  height: Dimens.tripleSpace,
                                ),
                                BlockContainer(
                                  heightBlock: Dimens.halfHeightBlock,
                                  firstValue: '10',
                                  secondValue: 'Ongoing',
                                  onTap: () => context.router
                                      .navigate(const ManagmentRoute()),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: Dimens.doubleSpace,
                            ),
                            Column(
                              children: [
                                BlockContainer(
                                  heightBlock: Dimens.halfHeightBlock,
                                  firstValue: '7',
                                  secondValue: 'in progress',
                                  onTap: () => context.router
                                      .navigate(const ManagmentRoute()),
                                ),
                                const SizedBox(
                                  height: Dimens.tripleSpace,
                                ),
                                BlockContainer(
                                    heightBlock: Dimens.largeHeightBlock,
                                    firstValue: '12',
                                    secondValue: 'Waiting for Review',
                                    onTap: () => context.router
                                        .navigate(const ManagmentRoute())),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
