import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui_clone/presentation/component/category_list.dart';
import 'package:flutter_youtube_ui_clone/repository/category_repository.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      scrolledUnderElevation: 0,
      elevation: 0,
      floating: true,
      title: SizedBox(
        height: 20,
        child: Image.asset('assets/image/yt_logo_rgb_dark.png'),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      actions: [
        IconButton(icon: const Icon(Icons.cast, color: Color(0xfff1f1f1), size: 22), onPressed: () {}),
        IconButton(icon: const Icon(Icons.notifications_none, color: Color(0xfff1f1f1), size: 22), onPressed: () {}),
        IconButton(icon: const Icon(Icons.search, color: Color(0xfff1f1f1), size: 22), onPressed: () {})
      ],
      bottom: PreferredSize(
        child: CategoryList(repository: CategoryRepository()),
        preferredSize: const Size(30, 30),
      ),
    );
  }
}
