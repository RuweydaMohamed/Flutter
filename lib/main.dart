import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Home(),
));

//Stateless
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();


  
}

class _HomeState extends State<Home> {

  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
                    title: Text("Flutter Layout Example"),
      ),
       
      bottomNavigationBar: BottomNavigationBar(

        onTap: (index){
        setState(() {
          myIndex = index;
        });
        },
        currentIndex: myIndex,
        items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.call, color: Colors.blue),
          label: "Call"
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.email, color: Colors.black),
          label: 'Email'
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.share, color: Colors.blue,
                            
          ),
          label: 'Share'
        
          ),
      ],
      ),
      
        
    );
  }
}



