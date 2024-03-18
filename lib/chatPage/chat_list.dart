import 'package:flutter/material.dart';

import '../traveler.dart';
import 'chat_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  void _goBack(BuildContext context) {
    Navigator.of(context).pop();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1B202D),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    _goBack(context);
                  },
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                ),
                const Text(
                  'Mesajlar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Quicksand',
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 36,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              'Y A K I N L A R D A',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 110,
              child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children:[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                          Image.asset('assets/images/aifoto.jpg').image,
                        ),
                        SizedBox(height: 10,),
                        Text('AI Asistan',style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        ),)
                      ],
                    ),
                    SizedBox(width: 25,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                          Image.asset('assets/images/boy1.jpeg').image,
                        ),
                        SizedBox(height: 10,),
                        Text('Danny',style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        ),)
                      ],
                    ),
                    SizedBox(width: 25,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                          Image.asset('assets/images/girl1.jpg').image,
                        ),
                        SizedBox(height: 10,),
                        Text('Büşra',style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        ),)
                      ],
                    ),
                    SizedBox(width: 25,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                          Image.asset('assets/images/undefined.jpg').image,
                        ),
                        SizedBox(height: 10,),
                        Text('Ali',style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        ),)
                      ],
                    ),
                    SizedBox(width: 25,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                          Image.asset('assets/images/girl2.jpg').image,
                        ),
                        SizedBox(height: 10,),
                        Text('Fatma',style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        ),)
                      ],
                    ),
                  ]
              ),
            ),
            SizedBox(height: 20,),
            Container(

              height: 509, // Error verirse scroolda buradan değişecek
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(0xff292F3F),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  )
              ),
              child: ListView(
                children: [

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder:(context) => ChatPage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 26.0,top: 35,right: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            Image.asset('assets/images/aifoto.jpg').image,
                          ),
                          SizedBox(width: 10,),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('AI Asistanı',style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: ('Quicksand'),
                                      fontSize: 17
                                  ),),
                                  SizedBox(width: 130,),
                                  Text('08:38',style: TextStyle(
                                      color: Colors.white70
                                  ),),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Text('Sana nasıl yardımcı olabilirim?',style: TextStyle(
                                color: Colors.white70,
                              ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder:(context) => ChatScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 26.0,top: 35,right: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            Image.asset('assets/images/boy1.jpeg').image,
                          ),
                          SizedBox(width: 10,),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Danny Hopkins',style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: ('Quicksand'),
                                      fontSize: 17
                                  ),),
                                  SizedBox(width: 100,),
                                  Text('08:20',style: TextStyle(
                                      color: Colors.white70
                                  ),),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Text('?',style: TextStyle(
                                color: Colors.white70,
                              ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 26.0,top: 35,right: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                          Image.asset('assets/images/girl1.jpg').image,
                        ),
                        SizedBox(width: 10,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Büşra Yeler',style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: ('Quicksand'),
                                    fontSize: 17
                                ),),
                                SizedBox(width: 130,),
                                Text('Sun',style: TextStyle(
                                    color: Colors.white70
                                ),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text('Uploded File',style: TextStyle(
                              color: Colors.white70,
                            ),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 26.0,top: 35,right: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                          Image.asset('assets/images/girl2.jpg').image,
                        ),
                        SizedBox(width: 10,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Fatma Bardakcı',style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: ('Quicksand'),
                                    fontSize: 17
                                ),),
                                SizedBox(width: 90,),
                                Text('23 Mar',style: TextStyle(
                                    color: Colors.white70
                                ),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text("Were is another tutorial",style: TextStyle(
                              color: Colors.white70,
                            ),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 26.0,top: 35,right: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                          Image.asset('assets/images/undefined.jpg').image,
                        ),
                        SizedBox(width: 10,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Ali Veli',style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: ('Quicksand'),
                                    fontSize: 17
                                ),),
                                SizedBox(width: 160,),
                                Text('20 Mar',style: TextStyle(
                                    color: Colors.white70
                                ),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text("Neredesin",style: TextStyle(
                              color: Colors.white70,
                            ),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 26.0,top: 35,right: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                          Image.asset('assets/images/boy1.jpeg').image,
                        ),
                        SizedBox(width: 10,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Osman Ak',style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: ('Quicksand'),
                                    fontSize: 17
                                ),),
                                SizedBox(width: 120,),
                                Text('19 Mar',style: TextStyle(
                                    color: Colors.white70
                                ),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text("Naber",style: TextStyle(
                              color: Colors.white70,
                            ),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 26.0,top: 35,right: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                          Image.asset('assets/images/boy1.jpeg').image,
                        ),
                        SizedBox(width: 10,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Burak Eymen',style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: ('Quicksand'),
                                    fontSize: 17
                                ),),
                                SizedBox(width: 120,),
                                Text('17 Mar',style: TextStyle(
                                    color: Colors.white70
                                ),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text("Geliyorum",style: TextStyle(
                              color: Colors.white70,
                            ),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 26.0,top: 35,right: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                          Image.asset('assets/images/girl1.jpg').image,
                        ),
                        SizedBox(width: 10,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Bengi Su',style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: ('Quicksand'),
                                    fontSize: 17
                                ),),
                                SizedBox(width: 120,),
                                Text('13 Mar',style: TextStyle(
                                    color: Colors.white70
                                ),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text("Hangi ders var?",style: TextStyle(
                              color: Colors.white70,
                            ),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 26.0,top: 35,right: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                          Image.asset('assets/images/girl2.jpg').image,
                        ),
                        SizedBox(width: 10,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Helen Ark',style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: ('Quicksand'),
                                    fontSize: 17
                                ),),
                                SizedBox(width: 120,),
                                Text('10 Mar',style: TextStyle(
                                    color: Colors.white70
                                ),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text("WHY?",style: TextStyle(
                              color: Colors.white70,
                            ),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
