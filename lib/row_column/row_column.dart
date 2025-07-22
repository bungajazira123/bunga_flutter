import 'package:bunga_project/main_layout.dart';
import 'package:flutter/material.dart';

class LatihanRowColumn extends StatelessWidget {
  const LatihanRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Latihan Row Column',
      body: Center(
        child: Container(
          height: 80,
          width: double.infinity,
          color: Colors.blueGrey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Icon(Icons.call), Text('Call')],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Icon(Icons.navigation), Text('Route')],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Icon(Icons.share), Text('Share')],
              ),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://images.search.yahoo.com/images/view;_ylt=Awr4.FxyTX9o3QQXfeeJzbkF;_ylu=c2VjA3NyBHNsawNpbWcEb2lkAzExOTgxMzAwODRhYzEyODc5MzNiNTA3YzE2MDFiOTJmBGdwb3MDMwRpdANiaW5n?back=https%3A%2F%2Fimages.search.yahoo.com%2Fsearch%2Fimages%3Fp%3Dhearts2hearts%26type%3DE210US714G0%26fr%3Dmcafee%26fr2%3Dpiv-web%26tab%3Dorganic%26ri%3D3&w=650&h=433&imgurl=cdn.kbizoom.com%2Fmedia%2F2025%2F02%2F10042639%2Fhearts2hearts-thumbnail-1020251.jpeg&rurl=https%3A%2F%2Fkbizoom.com%2Fsms-girl-group-hearts2hearts-members-ninging-successor-seulgi-level-skills-already-viral%2F&size=110KB&p=hearts2hearts&oid=1198130084ac1287933b507c1601b92f&fr2=piv-web&fr=mcafee&tt=Hearts2Hearts+Profile+%282025+Updated%29+-+KBIZoom&b=0&ni=21&no=3&ts=&tab=organic&sigr=suPCylDw9cCn&sigb=JXUsH0QDZhYu&sigi=0.v4.5.Ibwvh&sigt=OcbIBjqDjMqI&.crumb=7lOHz7v8zfL&fr=mcafee&fr2=piv-web&type=E210US714G0'),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
