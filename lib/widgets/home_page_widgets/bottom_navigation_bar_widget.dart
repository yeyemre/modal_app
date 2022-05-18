import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TabBar(
        indicatorColor: Colors.transparent,
        controller: _controller,
        tabs: [
          Tab(
            child: IconButton(
              onPressed: () {
                debugPrint('IconMore Pressed');
              },
              icon: const Icon(
                Icons.more,
                color: Colors.grey,
                size: 22,
              ),
            ),
          ),
          Tab(
            child: IconButton(
              onPressed: () {
                debugPrint('PlayArrow Pressed');
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.grey,
                size: 22,
              ),
            ),
          ),
          Tab(
            child: IconButton(
              onPressed: () {
                debugPrint('Navigation Pressed');
              },
              icon: const Icon(
                Icons.navigation,
                color: Colors.grey,
                size: 22,
              ),
            ),
          ),
          Tab(
            child: IconButton(
              onPressed: () {
                debugPrint('SuperVised Pressed');
              },
              icon: const Icon(
                Icons.supervised_user_circle,
                color: Colors.grey,
                size: 22,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
