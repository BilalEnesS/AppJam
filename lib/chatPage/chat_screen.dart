import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1B202D),
      body: Padding(
        padding: EdgeInsets.only(left: 14.0, right: 14),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: Image.asset('assets/images/boy1.jpeg').image,
                  ),
                  const SizedBox(width: 15,),
                  const Text('Danny Hopkins',style: TextStyle(
                      fontSize: 18,
                      fontFamily: ('Quicksand'),
                      color: Colors.white
                  ),),
                  Spacer(),
                  const Icon(Icons.search_rounded,
                    color: Colors.white70,
                    size: 40,
                  )
                ],
              ),
              SizedBox(height: 30,),
              const Center(
                child: Text('1 FEB 12:00',style: TextStyle(
                    color: Colors.white70
                ),),
              ),
              SizedBox(height: 8,),
              Row(
                 // Mesajları sağa yasla
                children: [
                  Container(
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff373E4E)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('Merhaba seni yakınlarda gördüm, \nmüsaitsen bugün akşam görüşebiliriz?\nsen ne düşünüyorsun?',style: TextStyle(
                        color: Colors.white,
                      ),),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff7A8194)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('Olur bugün müsaitim, oturabiliriz \nsat kaçta görüşeceğiz?',style: TextStyle(
                        color: Colors.white,
                      ),),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff373E4E)
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Akşam saat 8 de görüşelim.',style: TextStyle(
                    color: Colors.white,
                  ),),
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(height: 10,),
              const Center(
                child: Text('08:12',style: TextStyle(
                    color: Colors.white70
                ),),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff7A8194)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('Nasılsın görüşmeyeli iyi misin?\n Müsaitsen bugün de görüşebiliriz?',style: TextStyle(
                        color: Colors.white,
                      ),),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff7A8194)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('?',style: TextStyle(
                        color: Colors.white,
                      ),),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xff3D4354)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height:40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.white30,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Icon(Icons.camera_alt_outlined),
                        ),
                      ),
                      SizedBox(width: 15,),
                      const Text('Message',style: TextStyle(
                          color: Colors.white54
                      ),),
                      Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.send,color:  Colors.white54,),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
