import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

  final options = const['Megaman','Metal Gear','Super Smash','Final Fantasy'];
   
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Listview 2"),
      ),
      body:ListView.separated(
        itemBuilder: (context, index) => ListTile( 
          title: Text(options[index]),
          trailing: const Icon(Icons.keyboard_arrow_right_outlined, color: Colors.amber,),
          onTap: (){
            final game = options[index];
            print(game);
          }
        ), 
        separatorBuilder:(_, __) =>const Divider(),
        itemCount: options.length,
        )
    );
  }
}