import 'package:flutter/material.dart';

import 'months.dart';
class UpperNavBar extends StatefulWidget {
  @override
  _UpperNavBarState createState() => _UpperNavBarState();
}

class _UpperNavBarState extends State<UpperNavBar> {



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [

          MonthDisplay(),


          Row(
          children: [


          Icon(Icons.circle,color: Colors.green,),
            Text('avaliable' ,style:TextStyle( color:Colors.black26,) ),
            SizedBox(width: 5,),
            Icon(Icons.circle,color: Colors.red,),
            Text('not avaliable' ,style:TextStyle( color:Colors.black26,) ),
      ],
      ),




        ],
      ),
    );
  }
}
