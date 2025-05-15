import 'dart:developer';

import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive? 
    CircleAvatar(
      radius: 38,
        backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 36,
        backgroundColor: color,
      ),
    ) :
    CircleAvatar(
      radius: 38,
      backgroundColor: color,
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  
  int currentIndex = 0;
  List<Color> colors = [
    Color(0xff776D5A),
    Color(0xff987D7C),
    Color(0xffA09CB0),
    Color(0xffA3B9C9),
    Color(0xffABDAE1),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child:  GestureDetector(
              onTap: (){
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index ,
                color: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}