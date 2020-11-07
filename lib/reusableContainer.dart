import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  ReusableContainer({this.containerheight,this.assetImage});
 final  double containerheight;
 final AssetImage assetImage;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(color: Colors.grey[400],width: 2.0),
        ),
        margin: EdgeInsets.all(5),
        child: Column(
          children: [
            Container(
              height: containerheight,
              //width: 200.0,
              //margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: Colors.grey,width: 2.0),
                image: DecorationImage(image: assetImage,fit: BoxFit.cover),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('تبدا من 460.000',style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.bold)),
                Text('Audi A3',style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.bold),),

              ],
            )
          ],
        )
    );
  }
}
