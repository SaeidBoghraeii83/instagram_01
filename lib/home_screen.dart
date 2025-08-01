import 'dart:ui';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:instagram_01/shareBottomSheet.dart';

class Home_Screen extends StatefulWidget {
  Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  var itemName = ['Malihe', 'Poyan_02', 'Bardiya', 'Eman', 'Reza'];
  var itemTitile = [
    'پویان رحمانی',
    'ملیحه عباسی',
    'مانی خوشبین',
    'بردیا سعادت',
    'ایمان احمدی',
  ];

  var imageNameP = ['p5', 'p4', 'p1', 'p2', 'p3'];
  var imageNameS = ['f5', 'f4', 'f1', 'f2', 'f3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      backgroundColor: Color.fromRGBO(28, 31, 46, 1),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: _getButtomSheet()),
          SliverToBoxAdapter(child: _getListStoryBuilderItem()),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Column(
                children: [
                  _getInformationProfile(imageNameS[index], itemTitile[index]),
                  _getPostItem(imageNameP[index]),
                ],
              );
            }, childCount: 5),
          ),
        ],
      ),
    );
  }

  Widget _getButtomSheet() {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(backgroundColor: Colors.pinkAccent),
      onPressed: () {
        showModalBottomSheet(
          barrierColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: DraggableScrollableSheet(
                initialChildSize: 0.5,
                minChildSize: 0.2,
                maxChildSize: 0.7,
                builder: (context, controler) {
                  return Sharebottomsheet(controller: controler);
                },
              ),
            );
          },
        );
      },
      child: Text(
        'Open BottomSheet',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'GB',
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  _getListStoryBuilderItem() {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemName.length,
        itemBuilder: (context, index) {
          return index == 0
              ? _getAddStory()
              : _getStoryListBox(itemName[index], imageNameS[index]);
        },
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      backgroundColor: Color.fromRGBO(28, 31, 46, 1),
      leadingWidth: 150,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          'images/moodinger_logo.png',
          width: 200,
          height: 200,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('images/icon_direct.png'),
        ),
      ],
    );
  }

  Widget _getAddStory() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 10,
            right: 10,
            bottom: 10,
          ),
          child: Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: BoxBorder.all(color: Colors.white, width: 2),
              image: DecorationImage(image: AssetImage('images/icon_plus.png')),
            ),
          ),
        ),
        Text(
          'Your Story',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'GS',
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _getStoryListBox(String itemName, String imageName) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
      child: Column(
        children: [
          DottedBorder(
            borderType: BorderType.RRect,
            radius: Radius.circular(17),
            padding: EdgeInsets.all(4),
            color: Color(0xffF35383),
            dashPattern: [40, 10],
            strokeWidth: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: Container(
                height: 58,
                width: 58,
                child: Image.asset('images/$imageName.png'),
              ),
            ),
          ),
          SizedBox(height: 12),
          Text('$itemName', style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  _getInformationProfile(String imageName, String titleText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),

              image: DecorationImage(
                image: AssetImage('images/$imageName.png'),
              ),
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$titleText',
                style: TextStyle(color: Colors.white, fontFamily: 'GB'),
              ),
              Text(
                'سعید بقرائی برنامه نویس موبایل',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'GB',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Spacer(),
          Image.asset('images/icon_menu.png'),
        ],
      ),
    );
  }

  Widget _getPostItem(String imageName) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 30),
      child: Container(
        width: 440,
        height: 440,

        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              top: 1,
              child: Image.asset('images/$imageName.png', height: 400),
            ),
            Positioned(
              bottom: 0,
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
                  child: Container(
                    width: 340,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.black,

                      borderRadius: BorderRadius.circular(8),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Image.asset('images/icon_hart.png'),

                            SizedBox(width: 5),

                            Text(
                              '2.6k',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'GB',
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset('images/icon_comments.png'),
                            SizedBox(width: 5),
                            Text(
                              '2.6k',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'GB',
                              ),
                            ),
                          ],
                        ),

                        Image.asset('images/icon_share.png'),
                        Image.asset('images/icon_save.png'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getItemGrid() {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            child: Image.asset('images/profile.png'),
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Saeid',
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'GB', fontSize: 12, color: Colors.white),
        ),
      ],
    );
  }
}
