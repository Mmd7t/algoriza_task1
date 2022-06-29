import 'package:flutter/material.dart';
import 'package:task1/pages/registration.dart';
import 'package:task1/widgets/country_dropdown.dart';

import '../widgets/custom_btn.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          width: double.infinity,
          height: 280,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img3.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.only(right: 12.0, left: 12.0),
          child: Text("Welcome to Fashion Daily"),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(right: 12.0, left: 12.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text("Sign in",
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
        const Padding(
          padding: EdgeInsets.only(right: 12, left: 12),
          child: Text('Phone Number', style: TextStyle(fontSize: 18)),
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
        Padding(
          padding: const EdgeInsets.only(top: 20, right: 12, left: 12),
          child: CustomBtn(text: "Sign in", onTap: () {}, color: Colors.blue),
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
              const EdgeInsets.only(right: 12, left: 12, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Doesn't have any account?"),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (contest) => const RegistrationPage(),
                      ),
                    );
                  },
                  child: const Text("Register here",
                      style: TextStyle(fontSize: 14)))
            ],
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
          Text(
              "Use the application according to policy rules. Any\n kinds of violations will be subject to sanctions.")
        ])
      ]),
    );
  }
}
