import 'package:flutter/material.dart';

import 'TaskBox.dart';

class TaskAddScreen extends StatefulWidget {

  Task task;
  TaskAddScreen({this.task});

  @override
  _TaskAddScreenState createState() => _TaskAddScreenState();
}

class _TaskAddScreenState extends State<TaskAddScreen> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Transform.translate(
        offset: Offset(0.0, 0.0),
        child: Container(         
          width: 375.0,
          height: 812.0,
          decoration: BoxDecoration(
           color: const Color(0x0d6e00ff),
           border: Border.all(width: 1.0, color: const Color(0xff000000)),
          ),
          padding: const EdgeInsets.only(left:15, right: 35, top: 45),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context, true);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 15),
                      child: new Icon(Icons.arrow_back_ios_rounded, color: Colors.grey, size: 35), 
                    )
                    
                  ),
                  
                  Expanded(
                    child: TextFormField(       
                      initialValue: widget.task.title ?? '',
                      onChanged: (newText) { widget.task.title = newText; },     
                      style: TextStyle(fontFamily: 'Microsoft YaHei UI', fontSize: 25),                                          
                      decoration: InputDecoration(                    
                        hintText: 'Enter Task Title...',
                        hintStyle: TextStyle(fontFamily: 'Microsoft YaHei UI', fontSize: 25),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(     
                      'Difficulty: ',
                      style: TextStyle(
                        fontFamily: 'Microsoft YaHei UI',
                        fontSize: 15,
                          color: Colors.black,           
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Expanded(
                    child: Container(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: DropdownButtonFormField<Difficulty>(
                        decoration: InputDecoration(                      
                          hintText: 'Enter Task Title...',
                          hintStyle: TextStyle(fontFamily: 'Microsoft YaHei UI', fontSize: 25),
                          border: InputBorder.none,
                        ),             
                        value: widget.task.diff,
                        onChanged: (Difficulty newValue) {
                          setState(() {
                            widget.task.diff = newValue;       
                          });
                        },
                        items: Difficulty.values.map((Difficulty classType) {
                          return DropdownMenuItem<Difficulty>(
                            value: classType,
                            child: Text(                 
                              classType.toString().replaceAll("Difficulty.", ""),                 
                            )
                          );
                        }).toList(),
                      ),
                    ),             
                  ),
                ],
              ),                
              Container(
                height: 100,
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 13, left: 10),
                      alignment: Alignment.topLeft,
                      child: Text(     
                        'Description: ',
                        style: TextStyle(
                          fontFamily: 'Microsoft YaHei UI',
                          fontSize: 15,
                          color: Colors.black,           
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(                        
                      child: Expanded(                        
                        child: TextFormField(
                          initialValue: widget.task.description ?? '',
                          onChanged: (newText) { widget.task.description = newText; },
                          maxLines: 4,                              
                          style: TextStyle(fontFamily: 'Microsoft YaHei UI', fontSize: 15),                                          
                          decoration: InputDecoration( 
                            hintMaxLines: 4,  
                            hintText: 'Enter Description...',
                            hintStyle: TextStyle(fontFamily: 'Microsoft YaHei UI', fontSize: 15),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),               
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}