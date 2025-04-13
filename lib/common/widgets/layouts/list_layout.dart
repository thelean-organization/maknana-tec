import 'package:flutter/material.dart';

class ListLayout extends StatelessWidget {
  const ListLayout(
      {super.key, required this.itemCount, required this.itemBuilder});

  final int itemCount;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: itemBuilder,
    );
  }
}
