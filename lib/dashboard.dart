import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"), centerTitle: true,
        backgroundColor: Colors.blue, elevation: 2,),

      body: SingleChildScrollView(padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [BoxShadow(color: Colors.white12,
                    blurRadius: 10, offset: Offset(0, 4),),],),

              child: Row(children: [CircleAvatar(radius: 50,
                    backgroundImage: AssetImage('assets/pic.png'),),

                  SizedBox(width: 20),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Saleh Akram Sifat",
                        style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 25, color: Colors.white),),

                    SizedBox(height: 2,),
                    Text("Android & Flutter Developer",
                        style: TextStyle(fontSize: 15,
                            color: Colors.white)),]),
              ],)),


            SizedBox(height: 30,),
            Container(padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.1),
                  blurRadius: 8, offset: Offset(0, 4))]
              ),

              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Personal Information",
                    style: TextStyle(color: Colors.blue,
                        fontSize: 20, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10),
                  InfoRow(label: 'Name :',value: 'Saleh Akram Sifat',),
                  InfoRow(label: 'Date of Birth :',value: 'DD-MM-YYYY',),
                  InfoRow(label: 'Education :',value: 'Diploma In Engineering',),
                  InfoRow(label: 'Email :',value: 'salehakramsifat@gmail.com',),
                  InfoRow(label: 'Phone :', value: '+8801*********'),
                  InfoRow(label: 'Address :', value: 'Dhaka, Bangladesh')
                ],),
            ),
            SizedBox(height: 30,),
            
            Container(padding: (EdgeInsets.all(15)),
            decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.1),
                    blurRadius:8, offset: Offset(0, 4) )]),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Statistics",
                    style: TextStyle(color: Colors.blue,
                        fontSize: 20, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  InfoRow(label: 'Total Projects :', value: '50+'),
                  InfoRow(label: 'Completed Projects :', value: '40'),

                ],),),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("It's Demo"),
        duration: Duration(seconds: 2),),);},
              child: Text('Edit', style: TextStyle(color: Colors.white),),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),)
    ],),
    ),);}
}


class InfoRow extends StatelessWidget{
  final String label;
  final String value;
  InfoRow({super.key, required this.label, required this.value});


  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(children: [
      Text(label, style: TextStyle(color: Colors.black,fontSize: 16,
          fontWeight: FontWeight.w600),),
      SizedBox(width: 10,),
      Text(value, style: TextStyle(color: Colors.black, fontSize: 16),)
    ],),);
  }}