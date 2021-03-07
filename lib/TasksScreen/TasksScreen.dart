import 'package:TaskM/TasksScreen/TaskBox.dart';
import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          // background
          Transform.translate(
              offset: Offset(0.0, 0.0),
              child: Container(
                width: 375.0,
                height: 812.0,
                decoration: BoxDecoration(
                  color: const Color(0x0d6e00ff),
                  border: Border.all(width: 1.0, color: const Color(0xff000000)),
                ),
              ),
            ),

            // The purple box in the top
            Transform.translate(
              offset: Offset(0.0, -24.0),
              child: Container(
                width: 375.0,
                height: 164.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21.0),
                  color: const Color(0xff6e00ff),
                ),
              ),
            ),

          // Text in the purple box "Tasks"
          Transform.translate(
            offset: Offset(42.0, 52.0),
            child: SizedBox(
              width: 267.0,
              height: 104.0,
              child: Text(
                'Tasks',
                style: TextStyle(
                  fontFamily: 'Microsoft YaHei',
                    fontSize: 50,
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
              ),
            ),
          ),

          // Menu button
          Transform.translate(
            offset: Offset(300.0, 66.0),
            child:
               // Adobe XD layer: 'Layer 2' (group)
            SizedBox(
              width: 48.0,
              height: 48.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 48.0, 48.0),
                    size: Size(48.0, 48.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'invisible box' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 48.0, 48.0),
                          size: Size(48.0, 48.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(6.0, 10.0, 36.0, 28.0),
                    size: Size(48.0, 48.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'icons Q2' (group)
                    Stack(
                      children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 36.0, 28.0),
                        size: Size(36.0, 28.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 36.0, 4.0),
                              size: Size(36.0, 28.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              fixedHeight: true,
                              child: SvgPicture.string(
                                _svg_it2fzi,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 12.0, 36.0, 4.0),
                              size: Size(36.0, 28.0),
                              pinLeft: true,
                              pinRight: true,
                              fixedHeight: true,
                              child: SvgPicture.string(
                                _svg_lbjw5p,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 24.0, 36.0, 4.0),
                              size: Size(36.0, 28.0),
                              pinLeft: true,
                              pinRight: true,
                              pinBottom: true,
                              fixedHeight: true,
                              child: SvgPicture.string(
                                _svg_87bjka,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        Transform.translate(
          offset: Offset(20, 145),
          child: Container(
            padding: const EdgeInsets.only(right: 10, top: 15),
            width: 327,
            height: 627,
            child: Expanded(
              child: ListView(
                padding: const EdgeInsets.only(bottom: 100),
                children: [             
                  TaskBox(title: 'Run 1 km', diff: "MEDIUM"),
                  TaskBox(),
                  TaskBox(),
                ],
              ),
            ),
          ),
        ),

        Positioned(
          bottom: 25,
          right: 25,
          child: GestureDetector(
            child: Container(
              width: 50,
              height: 50,
              child: new Icon(Icons.add, color: Colors.white, size: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: const Color(0xff6e00ff),                    
              ),   
            )
          ),
        ),

        ],
      ), 
    );
  }
}

const String _svg_it2fzi =
    '<svg viewBox="6.0 10.0 36.0 4.0" ><path  d="M 42 12 C 42 13.10456943511963 41.10456848144531 14 40 14 L 8 14 C 6.895430564880371 14 6 13.10456943511963 6 12 L 6 12 C 6 10.89543056488037 6.895430564880371 10 8 10 L 40 10 C 41.10456848144531 10 42 10.89543056488037 42 12 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lbjw5p =
    '<svg viewBox="6.0 22.0 36.0 4.0" ><path  d="M 42 24 C 42 25.10457038879395 41.10456848144531 26 40 26 L 8 26 C 6.895430564880371 26 6 25.10456848144531 6 24 L 6 24 C 6 22.89542961120605 6.895430564880371 22 8 22 L 40 22 C 41.10456848144531 22 42 22.89543151855469 42 24 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_87bjka =
    '<svg viewBox="6.0 34.0 36.0 4.0" ><path  d="M 42 36 C 42 37.10456848144531 41.10456848144531 38 40 38 L 8 38 C 6.895430564880371 38 6 37.10456848144531 6 36 L 6 36 C 6 34.89543151855469 6.895430564880371 34 8 34 L 40 34 C 41.10456848144531 34 42 34.89543151855469 42 36 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wmm3sz =
    '<svg viewBox="0.0 0.0 16.4 15.0" ><path transform="translate(-9.0, -10.0)" d="M 18.56466674804688 24.69220542907715 L 25.06863784790039 18.25787734985352 C 25.28299713134766 18.06492805480957 25.40503311157227 17.7926082611084 25.40503311157227 17.5072078704834 C 25.40503311157227 17.22180366516113 25.28299713134766 16.94948577880859 25.06863784790039 16.75653648376465 L 18.56466674804688 10.32220840454102 C 18.1650390625 9.938638687133789 17.54184722900391 9.893350601196289 17.08897399902344 10.21496963500977 C 16.822021484375 10.3908576965332 16.65319061279297 10.67815589904785 16.63180160522461 10.99293327331543 C 16.61040878295898 11.30771064758301 16.73887252807617 11.61445426940918 16.97966003417969 11.82355117797852 L 21.68001556396484 16.4348201751709 L 10.09310531616211 16.4348201751709 C 9.489398956298828 16.4348201751709 9 16.91494178771973 9 17.50720405578613 C 9 18.0994701385498 9.489398956298828 18.57959365844727 10.09310531616211 18.57959365844727 L 21.68001556396484 18.57959365844727 L 16.97966003417969 23.19085884094238 C 16.73886871337891 23.39995956420898 16.61040878295898 23.70670127868652 16.63179779052734 24.02147674560547 C 16.6531867980957 24.33625793457031 16.82201766967773 24.62355613708496 17.08897399902344 24.79944610595703 C 17.54184722900391 25.12106132507324 18.1650390625 25.07577323913574 18.56466674804688 24.69220924377441 Z" fill="#000000" fill-opacity="0.34" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';