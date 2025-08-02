import 'package:flutter/material.dart';

class Post_Screen extends StatelessWidget {
  Post_Screen({super.key});

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
    's12',
    's13',
    's14',
    's15',
    's16',
    's17',
    's18',
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 31, 46, 1),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [_getItem(), _getContent()],
      ),
    );
  }

  _getItem() {
    return CustomScrollView(
      slivers: [
        SliverPadding(padding: EdgeInsetsGeometry.symmetric(vertical: 25)),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              children: [
                Row(
                  children: [
                    Text(
                      'Post',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'GB',
                      ),
                    ),
                    SizedBox(width: 10),
                    Image.asset('images/icon_arrow_down.png'),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'GB',
                      ),
                    ),
                    SizedBox(width: 10),
                    Image.asset('images/icon_arrow_right_box.png'),
                  ],
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 284,
              height: 375,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/p01.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsetsGeometry.all(10),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate((
              BuildContext context,
              int index,
            ) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/${imageNameS[index]}.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            }, childCount: 18),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 5,
              childAspectRatio: 1.0,
            ),
          ),
        ),
      ],
    );
  }

  _getContent() {
    return Container(
      height: 83,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff272B40),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 10, right: 18, left: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Draft',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'GB',
              ),
            ),
            Text(
              'Gallery',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'GB',
              ),
            ),
            Text(
              'Take',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'GB',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
