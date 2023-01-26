import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'package:task_manager_app/src/core/theming/dimens.dart';
import 'package:task_manager_app/src/shared/components/avatar.dart';
import 'package:task_manager_app/src/shared/components/preview_screen_button.dart';
import 'package:task_manager_app/src/shared/components/layout.dart';
import 'package:task_manager_app/src/shared/utils/commons.dart';
import 'package:task_manager_app/src/shared/utils/mocks.dart';

class ManagmentScreen extends StatefulWidget {
  const ManagmentScreen({super.key});

  @override
  State<ManagmentScreen> createState() => _ManagmentScreenState();
}

class _ManagmentScreenState extends State<ManagmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Layout(
          colors: backGrayColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.padding),
            child: Column(
              children: [
                const SizedBox(
                  height: Dimens.appBarHeight,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    PreviewScreenButton(),
                    Avatar(
                        picture:
                            "https://images.pexels.com/photos/904332/pexels-photo-904332.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
                  ],
                ),
                const SizedBox(
                  height: Dimens.tripleSpace,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      children: [
                        const Icon(Ionicons.arrow_back_outline),
                        const SizedBox(
                          width: Dimens.space,
                        ),
                        Text(
                          'Mar',
                          style: Theme.of(context).textTheme.headline6,
                        )
                      ],
                    ),
                    Text(
                      'April',
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 28),
                    ),
                    Wrap(
                      children: [
                        Text(
                          'May',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        const SizedBox(
                          width: Dimens.space,
                        ),
                        const Icon(Ionicons.arrow_forward_outline),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: Dimens.tripleSpace,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: Dimens.padding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: dayWidgetBlock,
                      ),
                      const SizedBox(
                        height: Dimens.tripleSpace,
                      ),
                      Text(
                        'Ongoing',
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 1,
                          child: ListView.builder(
                            itemCount: time.length,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) =>
                                Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: Dimens.padding),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: displayDate(index),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: Dimens.doubleSpace,
                        ),
                        Expanded(
                          flex: 5,
                          child: ListView(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            children: taskDisplayCalendar,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Widget displayDate(int index) {
    return Text(
      '${time[index]}${time[index] > 8 ? ' PM' : ':0 AM'}',
      style: Theme.of(context).textTheme.subtitle2,
    );
  }
}
