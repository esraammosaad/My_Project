import 'package:flutter/material.dart';
import 'package:myproject/screens/iti/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'hello.dart';
import '../../iticonsts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_auth/firebase_auth.dart';

final Uri _url = Uri.parse('https://www.iti.gov.eg/iti/home');

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  final _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
          top: 20,
          start: 20,
          end: 20,
        ),
        child: Form(
          key: _formkey,
          child: ListView(
            children: [
              Center(
                child: (Image.network(
                  'https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png',
                  width: 150,
                  height: 150,
                  fit: BoxFit.fill,
                )),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: emailControl,
                autofocus: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your Email';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Email',
                  suffixIcon: Icon(
                    Icons.email,
                  ),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: phonecontrol,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your phone number';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  suffixIcon: Icon(
                    Icons.phone,
                  ),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: passControl,
                obscureText: isPasswordHidden,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your password';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    onPressed: () {
                      isPasswordHidden = !isPasswordHidden;

                      setState(() {});
                    },
                    icon: const Icon(
                      Icons.visibility,
                    ),
                  ),
                  border: const OutlineInputBorder(),
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  if (_formkey.currentState!.validate()) {
                    try {
                      final credential = await FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: emailControl.text,
                              password: passControl.text);
                      if (credential.user != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Hello()),
                        );
                      }
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        print('No user found for that email.');
                      } else if (e.code == 'wrong-password') {
                        print('Wrong password provided for that user.');
                      }
                      SnackBar snackBar = const SnackBar(
                        content: Text("password and email not valid"),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  }
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setString('email', emailControl.text);
                },
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.grey,
                  backgroundColor: Colors.blue[300],
                ),
                child: const Text('Log In'),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Forgot Password? No yawa.',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  TextButton(
                    onPressed: _launchUrl,
                    child: Text(
                      "Tap me",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Signup();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                ),
                child: const Text(
                  'No Account? Sign Up',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
