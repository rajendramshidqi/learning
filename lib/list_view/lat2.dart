import 'package:flutter/material.dart';
import 'package:learning/list_view/detail.dart';
class Lat2 extends StatelessWidget {
  Lat2({super.key});

  final List<Map<String, dynamic>> WisataData = [
    {
      "nama": "ujang",
      "gender": "L",
      "image": "images/aerial-2.jpg",
      "point": "27000",
      "level": "5",
      "zodiac": "pisces",
      "desc": "pro peler nih bos",
    },
    {
      "nama": "jends",
      "gender": "L",
      "image": "images/hawai.jpg",
      "point": "2",
      "level": "4",
      "zodiac": "aries",
      "desc": "info mabar",
    },
    {
      "nama": "ibiza",
      "gender": "L",
      "image": "images/caption.jpg",
      "point": "2",
      "level": "4",
      "zodiac": "taurus",
      "desc": "ibiza beach",
    },
    {
      "nama": "ubud",
      "gender": "L",
      "image": "images/atlas-beach-fest.jpeg",
      "point": "2",
      "level": "4",
      "zodiac": "taurus",
      "desc": "atlas Beach Club",
    },
    {
      "nama": "santorini",
      "gender": "grace",
      "image": "images/d1.jpg",
      "point": "2",
      "level": "4",
      "zodiac": "taurus",
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
            final wisata = WisataData[index];
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(wisata["image"]),
                    ),
                    const SizedBox(width: 12),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            wisata["nama"],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(wisata["gender"]),
                          Text(
                            "Point: ${wisata["point"]}",
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ),

                
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => Profil(
                                  nama: wisata["nama"],
                                  gender: wisata["gender"],
                                  image: wisata["image"],
                                  desc: wisata["desc"],
                                  point: wisata["point"],
                                  level: wisata["level"],
                                  zodiac: wisata["zodiac"],
                                ),
                          ),
                        );
                      },

                      child: Text("Lihat Profil"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
