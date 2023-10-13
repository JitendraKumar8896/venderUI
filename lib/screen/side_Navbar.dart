import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Side_NavBar extends StatelessWidget {
  const Side_NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Drawer(
        backgroundColor: Colors.green[50],
        child: ListView(
            children: [
        UserAccountsDrawerHeader(
        accountName: Text('Oflutter.com'),
        accountEmail: Text('example@gmail.com'),
        currentAccountPicture: CircleAvatar(
          child: ClipOval(
            child: Image.network(
              'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
              fit: BoxFit.cover,
              width: 90,
              height: 90,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage('https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')
          ),
        ),
      ),

              ListTile(
                leading: Icon(Icons.analytics_outlined,color: Colors.green,size: 30,),
                title: Text('Insight',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
                onTap: () => {},
              ),
              ListTile(
                leading: Icon(Icons.account_balance_wallet,color: Colors.green,size: 30,),
                title: Text('Wallet',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18)),
                onTap: () => {Navigator.of(context).pop()},
              ),
              ListTile(
                leading: Icon(Icons.star,color: Colors.green,size: 30,),
                title: Text('My Reviews',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18)),
                onTap: () => {Navigator.of(context).pop()},
              ),
              ListTile(
                leading: Icon(Icons.note_alt_outlined,color: Colors.green,size: 30,),
                title: Text('Terms & Conditions',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18)),
                onTap: () => {Navigator.of(context).pop()},
              ),
              ListTile(
                leading: Icon(Icons.support_agent_outlined,color: Colors.green,size: 30,),
                title: Text('Support',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18)),
                onTap: () => {Navigator.of(context).pop()},
              ),
              ListTile(
                leading: Icon(Icons.settings,color: Colors.green,size: 30,),
                title: Text('Setting',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18)),
                onTap: () => {Navigator.of(context).pop()},
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app,color: Colors.green,size: 30,),
                title: Text('Logout',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18)),
                onTap: () => {Navigator.of(context).pop()},
              ),

              ListTile(
                leading: Icon(Icons.attach_money_sharp,color: Colors.green,size: 30,),
                title: Text('My Suscriptions',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 16)),
                onTap: () => {Navigator.of(context).pop()},
              ),

            ])

      ),
    );
  }
}
