import 'package:flutter/material.dart';
class CarType extends StatelessWidget {
  CarType({this.assetImage});
  final AssetImage assetImage;


  @override
  Widget build(BuildContext context) {
    return
    Image(image: assetImage,height:100.0,width: 100.0);
  }
}

class Brands extends StatelessWidget {
  Brands({this.assetImage});
  final AssetImage assetImage;

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        border:
        Border.all(color: Colors.grey, width: 2.0),
        image: DecorationImage(
            image: assetImage,
            fit: BoxFit.fill),
      ),
      width: 20.0,
      margin: EdgeInsets.symmetric(horizontal: 8),
    );
  }
}
class TextType extends StatelessWidget {
  TextType({this.text1,this.text2});
 final String text1 ;
  final String text2 ;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: TextStyle(
              color: Colors.black, fontSize: 22.0),
        ),
        Align(
            alignment: Alignment.topRight,
            child: Text(
              text2,
              style: TextStyle(
                  color: Colors.black, fontSize: 22.0),
            )),
      ],
    );
  }
}

