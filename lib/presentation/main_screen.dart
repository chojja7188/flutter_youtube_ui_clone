import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui_clone/component/category_card.dart';
import 'package:flutter_youtube_ui_clone/component/custom_app_bar.dart';
import 'package:flutter_youtube_ui_clone/model/video_category.dart';
import 'package:flutter_youtube_ui_clone/repository/category_repository.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomAppBar(),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {

                  }
              )
          ),
        ],
      )
    );
  }
}
