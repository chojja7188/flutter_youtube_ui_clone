import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui_clone/config.dart';
import 'package:intl/intl.dart';

class YoutubeVideoCard extends StatefulWidget {
  final String title;
  final String url;
  const YoutubeVideoCard({super.key, required this.title, required this.url});

  @override
  State<YoutubeVideoCard> createState() => _YoutubeVideoCardState();
}

class _YoutubeVideoCardState extends State<YoutubeVideoCard> {
  double _currentTime = 0;
  num _videoTimeSecond = 1411;
  num _second = 1411;

  @override
  Widget build(BuildContext context) {
    String _formattedTime = DateFormat('mm:ss').format(DateTime(0, 0, 0, 0, 0, _videoTimeSecond.toInt()));
    return Stack(
      children: [
        Container(
          color: Config.bgColor,
          width: double.infinity,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    child: Image.network(widget.url,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 220,
                    ),
                  ),
                  Positioned(
                    right: 6,
                    bottom: 6,
                    child: Opacity(
                      opacity: 0.8,
                      child: Container(
                        padding: const EdgeInsets.only(left: 4, right: 4),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(4)
                        ),
                        child: Text(_formattedTime, style: const TextStyle(fontSize: 13),),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
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
                                child: Image.network('https://yt3.ggpht.com/kK9lUSB5vd1XJGL6Bvl1t_9JlNy6AY0xypKr0G1gilwuYm7O8pI7K8CdujXmdh1yCmurA86qd5Q=s68-c-k-c0x00ffffff-no-rj'))
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.79,
                              child: Text(widget.title,
                                  overflow: TextOverflow.ellipsis, maxLines: 2, softWrap: true),
                            ),
                            const SizedBox(height: 4),
                            const Row(
                              children: [
                                Text('올끌 (All of MBClassic) · 조회수 23만회 · 3개월 전', style: TextStyle(color: Colors.grey, fontSize: 12),)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    const Expanded(child: Spacer()),
                    const Icon(Icons.more_vert, color: Config.fontColor, size: 20)
                  ],
                ),
              ),
              const SizedBox(height: 20)
            ],
          ),
        ),
        Positioned.fill(
          bottom: -120,
          child: SizedBox(
            width: double.infinity,
            child: SliderTheme(
              data: SliderThemeData(
                trackShape: CustomTrackShape(),
                thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 5),
                trackHeight: 1,
              ),
              child: Slider(
                value: _currentTime,
                max: _second.toDouble(),
                onChanged: (value) {
                  setState(() {
                    _currentTime = value;
                    _videoTimeSecond = _second - _currentTime;
                  });
                },
                activeColor: Colors.red,
                inactiveColor: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight;
    final trackLeft = offset.dx;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}