import 'package:bunga_project/main_layout.dart';
import 'package:flutter/material.dart';

class ListViewTiga extends StatelessWidget {
  ListViewTiga({super.key});

  // data
  final List<Color> colorList = [
    Colors.red,
    Color.fromARGB(255, 76, 120, 175),
    const Color.fromARGB(255, 243, 233, 33)
  ];
  final List<String> partaiList = [
    'Partai Banteng',
    'Partai Nasdem',
    'Partai Golkar',
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Contoh List View Builder',
      body: SizedBox(
        width: double.infinity,
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colorList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              width: 200,
              height: 300,
              color: colorList[index],
              child: Center(child: Text(partaiList[index])),
            );
          },
        ),
      ),
    );
  }
}
