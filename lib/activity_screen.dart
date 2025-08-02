import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:instagram_01/home_screen.dart';
import 'package:instagram_01/model/enum/activity_type_enum.dart';
import 'package:instagram_01/post_screen.dart';

class Activity_Screen extends StatelessWidget {
  const Activity_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: TabBarItem());
  }
}

class TabBarItem extends StatelessWidget {
  const TabBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 31, 46, 1),
      body: SafeArea(child: _getTabItem()),
    );
  }

  Widget _getTabItem() {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      animationDuration: const Duration(seconds: 1),
      child: Scaffold(
        backgroundColor: Color.fromRGBO(28, 31, 46, 1),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Color.fromRGBO(28, 31, 46, 1)),
              child: Expanded(
                child: TabBar(
                  dividerColor: Color.fromRGBO(28, 31, 46, 1),
                  labelColor: Colors.white,
                  indicatorWeight: 0.7,
                  indicatorColor: Colors.pinkAccent,
                  labelStyle: TextStyle(fontFamily: 'GB', fontSize: 16),
                  unselectedLabelColor: Colors.white,
                  tabAlignment: TabAlignment.center,
                  isScrollable: true,

                  tabs: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 55),
                      child: Tab(text: 'Following'),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 55),
                      child: Tab(text: 'You', height: 90),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(children: [_getSampleList(), _getSampleList()]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getSampleList() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 33, top: 30),
            child: Text(
              'New',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'GB',
                fontSize: 20,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return _getItemFollowing(ActivityStatus.like);
          }, childCount: 2),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 33, top: 30),
            child: Text(
              'Today',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'GB',
                fontSize: 20,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return _getItemFollowing(ActivityStatus.following);
          }, childCount: 2),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return _getItemFollowing(ActivityStatus.following);
          }, childCount: 2),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 33, top: 30),
            child: Text(
              'This week',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'GB',
                fontSize: 20,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return _getItemFollowing(ActivityStatus.folloBack);
          }, childCount: 6),
        ),
      ],
    );
  }

  Widget _getItemFollowing(ActivityStatus status) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  shape: BoxShape.circle,
                ),
                width: 6,
                height: 6,
              ),
              SizedBox(width: 10),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/f3.png')),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Eman Ahmadi',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'GB',
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(width: 7),
                      Text(
                        'Started following',
                        style: TextStyle(
                          color: Color.fromRGBO(197, 197, 197, 1),
                          fontFamily: 'GB',
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'you',
                        style: TextStyle(
                          color: Color.fromRGBO(197, 197, 197, 1),
                          fontFamily: 'GM',
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(width: 7),
                      Text(
                        '3min',
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'GB',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              _getActionActibityRow(status),
            ],
          ),
        ],
      ),
    );
  }

  Widget _getActionActibityRow(ActivityStatus status) {
    switch (status) {
      case ActivityStatus.folloBack:
        return ElevatedButton(
          onPressed: () {},
          child: Text(
            'Follow',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontFamily: 'GB',
              color: Colors.white,
            ),
          ),
        );
      case ActivityStatus.like:
        return SizedBox(
          height: 40,
          width: 40,
          child: ClipRRect(
            child: Image.asset('images/L1.png'),
            borderRadius: BorderRadiusGeometry.circular(10),
          ),
        );
      case ActivityStatus.following:
        return ElevatedButton(
          onPressed: () {},
          child: Text(
            'Message',
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'GB',
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(30, 30),
            backgroundColor: Colors.transparent,
            side: BorderSide(color: Colors.white),
          ),
        );
      default:
        return ElevatedButton(
          onPressed: () {},
          child: Text(
            'Message',
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'GB',
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(70, 36),
            backgroundColor: Colors.transparent,
            side: BorderSide(color: Colors.white),
          ),
        );
    }
  }
}
