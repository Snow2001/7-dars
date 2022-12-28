import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);
  static final String id = 'home_page';
  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  bool _isLogin = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/im_party.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.5),
                Colors.black.withOpacity(0.3),
                Colors.black.withOpacity(0.2),
              ]
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Fint the best parties near you', style: TextStyle(color: Colors.yellow, fontSize: 40, fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Text('Let us fint the best parties near you', style: TextStyle(color: Colors.green, fontSize: 25, fontWeight: FontWeight.bold),),
              SizedBox(height: 450,),
              _isLogin ?
              Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(55),
                  color: Colors.yellow.shade900,
                ),
                child: Center(
                  child: Text('Start', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 20),),
                ),
              ):
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(55),
                        color: Colors.red.shade900,
                      ),
                      child: Center(
                        child: Text('Google', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 20),),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(55),
                        color: Colors.blue.shade900,
                      ),
                      child: Center(
                        child: Text('Facebook', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 20),),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
