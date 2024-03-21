

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_todo_mvvm/models/todo_item.dart';
import 'package:my_todo_mvvm/view_models/todo_list_view_model.dart';

//View 클래스
class TodoListView extends StatefulWidget {
  const TodoListView({super.key});

  @override
  State<TodoListView> createState() => _TodoListViewState();
} // end of class

class _TodoListViewState extends State<TodoListView> {

  final TextEditingController _controller = TextEditingController();
  final TodoListViewModel listViewModel = TodoListViewModel();


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
           controller: _controller,
           decoration: InputDecoration(
             hintText: 'Enter todo item...',
             suffix: IconButton(
               icon: Icon(Icons.add),
               onPressed: (){
                 setState(() {
                   listViewModel.addItem(_controller.text);
                   // 빌드메서드 재호출
                   _controller.clear();
                 });
               },
             )
           ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listViewModel.items.length,
              itemBuilder: (context, index){
                var item = listViewModel.items[index];
                  // 두개의 인수값을 받아서 위젯을 리턴함
                return ListTile(
                  title: Text(item.title),
                  trailing: Checkbox(value: item.isDone, onChanged: (value){
                    print("value : ${value}");
                    setState(() {
                      listViewModel.toggleItem(item);
            
                    });
                  },
                  ),
                );
            },),
          )
        ],
      ),
    );
  }
} // end of _TodoListViewState
