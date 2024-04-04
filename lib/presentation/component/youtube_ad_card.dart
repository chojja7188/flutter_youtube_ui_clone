import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui_clone/config.dart';

class YoutubeAdCard extends StatelessWidget {
  const YoutubeAdCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Config.bgColor,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            child: Image.network('https://res.cloudinary.com/linkareer/image/fetch/f_auto,q_50/https://api.linkareer.com/attachments/289669',
              fit: BoxFit.cover,
            width: double.infinity,
              height: 300,
            ),
          ),
          Container(
            color: Color(0xff263e60),
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('사이트 방문하기', style: TextStyle(color: Color(0xff37a0f4)),),
                  Icon(Icons.ios_share, color: Color(0xff37a0f4))
                ],
              ),
            ),
          ),
          SizedBox(height: 4),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipOval(
                        child: Container(
                            width: 30,
                            height:30,
                            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoG1ZcPavwVTuM-quTBYcbWF6xemMdOKIgKaL1ybthRw&s'))
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('오름캠프에서 앱 개발 훈련생을 모집합니다!'),
                        SizedBox(height: 4),
                        Text('완전 편합니다! 힐링캠프! 같이 플러터로 앱을 만들어봐요!\n초보자환영!!', style: TextStyle(fontSize: 11, color: Colors.grey)),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Text('스폰서 · ', style: TextStyle(fontSize: 12),),
                            Text('모두의연구소', style: TextStyle(color: Colors.grey, fontSize: 12),)
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Expanded(child: Spacer()),
                Icon(Icons.more_vert, color: Config.fontColor, size: 20)
              ],
            ),
          ),
          SizedBox(height: 20)
        ],
      ),
    );
  }
}
