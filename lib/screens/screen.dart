import 'package:flutter/material.dart';
import 'package:flutter_practice_15_11/widgets/facebook_and_google_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    bool obscureText = true;

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(38),
              child: Center(
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 102.w,height: 32.h,),
                    const Text("Sign In",style: TextStyle(fontSize: 48,fontWeight: FontWeight.w400,),),
                    SizedBox(height: 87.h,),
                    const Text("EMAIL OR PHONE",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff2B4C59)),),
                    const TextField(
                      style: TextStyle(color: Color(0xff2B4C59), fontSize: 16),
                      decoration: InputDecoration(
                        hintText: "Loremipsum@gmail.com",
                      ),
                    ),
                    SizedBox(height: 32.h,),

                    const Text("PASSWORD",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff2B4C59))),
                    TextField(
                      controller: controller,
                      obscureText: obscureText,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(obscureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                        ),
                      ),
                    ),
                    TextButton(onPressed: (){}, child: const Text("Forgot password?",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400,color: Colors.black),)),
                    SizedBox(height: 34.h,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff2B4C59),
                          fixedSize: const Size(349, 52),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                      onPressed: () {},
                      child: const Text("Log In",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700)),
                    ),
                    SizedBox(height: 9.h,),

                    const Align(
                      child: Text(
                        "OR",
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                    ),
                    SizedBox(height: 9.h,),

                    const facebookAndGoogleButton(
                      text: "Continue With Google",
                      image: "assets/images/google.png",
                    ),
                    SizedBox(height: 13.h,),

                    const facebookAndGoogleButton(
                      text: "Continue With Facebook",
                      image: "assets/images/facebook.png",
                    ),
                    SizedBox(height: 51.h,),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Don’t Have an account yet?",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "SIGN UP",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFCC21B)),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
