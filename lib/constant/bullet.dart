import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/constant/font.dart';
class MyList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
         ListTile(
          leading:  MyBullet(),
          title:  Text('be clear',style: font(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15,color: Colors.grey))),
        ),
         ListTile(
          leading:  MyBullet(),
          title:  Text('contains the owner of the shop',style: font(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15,color: Colors.grey))),
        ),
        ListTile(
          leading:  MyBullet(),
          title:  Text('Show products from shop in the background',style: font(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15,color: Colors.grey))),
        )
      ],
    );
  }
}




class MyBullet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 15.0,
      width: 15.0,
      decoration: const  BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}