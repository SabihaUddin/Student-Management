import 'package:flutter/material.dart';
import 'package:student_management/utils/text.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
   final TextEditingController textController=  TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SafeArea(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                child: Image.asset('images/student image.png',
                fit: BoxFit.cover,),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  Container(
                    width: double.infinity,
                    height: 400,
                    decoration: BoxDecoration(
                      color: Color(0xffFCF9C4B2).withOpacity(0.8),
                    ),
                    child: Column(
                      children:  [

                        Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 10,right: 140),
                          child: Text(
                            'Student Login',style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff04194F)
                          ),

                          ),
                        ),
                        SizedBox(height: 30,),

                        Padding(
                          padding: const EdgeInsets.only(left: 0,right: 40),
                          child: Text("Knoledge is power.\nEnhance this power with Institute Manager",
                          style: textsmall10,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 50,
                          width: 325,
                          margin: EdgeInsets.all(5),
                          child: TextFormField(
                            controller: textController,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                            ),
                            onChanged: (value) {
                              setState(() {
                                textController.text = value.toString();
                              });
                            },
                            decoration: InputDecoration(
                              focusColor: Colors.white,
                              //add prefix icon
                              prefixIcon:const Icon(
                                Icons.person_outline_rounded,
                                color: Color(0xff04194F),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),

                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                const BorderSide(color: Colors.indigo, width: .5),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              fillColor: Color(0xff04194F),
                              hintText: 'XXXXXXXX',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 157899,
                                fontFamily: "verdana_regular",
                                fontWeight: FontWeight.w400,
                              ),
                              //create lable
                              labelText: 'Student ID',
                              labelStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontFamily: "verdana_regular",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),

                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 45,
                          width: 325,
                          child: ElevatedButton(onPressed: (){},

                              style: ElevatedButton.styleFrom(
                                elevation: 10,
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(5),
                                  side: BorderSide(color: Color(0xff04194F))

                                ),
                                primary: Color(0xff04194F)
                              ),
                              child: Text('Continue')),
                        ),
                        Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(
                        left: 60.0, right: 20.0, top: 10.0),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          height: 80.0,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: const Text(
                              'Not registered yet? Please contact to your Educational Institudte for your ID',
                              style:textsmall10
                        ),
                          )
                          )
                        )
                        )
                      ],

                    ),

                  ),
                ],
              )
            ],
      ),
        ),
    );
  }
}
