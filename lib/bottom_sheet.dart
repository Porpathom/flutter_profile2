import 'package:flutter/material.dart';
import 'package:flutter_profile2/Sheet_content.dart';
import 'package:flutter_profile2/darwer.dart';

class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({super.key});

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar : AppBar(
        title: Text("My Bottom Sheet"),
      ),
      drawer: MyDrawer(),
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
                    const Center(child: SizedBox(height: 24)),
                    ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(context: context, builder: (BuildContext context) { 
                            return SheetContent();
                           }, );
                        },
                        child:const Text('Open Bottom Sheet',
                        style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ],
      ),
    );
    
  }
}