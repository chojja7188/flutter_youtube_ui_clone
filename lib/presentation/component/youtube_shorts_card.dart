import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui_clone/config.dart';

class YoutubeShortsCard extends StatelessWidget {
  final String name;
  final String viewCount;
  final String url;
  const YoutubeShortsCard({Key? key, required this.url, required this.name, required this.viewCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(right: 12),
          width: 158,
          height: 264,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(url,
            fit: BoxFit.cover,),
          ),
        ),
        Positioned(
          top: 6,
          right: 14,
          child: Icon(Icons.more_vert, color: Config.fontColor, size: 20,),
        ),
        Positioned(
          left: 8,
          bottom: 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
              Text('조회수 $viewCount회', style: TextStyle(fontSize: 10),)
            ],
          ),
        )
      ],
    );
  }
}
