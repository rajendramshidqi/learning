import 'package:flutter/material.dart';
import 'package:learning/main_layouts.dart';

class Profil extends StatelessWidget {
  final String nama;
  final String gender;
  final String image;
  final String point;
  final String level;
  final String zodiac;
  final String desc;

  const Profil({
    Key? key,
    required this.nama,
    required this.gender,
    required this.image,
    required this.point,
    required this.level,
    required this.zodiac,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: nama,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nama,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Gender: $gender",
                      style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                    ),
                    const SizedBox(height: 16),

                    Row(children: [SizedBox(width: 6), Text("Point: $point")]),
                    const SizedBox(height: 6),
                    Row(children: [SizedBox(width: 6), Text("Level: $level")]),
                    const SizedBox(height: 6),
                    Row(
                      children: [SizedBox(width: 6), Text("Zodiak: $zodiac")],
                    ),

                    const SizedBox(height: 20),
                    Text(
                      "Deskripsi",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      desc,
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.justify,
                    ),

                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
