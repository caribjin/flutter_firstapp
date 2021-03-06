import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _unfocusedColor = Colors.grey;
  final _usernameFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    _usernameFocusNode.addListener(() {
      setState(() {

      });
    });

    _passwordFocusNode.addListener(() {
      setState(() {

      });
    });
  }

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
              Text(
                'SHRINE',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          SizedBox(height: 120.0),
          // TODO: Wrap Username with AccentColorOverride (103)
          // TODO: Remove filled: true values (103)
          // TODO: Wrap Password with AccentColorOverride (103)
          TextField(
            controller: _usernameController,
            decoration: InputDecoration(
              labelText: 'Username',
              labelStyle: TextStyle(
                color: _usernameFocusNode.hasFocus ? Theme.of(context).accentColor : _unfocusedColor,
              ),
            ),
            focusNode: _usernameFocusNode,
          ),
          SizedBox(height: 12.0),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: 'Password',
              labelStyle: TextStyle(
                color: _passwordFocusNode.hasFocus ? Theme.of(context).accentColor : _unfocusedColor,
              ),
            ),
            obscureText: true,
            focusNode: _passwordFocusNode,
          ),
          ButtonBar(
            children: [
              FlatButton(
                child: Text('CANCEL'),
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(7.0)),
                ),
                onPressed: _handleCancelPressed,
              ),
              RaisedButton(
                child: Text('NEXT'),
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(7.0)),
                ),
                elevation: 4.0,
                onPressed: _handleNextPressed,
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

// TODO: Add AccentColorOverride (103)
