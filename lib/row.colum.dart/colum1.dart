import 'package:flutter/material.dart';
import 'package:learning/main_layouts.dart';

class ColSatu extends StatelessWidget {
  const ColSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Col 1',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('widget Text 1'),
          Text('widget Text 2'),
          Text('widget Text 3'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Widget Text 1'),
              Text('Widget Text 2'),
              Text('Widget Text 3'),
            ],
          ),
        ],
      ),
    );
  }
}
