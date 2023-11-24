import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class facebookAndGoogleButton extends StatelessWidget {
  const facebookAndGoogleButton({
    super.key,
    required this.image,
    required this.text
  });
  final  String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
       style: ElevatedButton.styleFrom(backgroundColor: Colors.white,
       fixedSize: const Size(349, 52),
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(10),
       ),side: const BorderSide(color: Color(0xff000000))),
       
       onPressed: () {
         
       },
       child:    Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
         //  Image(image: AssetImage("assets/images/google_logo.png"),width: 1,height: 1,),
           Image.asset(image,width: 35.w,height: 35.h,),
           Text(text,
               style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Color(0xff000000),)),
               
         ],
       ),
     );
  }
}
