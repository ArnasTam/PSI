import 'package:flutter/material.dart';

class TaskBox extends StatelessWidget {
  final String title;
  final String diff;

  TaskBox({this.title, this.diff});

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
                    title ?? 'Unnamed',
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
                    diff ?? 'DIFFICULTY NOT SELECTED',
                    style: TextStyle(
                      fontFamily: 'Microsoft YaHei UI',
                      fontSize: 10,
                      color: const Color(0xffffaa00),           
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