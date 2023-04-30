import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      children:  const [
        CustomCardType1(),

        SizedBox(height: 10),
        CustomCardType2(
          imageUrl: 'https://iso.500px.com/wp-content/uploads/2014/06/W4A2827-1-3000x2000.jpg',
          name: 'Un hermoso Paisaje'),
        SizedBox(height: 10),
        CustomCardType2(imageUrl: 'https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg'),
        SizedBox(height: 10),
        CustomCardType2(imageUrl: 'https://i.natgeofe.com/n/737e4cbf-3d9e-4f89-b4b2-29b5cf303dba/01-best_pod_landscapes_2x1.jpg'),
        SizedBox(height: 10),
        CustomCardType2(imageUrl: 'https://cdn.theatlantic.com/media/img/photo/2021/11/winners-2021-natural-landscape-phot/a02_proy_539__5138/main_1500.jpg' ),
        SizedBox(height: 100),
      ],
    )
    );
  }
}

