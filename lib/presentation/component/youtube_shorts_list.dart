import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui_clone/config.dart';
import 'package:flutter_youtube_ui_clone/presentation/component/youtube_shorts_card.dart';

class YoutubeShortsList extends StatelessWidget {
  const YoutubeShortsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Config.bgColor,
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                  child: Image.asset('assets/image/shorts_logo.png'))),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                YoutubeShortsCard(
                  name: '우와 산이 참 높네요',
                    viewCount: '249만',
                    url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf5ovge2nWGz3FfsJ7_U8nLGwmbCNpU-ZMODsHOXL5wQ&s'
                ),
                YoutubeShortsCard(
                  name: '끝내주는 쇼츠영상',
                  viewCount: '1481만',
                  url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA-RoT-haSGZvSEBkood7175syeRZK5HOvANdQr4pUmQ&s',
                ),
                YoutubeShortsCard(
                  name: '이쁜 벚꽃명소 추천',
                  viewCount: '593만',
                  url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTny8WACnKWiUZnf8pQGI8HxOq5xtud_Vbyy8co49M3bA&s',
                ),
                YoutubeShortsCard(
                  name: '사나',
                  viewCount: '4217만',
                  url: 'https://image.fmkorea.com/files/attach/new3/20221116/5665468/4408310/5219788082/54eac058c6976910455d94ee0581966c.jpg',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
