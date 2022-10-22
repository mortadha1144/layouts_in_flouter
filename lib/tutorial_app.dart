import 'package:flutter/material.dart';

class MyTutorial extends StatelessWidget {
  const MyTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Image.asset('images/lake.jpg'),
            _buildTitleRow(),
            _buildIconsRow()
          ],
        ),
      ),
    );
  }

  Widget _buildTitleRow() {
    return Row(
      children: [
        Column(
          children: const [
            Text('data'),
            Text(''),
          ],
        ),
        Row(
          children: const [
            Icon(Icons.star),
            Text('41'),
          ],
        )
      ],
    );
  }

  Widget _buildIconsRow() {
    return Row(
      children: [
        Column(
          children: const [
            Icon(Icons.call),
            Text('CALL'),
          ],
        ),
        Column(
          children: const [
            Icon(Icons.near_me),
            Text('ROUTE'),
          ],
        ),
        Column(
          children: const [
            Icon(Icons.share),
            Text('SHARE'),
          ],
        ),
      ],
    );
  }
}
