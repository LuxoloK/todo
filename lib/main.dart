import 'package:flutter/material.dart';
import 'package:todo/list.dart';
import 'package:todo/display.dart';

void main() {
  runApp(const MaterialApp(home: TodoList(),
  ));
}
class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<Todos> todos = [
    Todos(title: 'Wash a car', description: 'Wash a car with hot water', color: Colors.orange),
    Todos(title: 'Wash a car', description: 'Wash a car with hot water', color: Colors.blue),
    Todos(title: 'Wash a car', description: 'Wash a car with hot water', color: Colors.red),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    floatingActionButton: FloatingActionButton(onPressed:() {
      Navigator.pop(context,
          MaterialPageRoute(builder: (context) => const Display(),
          ),
      );
    },
     child: const Icon(Icons.add),
    ),
      appBar: AppBar(
        title: const Text('Todo List'),
        centerTitle: true,
    ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder:(context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 2.0),
            child: Card(
              color: todos[index].color,
              child: Padding(padding: const EdgeInsets.symmetric(
                  vertical: 18.0, horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(todos[index].title),
                        Text(todos[index].description),
                      ],
                    ),
                    const Icon(Icons.check_box),
                  ],
                ),
              ),
            ),
          );
        } ),

    );
  }
}
