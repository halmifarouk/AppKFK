import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:app_kfk/bottom_navigation_bar.dart';

const users = {
  'theo.jouve@ecam-strasbourg.eu': '12345',
  'jouvetheoo@gmail.com': 'Ffjjkda',
};


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  Duration get loginTime => const Duration(milliseconds: 2250);

  Future<String> _authUser(LoginData data) {
    debugPrint('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'User not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }

  Future<String> _signupUser(SignupData data) {
    debugPrint('Signup Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'KiFéKoi',
      //logo: AssetImage('assets/images/ecorp-lightblue.png'),
      onLogin: _authUser,
      onSignup: _signupUser,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const MyStatefulWidget(),
        ));
      },
      onRecoverPassword: _recoverPassword,
      theme: LoginTheme(
        primaryColor: Colors.black,
      ),
    );
  }
}

class ConnexionPage extends StatefulWidget {
  const ConnexionPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ConnexionPageState();
  }
}


class _ConnexionPageState extends State<ConnexionPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connexion'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyStatefulWidget()),
                ),
              }, 
              child: Row(
                children: const [
                  Icon(Icons.add),
                  Text("Vers la page principale")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}