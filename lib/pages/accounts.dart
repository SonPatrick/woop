import 'dart:math';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:woop/styles/colours.dart';

class Accounts extends StatefulWidget {
  const Accounts({Key? key}) : super(key: key);

  @override
  State<Accounts> createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      setState(() {});
    });
  }

  void printed(text) => print(text);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              toolbarHeight: 60,
              backgroundColor: secondary,
              leading: const Icon(Icons.arrow_back),
              actions: const [],
              pinned: true,
              collapsedHeight: 60,
              expandedHeight: MediaQuery.of(context).size.height * 0.25,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [secondary, secondary],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                title: Container(
                  width: max(
                    100,
                    280 -
                        (scrollController.hasClients
                            ? scrollController.offset * 0.4
                            : 0),
                  ),
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: const FittedBox(
                        fit: BoxFit.fitHeight, child: Text("Suas Contas")),
                  ),
                ),
                collapseMode: CollapseMode.parallax,
                stretchModes: const [StretchMode.zoomBackground],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => const Placeholder(),
                childCount: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ActionIcon extends StatelessWidget {
  const ActionIcon({
    Key? key,
    required this.iconData,
  }) : super(key: key);

  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Icon(iconData),
    );
  }
}
