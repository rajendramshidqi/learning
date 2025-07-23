import 'package:flutter/material.dart';
import 'package:learning/list_view/wisata2.dart';

class WisataScreen extends StatelessWidget {
  WisataScreen({super.key});
  final List<Map<String, dynamic>> WisataData = [
    {
      "nama": "Maldives",
      "kota": "Maldives",
      "image": "images/aerial-2.jpg",
      "desc": "Malidves Beach",
    },
    {
      "nama": "Hawai beach",
      "kota": "oahu",
      "image": "images/hawai.jpg",
      "desc": "atlas Beach Club",
    },
    {
      "nama": "ibiza",
      "kota": "catalunya",
      "image": "images/caption.jpg",
      "desc": "ibiza beach",
    },
    {
      "nama": "ubud",
      "kota": "bali",
      "image": "images/atlas-beach-fest.jpeg",
      "desc": "atlas Beach Club",
    },
    {
      "nama": "santorini",
      "kota": "grace",
      "image": "images/d1.jpg",
      "desc": "santorini beach club",
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
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: ListView.builder(
          itemCount: WisataData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => DetailWisataScreen(
                          nama: WisataData[index]["nama"],
                          kota: WisataData[index]["kota"],
                          image: WisataData[index]["image"],
                          desc: WisataData[index]["desc"],
                        ),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: 250,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("${WisataData[index]["image"]}"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  child: Text(
                    "${WisataData[index]["nama"]} - ${WisataData[index]["kota"]}",
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
