
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.red,
        ),
      home: HomeActivity()
    );
  }

}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});



  MySnanckBar(message, context){

    return ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content: Text(message))
    );
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:Text("Flutter Learn"),
        titleSpacing: 0,
        centerTitle: true,
        toolbarHeight: 65,
        toolbarOpacity: 1,
        elevation: 100,
        actions: [
          IconButton(onPressed: (){MySnanckBar("Home", context);}, icon: Icon(Icons.home)),
          IconButton(onPressed: (){MySnanckBar("Search", context);}, icon: Icon(Icons.search))
        ],

      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
        onPressed: (){
            MySnanckBar("Add ", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.arrow_left), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "back"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_emergency), label: "contact")

        ],
        onTap: (int index){
          if(index ==0){
            MySnanckBar("Back", context);

          } if(index == 1){
            MySnanckBar("Home", context);
          } if(index == 2){
            MySnanckBar("Contact", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Khairozzaman")),
            ListTile(title: Text("Home"),),
            ListTile(title: Text("Profile"),),
            ListTile(title: Text("Contact"),),
            ListTile(title: Text("Address"),)



          ],
        ),
      ),
 



    );

  }
}
