
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

  MyAlertDialog(context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
            return Expanded(
                child: AlertDialog(
                  title: Text("Alert!"),
                  content: Text("Do you want to delet ?"),
                )
            );
        }
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
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(

                decoration: BoxDecoration(color: Colors.white),
                accountName: Text("Khairozzaman", style: TextStyle(color: Colors.black),),
                accountEmail: Text("info@gmail.com",style: TextStyle(color: Colors.black),),
                currentAccountPicture: Image.network("https://pixlok.com/wp-content/uploads/2021/05/flutter-logo-768x768.jpg"),
                onDetailsPressed: (){
                  MySnanckBar("Profile", context);
                },
              )
            ),
            ListTile(leading: Icon(Icons.home) ,
              title: Text("Home"),
              onTap: (){
              MySnanckBar("Home", context);
              },
            ),
            ListTile(leading: Icon(Icons.person),
                title: Text("Profile"),
              onTap: (){
              MySnanckBar("Profile", context);
              },
            ),
            ListTile(leading: Icon(Icons.contact_mail),
                title: Text("Contact"),
                onTap: (){
                   MySnanckBar("Contact", context);
                },
            ),
            ListTile(leading: Icon(Icons.phone),
                title: Text("phone"),
              onTap: (){
              MySnanckBar("Phone", context);
              },
            )



          ],
        ),
      ),
      // body: Container(
      //
      //   height: 250,
      //   width: 250,
      //   alignment: Alignment.center,
      //   margin: EdgeInsets.fromLTRB(80, 160, 60, 20),
      //  // padding: EdgeInsets.fromLTRB(left, top, right, bottom),
      //   decoration: BoxDecoration(
      //     color: Colors.blue,
      //     border: Border.all(color: Colors.green, width: 6)
      //   ),
      //  child: Image.asset('assets/images/welcome.png'),
      //
      // ),

      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     Container(
      //       height: 100,
      //       width: 100,
      //       child: Image.asset("assets/images/welcome.png"),
      //     ),
      //     Container(
      //       height: 100,
      //       width: 100,
      //       child: Image.asset("assets/images/welcome.png"),
      //     ),
      //     Container(
      //       height: 100,
      //       width: 100,
      //       child: Image.asset("assets/images/welcome.png"),
      //     )
      //
      //   ],
      // ),
   body: Column(
     mainAxisAlignment: MainAxisAlignment.start,
     children: [
       Padding(padding:EdgeInsets.all(20),
         child: TextField(
           decoration: InputDecoration(
             border: OutlineInputBorder(),
             labelText: 'Frist Name'
           ),
         ),
       ),
       Padding(padding:EdgeInsets.all(20),
         child: TextField(
           decoration: InputDecoration(
               border: OutlineInputBorder(),
               labelText: 'Last Name'
           ),
         ),
       ),
       Padding(padding:EdgeInsets.all(20),
         child: TextField(
           decoration: InputDecoration(
               border: OutlineInputBorder(),
               labelText: 'Email Address'
           ),
         ),
       ),
       Padding(padding:EdgeInsets.fromLTRB(10,0,10,0),
         child: ElevatedButton(onPressed: (){},
           child: Text('Login'),
         ),
       ),

     ],
   ),

    );
    


  }
}
