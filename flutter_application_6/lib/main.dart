import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple,
        brightness: Brightness.dark,
        ),
        useMaterial3: true,
        
      ),
      home:Scaffold(appBar: AppBar(title: const Text("ThemeDemo",
      style: TextStyle(fontWeight: FontWeight.bold,
      fontSize: 30.0,
      color: Colors.black
      ),
      ),
      backgroundColor: Colors.white,
     ),
     
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 30),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.greenAccent)),
                  child: Image.asset('assets/image.jpg'),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    // enabledBorder: OutlineInputBorder(
                    //   borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                    // ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width:3,color:Colors.greenAccent )
                    ),
                    
                    labelText: 'EMAIL',
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                     focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width:3,color:Colors.greenAccent )
                    ),
                    labelText: 'Password',
                    prefixIcon: Icon(
                      Icons.key,
                      color: Colors.white,
                    ),
                  
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.fromLTRB(180, 0, 0, 0),
                  child: const Text(
                    'Forget Password!',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.greenAccent,
                      ),
                      child: const Text(
                        'Log In',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.black),
                      ),
                    ),
                    const SizedBox(width: 30),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.greenAccent,
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 5,
                      width: 100,
                      color: Colors.white,
                    ),
                    const Text(
                      "OR",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.greenAccent,
                      ),
                    ),
                    Container(
                      height: 5,
                      width: 100,
                      color: Colors.white,
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 10,),
                    IconButton(
                      iconSize:25,
                      icon: Image.asset('assets/google.jpg',width:75,
                      height:100),
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize:25,
                      icon: Image.asset('assets/inkdin.png',width:50,
                      height:75),
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
    )
    );
  }
}


