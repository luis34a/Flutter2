import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('avatar'),
        actions: [
          Container(
            margin:const EdgeInsets.only(right: 7) ,
            child:const CircleAvatar(
              child:  Text('Sl'),
              backgroundColor: Colors.red,
            ),
          )
        ],
      ),
      body:const Center(
         child: CircleAvatar(
           maxRadius: 140,
           backgroundImage: AssetImage('assets/imagen.jpg'),
         ) 
      ),
    );
  }
}