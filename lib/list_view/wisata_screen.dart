import 'package:bunga_project/list_view/detail_wisata.dart';
import 'package:flutter/material.dart';

class WisataScreen extends StatelessWidget {
  WisataScreen({super.key});

// data
  final List<Map<String, dynamic>> wisataData = [
    {
      "nama": "Namsan Tower",
      "kota": "Seoul",
      "image": "images/namsan.jpg",
      "desc": "Namsan Tower adalah salah satu tower yang ada di seoul ...",
    },
    {
      "nama": "Jeju Island",
      "kota": "Jeju",
      "image": "images/jeju.jpg",
      "desc": "Pulau Jeju adalah pulau terbesar di Korea Selatan",
    },
    {
      "nama": "Pink Beach Lombok",
      "kota": "Lombok",
      "image": "images/pink.jpg",
      "desc": "Pink Beach adalah pantai yang ada di indonesia",
    },
    {
      "nama": "Raja Ampat",
      "kota": "Waisai",
      "image": "images/rajaampat.jpg",
      "desc": "Raja Ampat pulau yang sangat indah yang ada di indonesia",
    },
    {
      "nama": "Sunan Ibu",
      "kota": "Bandung Ciwidey",
      "image": "images/sunan.jpg",
      "desc": "Sunan Ibu adalah wisata yang ada di ciwidey bandung",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.pink, Colors.orange],
          ),
        ),
        child: ListView.builder(
          itemCount: wisataData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailWisataScreen(
                        nama: wisataData[index]["nama"],
                        kota: wisataData[index]["kota"],
                        image: wisataData[index]["image"],
                        desc: wisataData[index]["desc"],
                      ),
                    ));
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: 200,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("${wisataData[index]["image"]}"),
                      fit: BoxFit.cover),
                ),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  child: Text(
                    "${wisataData[index]["nama"]} - ${wisataData[index]["kota"]}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
