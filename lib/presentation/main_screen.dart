import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui_clone/config.dart';
import 'package:flutter_youtube_ui_clone/presentation/component/custom_app_bar.dart';
import 'package:flutter_youtube_ui_clone/presentation/component/custom_bottom_navigation_bar.dart';
import 'package:flutter_youtube_ui_clone/presentation/tabs/home_tab.dart';
import 'package:flutter_youtube_ui_clone/repository/category_repository.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Config.bgColor,
        child: CustomScrollView(
          slivers: [
            CustomAppBar(),
            HomeTab(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar()
    );
  }
}
