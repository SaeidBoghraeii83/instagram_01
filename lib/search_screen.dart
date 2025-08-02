import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Search_Screen extends StatelessWidget {
  Search_Screen({super.key});

  @override
  var imageNameS = [
    's1',
    's2',
    's3',
    's4',
    's5',
    's6',
    's7',
    's8',
    's9',
    's10',
    's11',
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 31, 46, 1),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: _getSearchBox()),
          SliverToBoxAdapter(child: _getStoryList()),
          SliverPadding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 30, horizontal: 8),
            sliver: _getSliverGridItem(),
          ),
        ],
      ),
    );
  }

  Widget _getSearchBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
      child: Container(
        width: 394,
        height: 46,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromRGBO(39, 43, 64, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Row(
            children: [
              Image.asset('images/icon_search.png'),
              SizedBox(width: 10),
              SizedBox(
                width: 200,
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'GB',
                    fontSize: 13,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: 'GB',
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Image.asset('images/icon_scan.png'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getStoryList() {
    var itemName = ['All', 'Account', 'Hashtag', 'Caption', 'Story', 'Comment'];
    return Container(
      height: 23,

      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            width: 60,
            decoration: BoxDecoration(
              color: Color.fromRGBO(39, 43, 64, 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                itemName[index],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'GB',
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _getSliverGridItem() {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Container(
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(15),

            child: Image.asset(
              'images/${imageNameS[index]}.png',
              fit: BoxFit.cover,
            ),
          ),
        );
      }, childCount: 11),
      gridDelegate: SliverQuiltedGridDelegate(
        crossAxisCount: 3,
        mainAxisSpacing: 5,
        crossAxisSpacing: 10,
        repeatPattern: QuiltedGridRepeatPattern.inverted,
        pattern: [
          QuiltedGridTile(2, 2),
          QuiltedGridTile(2, 1),
          QuiltedGridTile(2, 2),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
        ],
      ),
    );
  }
}
