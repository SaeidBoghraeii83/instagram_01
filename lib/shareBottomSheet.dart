import 'dart:ui';

import 'package:flutter/material.dart';

class Sharebottomsheet extends StatelessWidget {
  const Sharebottomsheet({super.key, this.controller});
  final ScrollController? controller;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 40.0, sigmaY: 40.0),
        child: Container(
          color: Color.fromRGBO(255, 255, 255, 0.09),
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: _getContent(),
        ),
      ),
    );
  }

  Widget _getContent() {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        CustomScrollView(
          controller: controller,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Container(width: 74, height: 5, color: Colors.white),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 20,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Share',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'GB',
                            fontSize: 21,
                          ),
                        ),
                        Spacer(),
                        Image.asset('images/icon_share_bottomsheet.png'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 30),

                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(15),
                      child: Container(
                        width: 300,
                        height: 90,
                        color: Colors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('images/icon_search.png'),
                              SizedBox(width: 20),
                              SizedBox(
                                width: 200,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hint: Text(
                                      'Search User',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'GB',
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),

                                  textAlign: TextAlign.start,

                                  style: TextStyle(
                                    color: Colors.white,

                                    fontFamily: 'GB',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return _getItemGrid();
              }, childCount: 50),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 30,
                crossAxisSpacing: 30,
                mainAxisExtent: 90,
              ),
            ),
            SliverPadding(padding: EdgeInsetsGeometry.only(top: 113)),
          ],
        ),
        Positioned(
          bottom: 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'share',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'GB',
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _getItemGrid() {
    return Column(
      children: [
        Container(child: Image.asset('images/f4.png')),
        SizedBox(height: 10),
        Text(
          'Malihe',
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'GB', fontSize: 12, color: Colors.white),
        ),
      ],
    );
  }
}
