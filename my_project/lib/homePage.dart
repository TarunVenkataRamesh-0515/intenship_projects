import 'package:flutter/material.dart';
import 'package:my_project/welcomepage.dart';
// import 'package:url_launcher/url_launcher.dart';
class HomepagState extends StatefulWidget {
  const HomepagState({super.key});

  @override
  State<HomepagState> createState() => _HomepagStateState();
}

class _HomepagStateState extends State<HomepagState> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
       // Set to false to prevent resizing when the keyboard appears
        body:Stack(
          
                  fit: StackFit.expand,
                

         children: [
      
           // Background Image
           Container(
             decoration: const BoxDecoration(
               image: DecorationImage(
                 image: AssetImage('assets/background.jpg'),
                 fit: BoxFit.fill,
               ),
             ),
           ),
           // Login UI
           SingleChildScrollView(
            
             child: Center(
               child: Padding(
                 padding: const EdgeInsets.all(16.0),
                 child:Form(
                
                  key:_formKey,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                    
                     const SizedBox(height: 30),
                     Container(
                       width: 250,
                       height: 250,
                      //  decoration: BoxDecoration(
                      //      borderRadius: BorderRadius.circular(10),
                      //      border: Border.all(color: Colors.greenAccent)),
                      //  child: Image.asset('assets/image.jpg'),
                     ),
                     const SizedBox(height: 10),
                     Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(border: Border.all(),
                  ),
                    
                    child:Column(children: <Widget>[
                      Container(
                        
                      child: Image(image:AssetImage('assets/eye1.PNG'),
                      height: 175,
                      width: 1000,),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                  
                     TextFormField(
                        decoration: const InputDecoration(
                      
                         // enabledBorder: OutlineInputBorder(
                         //   borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                         // ),
                        //  focusedBorder: OutlineInputBorder(
                        //    borderSide: BorderSide(width:3,color:Colors.white )
                        //  ),
                        //  errorBorder: OutlineInputBorder(borderSide: BorderSide(width:3,color:Colors.blueAccent)) ,
                      
                         errorStyle: TextStyle(color: Colors.white),
               
                        // errorText: ,
                         labelText: 'EMAIL',
                         labelStyle: TextStyle(color: Colors.white),
                         prefixIcon: Icon(
                           Icons.email,
                           color: Colors.white,
                         ),
                       ),

                       style: const TextStyle(color: Colors.white),
                       keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  } else if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
                     ),
                      // SizedBox(height: 10),
                     TextFormField(
                       obscureText: true,
                       decoration: const InputDecoration(
                        //  border: OutlineInputBorder(),
                        //   focusedBorder: OutlineInputBorder(
                        //    borderSide: BorderSide(color:Colors.white )
                        //  ),
                        //  errorBorder: OutlineInputBorder(borderSide: BorderSide(width:3,color:Colors.blueAccent)),
                         errorStyle: TextStyle(color: Colors.white),
                         labelText: 'Password',
                         labelStyle: TextStyle(color: Colors.white),
                         prefixIcon: Icon(
                           Icons.key,
                           color: Colors.white,
                         ),
                       
                       ),
                       style: const TextStyle(color: Colors.white),
                       validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  } else if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
                     ),
                     const SizedBox(height: 20),
                     Container(
  margin: const EdgeInsets.fromLTRB(180, 0, 0, 0),
  child: GestureDetector(
    onTap: () async {
      const url = 'https://accounts.google.com/v3/signin/identifier?authuser=0&continue=https%3A%2F%2Fmail.google.com%2Fmail&ec=GAlAFw&hl=en&service=mail&flowName=GlifWebSignIn&flowEntry=AddSession&dsh=S755106354%3A1706259659341658&theme=glif'; // Replace with your desired URL
      // if (await canLaunch(url)) {
      //   await launch(url);
      // } else {
      //   throw 'Could not launch $url';
      // }
    },
    child: const Text(
      'Forget Password!',
      style: TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 20.0,
        color: Colors.blueAccent,
        decoration: TextDecoration.underline,
        decorationColor: Colors.blueAccent,
      ),
    ),
  ),
),
                     const SizedBox(height: 10),
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         ElevatedButton(
                           child:const Text(
                             'Log In',
                             style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 20.0,
                                 color: Colors.black),
                           ),
                           onPressed: () {
                  if (_formKey.currentState!.validate()) {
  Navigator.push<void>(
    context,
    MaterialPageRoute<void>(
      builder: (BuildContext context) => const welcomepage(),
    ),);                  }
                },
                           style: ElevatedButton.styleFrom(
                             primary: Colors.blueAccent,
                           ),
                         ),
                         const SizedBox(width: 30),
                         ElevatedButton(
                           child: const Text(
                             'Sign Up',
                             style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 20.0,
                                 color: Colors.black),
                           ),
                           onPressed: () {},
                           style: ElevatedButton.styleFrom(
                             primary: Colors.blueAccent,
                           ),
                         ),
                       ],
                     ),
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         const SizedBox(
                           height: 30,
                           width:10
                         ),
                         Container(
                           height: 1,
                           width: 100,
                           color: Colors.blueAccent,
                         ),
                         const SizedBox(
                           height: 10,
                           width:10
                         ),
                         const Text(
                           "OR",
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 15,
                             color: Colors.blueAccent,
                           ),
                         ),
                         const SizedBox(
                           height: 10,
                           width:10
                         ),
                         Container(
                           height: 1,
                           width: 100,
                           color: Colors.blueAccent,
                         ),
                       ],
                     ),
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         SizedBox(height: 10,),
                          Container(
                            height: 50,
                            width: 300,
                           
                            child:Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.center,
                              children:<Widget>[
                              Image(image:AssetImage('assets/google.jpg'),
                              height: 50,
                              width: 50,),
                              Text('LogIn With Google ',
                              style:TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ))
                            ],)
                          )
                        

                        
                       ],
                     )
                    ] )
                  ) ],
                 ),
                ),
                 ),
             ),
           ),
          ], )

        
              );
    
    
  }
}