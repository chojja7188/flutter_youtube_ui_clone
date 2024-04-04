import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui_clone/presentation/component/youtube_ad_card.dart';
import 'package:flutter_youtube_ui_clone/presentation/component/youtube_shorts_list.dart';
import 'package:flutter_youtube_ui_clone/presentation/component/youtube_video_card.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: 8, (BuildContext context, int index) {
          return Column(
            children: [
              YoutubeAdCard(),
              YoutubeVideoCard(
                title: "[#무도] 크리스마스 기념🎄 널 위해 준비한 선물...?☠💔 찌롱이 홍철과 쩌리짱 준하 중심으로 보는 '의 상한 형제 특집' 1편 MBC100109방송",
                url: 'https://i.ytimg.com/vi/fDPmS4wW5do/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLA9Giks3ylsj_q_diCHyhG56ZDutA',
              ),
              YoutubeVideoCard(
                title: "[#무도] 새해 기념🌅 이걸로 이제 서운한 일은 다 잊자🤫 사기꾼 홍철과 6쓰봉🗑 준하 중심으로 보는 '의 상한 형제 특집' 2편 MBC100116방송",
                url: 'https://i.ytimg.com/vi/DUAxtHuNmYU/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCdnKvr7rRu4xu1I34mGzldbcuqLQ',
              ),
              YoutubeShortsList()
            ],
          );
        }),
    );
  }
}
