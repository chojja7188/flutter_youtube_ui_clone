import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui_clone/model/video_category.dart';

class CategoryCard extends StatefulWidget {
  final VideoCategory category;
  final bool select;
  const CategoryCard({super.key, required this.category, this.isSelected, required this.select});

  final void Function(int selectedId)? isSelected;

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  VideoCategory get _category => widget.category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: InkWell(
        onTap: () {
          widget.isSelected?.call(_category.id);
        },
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
              color: widget.select ? const Color(0xfff1f1f1) : const Color(0xff272727),
              borderRadius: BorderRadius.circular(8)
          ),
          height: 30,
          child: Center(
              child: Text(_category.name,
                  style: TextStyle(
                      color: widget.select ? const Color(0xff272727) : const Color(0xfff1f1f1)))),
        ),
      ),
    );
  }
}
