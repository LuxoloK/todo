import 'package:flutter/material.dart';

class Display extends StatefulWidget {
  const Display({Key? key}) : super(key: key);

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {

  String title = '';
  String description = '';
  String priority = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context,
          MaterialPageRoute(builder: (context) => const Display(),
          ),
        );
      },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Create new todo'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             const Text(
            'Enter Title:',
              style: TextStyle(
                fontSize: 20.0
              ),
            ),
            const SizedBox(height: 10.0),
            TextField(
              onChanged: (value){
                setState(() {
                  title = value;
                });
              },
              style: const TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                hintText: 'Enter title here',
                hintStyle: const TextStyle(
                  color: Colors.blueGrey,
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(5.0)
                ),
              ),
            ),
            const SizedBox(height: 25.0),

             const Text(
               'Enter Description:',
               style: TextStyle(
                   fontSize: 20.0
               ),
             ),
             const SizedBox(height: 10.0),
             TextField(
               onChanged: (value){
                 setState(() {
                   title = value;
                 });
               },
               style: const TextStyle(
                 color: Colors.black,
               ),
               decoration: InputDecoration(
                 hintText: 'Enter description here',
                 hintStyle: const TextStyle(
                   color: Colors.blueGrey,
                 ),
                 filled: true,
                 fillColor: Colors.white,
                 border: OutlineInputBorder(
                     borderSide: BorderSide.none,
                     borderRadius: BorderRadius.circular(5.0)
                 ),
               ),
             ),
          ],
              ),
            ),
          );
  }
}