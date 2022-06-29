import 'package:flutter/material.dart';
import 'package:task1/pages/login.dart';

import '../widgets/country_dropdown.dart';
import '../widgets/custom_btn.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool check = true;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  var email = TextEditingController();
  var pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          width: double.infinity,
          height: 300,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img3.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 12),
        const Padding(
          padding: EdgeInsets.only(right: 12.0, left: 12.0),
          child: Text("Welcome to Fashion Daily"),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(right: 12.0, left: 12.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text("Register",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            Row(
              children: const [
                Text("Help",
                    style: TextStyle(fontSize: 18, color: Colors.blue)),
                Icon(Icons.question_mark_sharp, color: Colors.blue)
              ],
            ),
          ]),
        ),
        const SizedBox(height: 20),
        Form(
          key: formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5, right: 12, left: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text('Email', style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12, left: 12),
                child: TextFormField(
                  style: const TextStyle(),
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  validator: (email) {
                    if (email!.isEmpty) {
                      return "please email";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(bottom: 5, right: 12, left: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text('Phone Number', style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12.0, left: 12.0),
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      ListTile(title: CountryDropdown(sortedByIsoCode: true)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(bottom: 5, right: 12, left: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text('Password', style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12, left: 12),
                child: TextFormField(
                  style: const TextStyle(),
                  obscureText: check,
                  controller: pass,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                        icon: const Icon(Icons.remove_red_eye,
                            color: Colors.black),
                        onPressed: () {
                          setState(() {});
                          (check = !check);
                        }),
                  ),
                  validator: (pass) {
                    if (pass!.isEmpty) {
                      return "please password";
                    } else if (pass.length < 6) {
                      return "6 digit";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, right: 12, left: 12),
          child: CustomBtn(text: "Register", onTap: () {}, color: Colors.blue),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            Text("Or"),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12, left: 12),
          child: CustomBtn(
              text: "Sign in with Google",
              onTap: () {},
              color: Colors.grey.shade300),
        ),
        Padding(
          padding:
              const EdgeInsets.only(right: 12, left: 12, top: 10, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("have an account?"),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (contest) => const LoginPage(),
                      ),
                    );
                  },
                  child: const Text("Sign in here",
                      style: TextStyle(fontSize: 14)))
            ],
          ),
        ),
        Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
              Text("By regestering your account, you are agree to our")
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextButton(
                  onPressed: () {},
                  child: const Text("terms and conditions",
                      style: TextStyle(color: Colors.blue)))
            ]),
          ],
        )
      ]),
    );
  }
}
