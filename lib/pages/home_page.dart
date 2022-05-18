import 'package:flutter/material.dart';

import '../widgets/home_page_widgets/body_widget.dart';
import '../widgets/home_page_widgets/bottom_navigation_bar_widget.dart';
import '../widgets/home_page_widgets/horizontal_list_avatars_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarMethod(),
      body: ListView(
        children: const [
          HorizontalListAvatarsWidget(),
          Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: BodyWidget(),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }

  PreferredSizeWidget _appBarMethod() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text(
        'Moda Uygulaması',
        style: TextStyle(
          fontSize: 22,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.camera_alt,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
