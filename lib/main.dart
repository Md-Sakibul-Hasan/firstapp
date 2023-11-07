import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
        return  MaterialApp(
            theme: ThemeData(primarySwatch: Colors.green),
            darkTheme: ThemeData(primarySwatch: Colors.blue),
            color: Colors.brown,
            debugShowCheckedModeBanner: false,
            home: MyHomepage());
  }

}
class MyHomepage extends StatelessWidget{

  
  
  MySnackBar(message,context){
    
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );

  }

  MyAlertDialog(context){
    return showDialog(
        context: context,
        builder:(BuildContext context){
          return Expanded(
            child: AlertDialog(
              title: Text("Alert !"),
              content: Text("Do you want to save?"),
              actions: [
                TextButton(onPressed: (){
                  MySnackBar("Saved Successfully",context);
                  Navigator.of(context).pop();
                  }, child: Text("Yes")),
                TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No")),
              ],
            ),
          );
        }
    );
  }


  var MyItems=[
    {"img":"https://scontent.fdac24-2.fna.fbcdn.net/v/t39.30808-6/391685720_172709549219435_6856376734910153123_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEbBcslpQc0YGysU3ZRzMh9DLn79p_3skQMufv2n_eyREeEy8PpVi39Rb6DUwh_0mzdGVC2glWAiZmxlTTBHZCp&_nc_ohc=z7OBv8RCN_oAX8XU9cF&_nc_ht=scontent.fdac24-2.fna&oh=00_AfAyGnB-ZpccYcx_k5zQV5Nzt4_9XXOQ-AStY_mkzFE-5g&oe=654D45D6","title":"Sakibul"},
    {"img":"https://images.pexels.com/photos/1379636/pexels-photo-1379636.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1","title":"Hasan"},
    {"img":"https://images.pexels.com/photos/45853/grey-crowned-crane-bird-crane-animal-45853.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1","title":"Sojib"},
    {"img":"https://images.pexels.com/photos/1379636/pexels-photo-1379636.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1","title":"Sohel"},
    {"img":"https://images.pexels.com/photos/1379636/pexels-photo-1379636.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1","title":"Rana"},
    {"img":"https://images.pexels.com/photos/1379636/pexels-photo-1379636.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1","title":"Rubayea"}
  ];

  @override
  Widget build(BuildContext context) {

  ButtonStyle buttonStyle=ElevatedButton.styleFrom(
    minimumSize: Size(double.infinity, 60)
  );

        return Scaffold(
          appBar: AppBar(
              title: Text("Inventory App"),
              titleSpacing: 10,
              toolbarHeight: 60,
              toolbarOpacity: 1,
              elevation: 3,
              backgroundColor: Colors.red,
            actions: [
              IconButton(onPressed: (){MySnackBar("I am Comment",context);}, icon: Icon(Icons.comment)),
              IconButton(onPressed: (){MySnackBar("I am settings",context);}, icon: Icon(Icons.settings)),
              IconButton(onPressed: (){MySnackBar("I am search",context);}, icon: Icon(Icons.search)),
              IconButton(onPressed: (){MySnackBar("I am email",context);}, icon: Icon(Icons.email)),


            ],
          ),

        floatingActionButton: FloatingActionButton(
          elevation: 10,
          child: Icon(Icons.add),
          onPressed: (){MySnackBar("Floting Action Button",context);},
          backgroundColor: Colors.brown,
        ),


          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.message),label: "Contact"),
              BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
            ],

            onTap: (int index){
              if(index==0){
                MySnackBar("I AM BOTTOM HOME",context);
              }
              if(index==1){
                MySnackBar("I AM BOTTOM Contact",context);
              }
              if(index==2){
                MySnackBar("I AM BOTTOM Profile",context);
              }
            },




          ),

        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(0),
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.brown),
                    accountName: Text("Sakibul Hasan"),
                    accountEmail: Text("shakibulh@gmail.com"),
                    currentAccountPicture: Image.network("https://scontent.fdac24-4.fna.fbcdn.net/v/t39.30808-6/391685720_172709549219435_6856376734910153123_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEbBcslpQc0YGysU3ZRzMh9DLn79p_3skQMufv2n_eyREeEy8PpVi39Rb6DUwh_0mzdGVC2glWAiZmxlTTBHZCp&_nc_ohc=2v5fFo6I6Y8AX9qoiVT&_nc_ht=scontent.fdac24-4.fna&oh=00_AfDABr52STJ8YqKgtqXSm3OyfSU34RoSqnBqydmGsU06VA&oe=65455CD6"),

                  )
              ),





              ListTile(leading:Icon(Icons.home),title: Text("Home"),onTap: (){MySnackBar("Home",context);},),
              ListTile(leading:Icon(Icons.contact_mail),title: Text("Contact"),onTap: (){MySnackBar("Contact",context);},),
              ListTile(leading:Icon(Icons.person),title: Text("Profile"),onTap: (){MySnackBar("Profile",context);},),
              ListTile(leading:Icon(Icons.phone),title: Text("Phone"),onTap: (){MySnackBar("Phone",context);},),
              ListTile(leading:Icon(Icons.email),title: Text("Email"),onTap: (){MySnackBar("Email",context);},),
            ],
          ),
        ),

        body:GridView.builder(

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 1,
            childAspectRatio: 1
          ),

            itemCount: MyItems.length,
            itemBuilder:(context,index){
              return GestureDetector(
                onTap: (){MySnackBar(MyItems[index]['title']!,context);},
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 300,
                  child: Image.network(MyItems[index]['img']!,fit: BoxFit.fill,),
                ),
              );
            },

         )

        );
  }



}