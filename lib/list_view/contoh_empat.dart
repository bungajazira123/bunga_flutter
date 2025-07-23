import 'package:bunga_project/main_layout.dart';
import 'package:flutter/material.dart';

class LisItem {
  final Color color;
  final String text;

  LisItem(this.color, this.text);
}

class ListViewEmpat extends StatelessWidget {
  ListViewEmpat({super.key});

  final List<LisItem> itemList = [
    LisItem(Colors.red, 'partai Banteng'),
    LisItem(const Color.fromARGB(255, 57, 54, 244), 'partai Nasdem'),
    LisItem(const Color.fromARGB(255, 244, 231, 54), 'partai Golkar'),
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'List Separated',
      body: SizedBox(
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.black,
            );
          },
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              width: 200,
              height: 100,
              color: itemList[index].color,
              child: Center(child: Text(itemList[index].text)),
            );
          },
          itemCount: itemList.length,
        ),
      ),
    );
  }
}
