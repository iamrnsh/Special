import 'package:flutter/material.dart';
import 'package:melody0/services/auth.dart';
import 'package:melody0/textinput.dart';
class SignIn extends StatefulWidget {

  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email = "";
  String password = "";
  String error ="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: Text('Sign in to Learn'),
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(onPressed: (){widget.toggleView();}, icon: Icon(Icons.person), label: Text('Sign up'))
        ],
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),

          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 50.0),
            child:Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 25.0),
                  TextFormField(
                    decoration: textInputDecoration.copyWith(hintText: 'Email'),
                    validator: (val) => val.isEmpty ? 'Enter an Email' : null,
                    onChanged: (val){
                      setState(() => email = val);
                    },
                  ),
                  SizedBox(height: 25.0),
                  TextFormField(
                    decoration: textInputDecoration.copyWith(hintText: 'Password'),
                    obscureText: true,
                    validator: (val) => val.length < 6 ? 'Enter a password of 6+ characters' : null,
                    onChanged: (val) {
                      setState(() => password = val);
                    },
                  ),
                  SizedBox(height: 25.0),
                  RaisedButton(
                    child: Text("Sign in",style: TextStyle(color: Colors.white),),
                    color: Colors.blue,
                    onPressed: () async {
                      if (_formKey.currentState.validate()){
                        dynamic result = await _auth.signInWithEmailAndPassword(email, password);

                       if (result == null)
                       {
                          setState(() => error ='Could not sign in with those credentials');
                        }
                      }
                    },

                  ),
                  SizedBox(height: 20.0,),
                  ButtonTheme(
                    minWidth: 200.0,
                    height: 200.0,
                    child: Center(
                      child: RaisedButton(
                        child: Text("Quick Sign in (Anonymous)",style: TextStyle(color: Colors.white,fontSize: 35.0),),
                        onPressed: () async {
                          dynamic result = await _auth.signInAnon();
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Text(error,style: TextStyle(color: Colors.red,fontSize: 14.0),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
