import 'package:flutter/material.dart';
import 'package:flutter_profile2/darwer.dart';
import 'package:getwidget/getwidget.dart';

class CombinedPage extends StatefulWidget {
  const CombinedPage({super.key});

  @override
  State<CombinedPage> createState() => _CombinedPageState();
}

class _CombinedPageState extends State<CombinedPage> {
  var items = List<String>.generate(20, (i) => 'Pathom $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mix View"),
      ),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return Card(
                  child: Center(
                    child: Text('Item $index'),
                  ),
                );
              },
              itemCount: 20,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: GFListTile(
                    titleText: items[index],
                    subTitleText: 'computer science',
                    icon: const Icon(Icons.favorite),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
