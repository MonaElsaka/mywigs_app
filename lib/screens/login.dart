import 'package:flutter/material.dart';
import 'package:wigzawy/screens/layout.dart';

class logIn extends StatefulWidget {
  const logIn({Key? key}) : super(key: key);

  @override
  State<logIn> createState() => _logInState();
}

class _logInState extends State<logIn> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> globalformkey = new GlobalKey<FormState>();
    bool hidepassword = true;
    bool isApiCallProcess = false;

    void validate() {
      if (globalformkey.currentState!.validate()) {
        print("validar");
      } else {
        print(" not validar");
      }
    }

    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    margin: EdgeInsets.symmetric(vertical: 85, horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.cyan,
                    ),
                    child: Form(
                      key: globalformkey,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Text("Login",
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 25,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "required";
                              } else {
                                return null;
                              }
                            },
                            // onSaved: (input) => requestModel.email = input!,
                            decoration: InputDecoration(
                                hintText: 'email', prefixIcon: Icon(Icons.email)),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.text,
                            //onSaved: (input) => requestModel.password = input!,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "required";
                              } else {
                                return null;
                              }
                            },
                            obscureText: hidepassword,
                            decoration: InputDecoration(
                              hintText: 'password',
                              prefixIcon: Icon(Icons.password),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    hidepassword = !hidepassword;
                                  });
                                },
                                icon: Icon(hidepassword
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          FlatButton(
                            padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 80),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => layout()),
                              );
                            },
                            child: Text("LogIn"),
                            shape: StadiumBorder(),
                            color: Colors.blue,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
