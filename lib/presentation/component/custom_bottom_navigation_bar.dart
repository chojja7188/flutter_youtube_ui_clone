import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui_clone/config.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 50,
      elevation: 0,
      color: Theme.of(context).colorScheme.primary,
      padding: EdgeInsets.zero,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _bottomButton(text: '홈', iconData: Icons.home_filled),
          _bottomButton(text: 'Shorts', iconData: Icons.slow_motion_video_outlined),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_circle_outline_rounded, size: 35, color: Config.fontColor,)
          ),
          _bottomButton(text: '구독', iconData: Icons.subscriptions_outlined),
          InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Column(
                    children: [
                      ClipOval(
                          child: Container(
                              width: 24,
                              height: 24,
                              child: Image.network('https://mblogthumb-phinf.pstatic.net/MjAxNzAyMjRfMjY1/MDAxNDg3OTI2NDcyNTc2.IYRdVib5YjSTBwEdn8CwDSPfmci95mdrTBdKHYYGn9Eg.aXZlXjQplS9Tk8WOdONlJAve8x5wPzwMBqG-xWM_g1sg.JPEG.citymedia1/2017-02-24_17-50-41.jpg?type=w800', fit: BoxFit.cover,))),
                      const Text('나',
                          style: TextStyle(
                              fontSize: 9,
                              color: Color(0xfff1f1f1))
                      )
                    ]
                ),
              )
          )
        ],
      ),
    );
  }
}

Widget _bottomButton({required String text, required IconData iconData}) {
  return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Column(
          children: [
            Icon(
              iconData,
              color: const Color(0xfff1f1f1),
            ),
            Text(text,
                style: const TextStyle(
                    fontSize: 9,
                    color: Color(0xfff1f1f1))
            )
          ]
        ),
      )
  );
}