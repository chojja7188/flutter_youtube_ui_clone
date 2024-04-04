import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui_clone/model/video_category.dart';
import 'package:flutter_youtube_ui_clone/presentation/component/category_card.dart';
import 'package:flutter_youtube_ui_clone/repository/category_repository.dart';

class CategoryList extends StatefulWidget {
  final CategoryRepository repository;

  const CategoryList({super.key, required this.repository});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  List<VideoCategory> get _categories => widget.repository.getCategories();
  int _selectedId = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xff272727),
                  borderRadius: BorderRadius.circular(4)),
              height: 30,
              width: 40,
              child: const Icon(Icons.explore_outlined, color: Color(0xfff1f1f1)),
            ),
          ),
          Row(
              children: widget.repository
                  .getCategories()
                  .map((e) => CategoryCard(
                        category: e,
                        isSelected: (id) {
                          setState(() {
                            _selectedId = id;
                          });
                        },
                        select: e.id == _selectedId,
                      ))
                  .toList()),
          const Padding(
            padding: EdgeInsets.only(left: 8, right: 16),
            child: Text('의견 보내기', style: TextStyle(fontSize: 12, color: Color(0xff4f88df))),
          )
        ],
      ),
    );
  }
}
