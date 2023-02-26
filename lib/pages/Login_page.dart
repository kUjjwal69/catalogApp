import 'package:catalog_app_in_flutter_2023/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButtuon = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/login__image.png", fit: BoxFit.cover),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: " Username"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter password", labelText: " Password"),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  InkWell(
                    onTap: ()async {
                      setState(() {
                        changeButtuon = true;
                      });
                    await Future.delayed(Duration(seconds: 1));
                      
                      Navigator.pushNamed(context, MyRoutes.HomeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 50,
                      width: changeButtuon ? 150 : 70,
                      alignment: Alignment.center,
                      child: changeButtuon
                          ? Icon(Icons.done, color: Colors.white)
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        shape: changeButtuon
                            ? BoxShape.circle
                            : BoxShape.rectangle,
                        // borderRadius:
                        //     BorderRadius.circular(changeButtuon ? 5 : 50),
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   child: Text("Login"),
                  //   style: TextButton.styleFrom(),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.HomeRoute);
                  //   },
                  // )
                ],
              ),
            ),
          ],
        ));
  }
}
