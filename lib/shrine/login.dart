import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  void _handleCancelPressed() {
    _usernameController.clear();
    _passwordController.clear();
  }

  void _handleNextPressed() {
    _usernameController.clear();
    _passwordController.clear();

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: [
            SizedBox(height: 80.0),
            Column(
              children: [
                Image.asset('assets/3.0x/diamond.png'),
                SizedBox(height: 16.0),
                Text('SHRINE')
              ],
            ),
            SizedBox(height: 120.0),
            // TODO: Wrap Username with AccentColorOverride (103)
            // TODO: Remove filled: true values (103)
            // TODO: Wrap Password with AccentColorOverride (103)
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            ButtonBar(
              children: [
                FlatButton(
                  child: Text('CANCEL'),
                  onPressed: _handleCancelPressed,
                ),
                RaisedButton(
                  child: Text('NEXT'),
                  onPressed: _handleNextPressed,
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}

// TODO: Add AccentColorOverride (103)