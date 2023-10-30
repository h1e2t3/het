import 'package:flutter/material.dart';
class Ha1 extends StatefulWidget {
  const Ha1({super.key});

  @override
  State<Ha1> createState() => _Ha1State();
}

class _Ha1State extends State<Ha1> {
  Future Ha1()async{
    return Future.delayed(Duration(seconds: 5),(){
    });
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.black,
        child: FutureBuilder(
          future:Ha1(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting){
              return Center(
                child:CircularProgressIndicator(color: Colors.lightGreenAccent,),
              );
            }
            else if (snapshot.connectionState==ConnectionState.done){
              return Center(child: Text("Data Fatching Successfully!!!",style: TextStyle(color: Colors.green),));
            }
            else if (snapshot.hasError){
              return Center(
                child: Text("Something Is Wrong",style: TextStyle(color:Colors.red,fontWeight: FontWeight.bold),),
              );
            }
            return SizedBox();
          },
        ),

      ),

    );
  }
}


