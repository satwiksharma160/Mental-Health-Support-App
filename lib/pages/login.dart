import 'package:flutter/material.dart';
import 'package:sampleapp/backend/data_manager.dart';
import 'package:sampleapp/utils/datastore.dart';
import '../components/normalbutton.dart';
import '../components/crisisbutton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(45.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/png_logo.png'),
                const TextField(
                  decoration: InputDecoration(hintText: 'Email'),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                  decoration: InputDecoration(hintText: 'Password'),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 75.0),
                    child: NormalButton(
                        buttonText: 'Login',
                        onClickFunc: () {
                          loggedInUser = DataManager.instance.getUserData();
                          Navigator.pushNamed(context, '/feed');
                        }))
              ],
            ),
          )),
      floatingActionButton: CrisisButton(
        onClicFunc: () {
          Navigator.pushNamed(context, '/crisis');
        },
      ),
    );
  }
}
