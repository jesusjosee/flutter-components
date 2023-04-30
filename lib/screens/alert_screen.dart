import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false, // Desabilita el cerrar el alert tocando fuera del dialog
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text("Titulo"),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Este es el contenido de la alerta"),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,)
          ]),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text("Cancel"))
          ],

        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          // style: ElevatedButton.styleFrom(
          // backgroundColor: Colors.red,
          // shape: const StadiumBorder(),
          // elevation: 0),
          onPressed: () => displayDialog(context),
          // style: ElevatedButton.styleFrom(
          // backgroundColor: Colors.red,
          // shape: const StadiumBorder(),
          // elevation: 0),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              'Mostrar alerta',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.close)),
    );
  }
}
