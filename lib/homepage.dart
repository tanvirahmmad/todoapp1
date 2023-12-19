import 'package:flutter/material.dart';
import 'package:todoapp1/dialogbox.dart';
import 'todotile.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final _controller =TextEditingController();
  List toDoList =[
    ["Make Tutorial",false],
    ["Do Exercise" ,false]
  ];
  void checkBoxchanged(bool? value,int index) {
setState(() {
  toDoList [index][1]=!toDoList[index][1];
});
  }
  void saveNewtask(){
    setState(() {
      toDoList.add([_controller.text,false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }
  void creatNewtask(){
    showDialog(context: context, builder: (context){
      return diaLogbox(
        onsave: saveNewtask,
        oncancel: ()=>Navigator.of(context).pop(),
        Controller:_controller ,
      );
    },
    );
  }
  void deleteTask(int index){
setState(() {
  toDoList.removeAt(index);
});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade200,
      appBar: AppBar(
        title: Text("TO DO"),
        elevation: 0,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(onPressed: creatNewtask,child: Icon(Icons.add),),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder:(context,index){
          return todotile(taskname: toDoList[index][0],
              taskcomplete: toDoList[index][1],
              onChanged: (value)=> checkBoxchanged(value,index),
              deleteFunction :(contex)=>deleteTask(index));
        } ,
        ),



    );
  }
}
