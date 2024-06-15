import 'package:daywin/models/login_page.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _goHome();
    
    super.initState();
  }
_goHome()async{
  await Future.delayed(const Duration(seconds: 2), (){
     Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder:(_) => MyLogin(),
     ),);
    }
    );
  }
  
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('asset/logo.png'),
      ),

    );
  }




}