import 'package:flutter/material.dart';
import 'package:learning/main_layouts.dart';

class ListItem {
  final Color color;
  final String text;
  ListItem(this.color, this.text);
}

class ListViewEmpat extends StatelessWidget {
  ListViewEmpat({super.key});

  final List<ListItem> itemList = [
    ListItem(Colors.red, 'partai banteng'),
    ListItem(Colors.green, 'partai banteng'),
    ListItem(Colors.blue, 'partai banteng'),
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'List Separrated',
      body: SizedBox(
        child: ListView.separated(
          itemCount: itemList.length,
          separatorBuilder: (context, index) {
            return const Divider(color: Colors.black);
          },
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              width: 200,
              height: 100,
              color: itemList[index].color,
              child: Center(child: Text(itemList[index].text)),
            );
          },
        ),
      ),
    );
  }
}
