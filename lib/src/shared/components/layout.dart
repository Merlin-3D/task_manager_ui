import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({super.key, required this.child, required this.colors});

  final Widget child;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DecoratedBox(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: colors,
        )),
        child: child,
      ),
    );
  }
}
