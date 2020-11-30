import 'package:flutter/material.dart';

import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController controller = LoginController();

  bool showLoad = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              onChanged: (val) => controller.user = val,
            ),
            TextFormField(
              onChanged: (val) => controller.password = val,
            ),
            const SizedBox(height: 20),
            !showLoad
                ? RaisedButton(
                    onPressed: () async {
                      setState(() => showLoad = true);
                      var result = await controller.login();
                      if (!result) {
                        setState(() => showLoad = false);
                        _scaffoldKey.currentState.showSnackBar(SnackBar(
                          content: Text('Authentication Failed!'),
                          backgroundColor: Colors.red,
                          duration: Duration(seconds: 5),
                        ));
                      }
                    },
                    child: Text('Login'),
                  )
                : CircularProgressIndicator(),
            const SizedBox(height: 20),
            FlatButton(
              onPressed: () => controller.recoveryPassword(),
              child: Text('Recovery Password'),
            ),
          ],
        ),
      ),
    );
  }
}
