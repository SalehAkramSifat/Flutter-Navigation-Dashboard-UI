import 'package:flutter/material.dart';

import 'dashboard.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,
      home: HomeActivity(),);
  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation And Dashboard UI",
        style: TextStyle(fontWeight: FontWeight.bold),),
      centerTitle: true,backgroundColor: Colors.blue,),

      drawer: Drawer(child: ListView(padding:EdgeInsets.zero,
          children: [
            DrawerHeader(decoration: BoxDecoration(color: Colors.blue),
                child: null),
            ListTile(leading: Icon(Icons.dashboard),
              title: Text("Dashboard"), onTap: ()
              {Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DashboardActivity()));},)
    ],),),



    );
  }
}