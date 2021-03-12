import 'package:flutter/material.dart';

enum Difficulty {
  Easy,
  Medium,
  Hard,
  None,
}

class Task {
  int id;
  String title;
  String description;
  DateTime startDate;
  DateTime endDate;
  Difficulty diff;
  bool isCompleted;

  Task(int id,String title, String desciption, DateTime startDate, DateTime endDate, Difficulty diff, bool completed) {
    this.id = id;
    this.title = title;
    this.description = description;
    this.startDate = startDate;
    this.endDate = endDate;
    this.diff = diff;
    this.isCompleted = completed;
  }

  Task.empty(){
    this.diff = Difficulty.None;
  }
}

class TaskBox extends StatefulWidget {
  Task task;

  TaskBox(Task tsk){
    this.task = tsk;
  }

  @override
  _TaskBoxState createState() => _TaskBoxState();

}

class _TaskBoxState extends State<TaskBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom:15),
      width: 315,
      child: Row(              
        children: <Widget>[
          Container(
            width: 234.0,
            height: 65.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(37.0),
              color: const Color(0x40ffffff),
              border: Border.all(width: 1.0, color: const Color(0x40707070)),
            ),
            child: Container(
              padding: const EdgeInsets.only(top: 10, bottom:10, left: 10),
              child: Column(        
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(bottom:5),
                    width: 197,
                    child: Text(     
                      widget.task.title ?? 'Unnamed',
                      style: TextStyle(
                        fontFamily: 'Microsoft YaHei UI',
                        fontSize: 20,
                        color: const Color(0xff000000),
                        shadows: [
                          Shadow(
                            color: const Color(0x30000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ), 
                  Container(
                    width: 197,
                    child: Text(     
                     widget.task.diff.toString().replaceAll("Difficulty.", ""),
                    style: TextStyle(
                      fontFamily: 'Microsoft YaHei UI',
                      fontSize: 12,                 
                      color: getColorFromDiff(widget.task.diff)        
                    ),
                    textAlign: TextAlign.left,
                    ),
                  ), 
                ],
              )    
            ),    
          ),  
          Spacer(),     
          TaskCheckBox(),
        ],
      ),
    );  
  }
  
  Color getColorFromDiff(Difficulty diff){
    Color c;

    switch (diff) {
      case Difficulty.Easy:
        c = Colors.green;
        break;
      case Difficulty.Medium:
        c = const Color(0xffffaa00);
        break;
      case Difficulty.Hard:
        c = Colors.red;
        break;
      default:
      c = Colors.grey;
    }

    return c;
  }
}

class TaskCheckBox extends StatefulWidget {
  @override
  _TaskCheckBoxState createState() => _TaskCheckBoxState();
}


class _TaskCheckBoxState extends State<TaskCheckBox> {
  bool is_selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          is_selected = !is_selected;
        });
      },
      child :Container(
        width: 65.0,
        height: 66.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
          color: is_selected ? const Color(0xff6e00ff) : const Color(0x40ffffff),
        border: Border.all(width: 1.0, color: const Color(0x40707070)),
        ),
      ),
    );
  }
}