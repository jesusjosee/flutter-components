import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Goku Avatar"),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('SL'),
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 130,
          backgroundImage: NetworkImage('https://media.vandalsports.com/i/1200x900/11-2017/201711612134_1.jpg'),
         ),
      ),
    );
  }
}