import 'package:app_teste/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(height: 200, width: 200, child: Image.asset('assets/088.jpg')),
                Container(height: 20,),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 12),
                    child: Column(children: [
                      TextField(
                        onChanged: (text) {
                          email = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: 'Email', border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Password', border: OutlineInputBorder()),
                        onChanged: (text) {
                          password = text;
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(backgroundColor: WidgetStateProperty.all<Color>(Colors.red)),
                        onPressed: () {
                          if (email == 'caio@email.com' && password == '123') {
                            Navigator.of(context).pushReplacementNamed('/home');
                          }
                        },
                        child: Container(width: double.infinity, child: Text('Entrar', textAlign: TextAlign.center,)),
                      )
                    ],),
                  ),
                ),
                
              ],
            ),
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Image.asset('assets/088.jpg', fit: BoxFit.cover,),
        ),
        Container(color: Colors.black.withOpacity(0.3),),
        _body(),
      ],
      )
    );
  }
}
