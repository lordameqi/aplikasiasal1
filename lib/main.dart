import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        home: AnimatedSplashScreen(
            duration: 3000,
            splash: Icons.home,
            nextScreen: MyHomepage(),
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.scale,
            backgroundColor: Colors.blue
        )
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key key}) : super(key: key);

  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage>  {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   WidgetsBinding.instance.addObserver(this);
  // }
  //
  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   WidgetsBinding.instance.removeObserver(this);
  //   super.dispose();
  // }
  // @override
  // void didChangeAppLifecycleState(AppLifecycleState state) {
  //   // TODO: implement didChangeAppLifecycleState
  //   super.didChangeAppLifecycleState(state);
  //   if (state == AppLifecycleState.inactive) {
  //     print("gak aktif dia");
  //   }
  //   if(state == AppLifecycleState.paused){
  //     print("nge pause dia");
  //   }
  //   if(state == AppLifecycleState.resumed){
  //     print("Dijalankan");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Application State Demo"),
      ),
      body: Container(),
    );
  }
}
