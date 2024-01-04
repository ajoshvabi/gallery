import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'gallery',
      // theme: ThemeData(
      //   primarySwatch: Colors.teal,
      // ),
      home: LoginScreen(),
    );
  }
}

void _handleButtonPress() {
  print('Button Pressed');
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(51, 51, 61,1),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(17),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.logo_dev,
                    size: 100, color: Color.fromARGB(255, 9, 168, 116)),
                const SizedBox(height: 50),
                const TextField(
                  decoration: InputDecoration(
                    labelText: "Username",

                    labelStyle: TextStyle(color: Colors.white),
                    filled: true, // Add a background color
                    fillColor: Color.fromRGBO(30,25,40,1),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(
                              0, 255, 255, 255)), // Border color when focused
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 20),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white),
                    filled: true, 
                    fillColor: Color.fromRGBO(30,25,40,1),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(
                              0, 255, 255, 255)), 
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondScreen()));
                      },
                      style: ButtonStyle(
                          padding: const MaterialStatePropertyAll(
                              EdgeInsets.only(
                                  left: 25, top: 10, bottom: 10, right: 25)),
                          shape:
                              MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                          backgroundColor: const MaterialStatePropertyAll(
                              Color.fromARGB(255, 9, 168, 116))),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.lock,
                            size: 20,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Login",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(93, 16, 73, 1),
      bottomNavigationBar: Container(
          height: 70,
          color: Colors.white,
          child: Row(
            children: [
              const SizedBox(width: 20,),
              ElevatedButton(
                style: ButtonStyle(
                  padding:const MaterialStatePropertyAll(EdgeInsets.only(left: 15, top: 10, bottom: 10, right: 20),),
                   shape:MaterialStatePropertyAll(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),)),
                  backgroundColor:const MaterialStatePropertyAll(
                    Color.fromRGBO(84, 40, 129, 1),
                  )
                ),
                
                onPressed: () => Navigator.pop(context),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.arrow_back),
                    Text("Back"),
                  ],
                ),
              ),
            ],
          )),
      body: Container(
        padding: const EdgeInsets.only(top: 70),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: _handleButtonPress,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(93, 16, 73, 1)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: const BorderSide(color: Colors.white, width: 2),
                    )),
                  ),
                  child: const Text("Fly"),
                ),
                const Text(
                  "Eat",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                const Text(
                  "Sleep",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(17),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Travelers',
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      filled: true,
                      fillColor: Color.fromRGBO(109, 12, 89, 1),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(0, 255, 255, 255)),
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Choose Origin',
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.location_pin,
                        color: Colors.white,
                      ),
                      filled: true,
                      fillColor: Color.fromRGBO(109, 12, 89, 1),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(0, 255, 255, 255)),
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Choose Destination',
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.flight,
                        color: Colors.white,
                      ),
                      filled: true,
                      fillColor: Color.fromRGBO(109, 12, 89, 1),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(0, 255, 255, 255)),
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Select Dates',
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.calendar_month,
                        color: Colors.white,
                      ),
                      filled: true,
                      fillColor: Color.fromRGBO(109, 12, 89, 1),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(0, 255, 255, 255)),
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0)),
                  color: Colors.white,
                ),
                child: Scrollbar(
                  child: SingleChildScrollView(
                    physics:const BouncingScrollPhysics(),
                    padding:const EdgeInsets.only(right: 19.0),
                    scrollDirection: Axis.vertical,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(25),
                            child: Column(
                              children: [
                                newMethod(),
                                newMethod(),
                                newMethod(),
                                newMethod(),
                                newMethod(),
                                newMethod(),
                                newMethod(),
                                newMethod(),
                                newMethod(),
                                newMethod(),
                                newMethod(),
                                newMethod(),
                                newMethod(),
                                newMethod(),
                              ],
                            ),
                          ),
                          // Add more widgets or rows as needed
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column newMethod() {
    return Column(
      children: [
        Row(
          children: [
            Image.network(
              "https://images.pexels.com/photos/906052/pexels-photo-906052.jpeg?auto=compress&cs=tinysrgb&w=600",
              width: 70,
              height: 60,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 15,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Big Sur, United States",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 8,),
                Text(
                  "Nonstop · 13h 30m",
                  style: TextStyle(fontSize: 14),
                ),
              ],
            )
          ],
        ),
        const Divider(
          color: Color.fromARGB(116, 0, 0, 0), // Customize the color if needed
          height: 20, // Adjust the height of the divider
          thickness: 0.5, // Adjust the thickness of the divider
        ),
      ],
    );
  }
}
