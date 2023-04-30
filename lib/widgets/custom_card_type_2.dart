import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const CustomCardType2({
    super.key, 
    required this.imageUrl, 
    this.name
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      // shadowColor: AppTheme.primary,
      shadowColor: AppTheme.primary.withOpacity(0.7),
      elevation: 30,
      child: Column(children: [
        // Image(
        //   image: NetworkImage('https://iso.500px.com/wp-content/uploads/2014/06/W4A2827-1-3000x2000.jpg')
        // ),

        FadeInImage(
          // Requeridas
          image: NetworkImage(imageUrl),
          placeholder: const AssetImage('assets/jar-loading.gif'),
          //opcionales para dar estilo
          width: double.infinity,
          height: 230,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 300),
        ),

        if (name != null) //si la propiedad es diferente de null entonces construye este contenedor
        Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(name ?? 'Not Title'))
      ]),
    );
  }
}
