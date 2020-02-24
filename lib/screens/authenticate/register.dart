import 'package:flutter/material.dart';
import 'package:melody0/services/auth.dart';
import 'package:melody0/textinput.dart';

class Register extends StatefulWidget {

  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

int selectedRadio;

class _RegisterState extends State<Register> {

  AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();


  String email = "";
  String password ="";
  String error ="";

  @override
  void initState() {
    super.initState();
    selectedRadio=0;
  }

  setSelectedRadio(int val){
    setState(() {
      selectedRadio = val;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.red[100],
      appBar: AppBar(
        title: Text('Sign up'),
        backgroundColor: Colors.redAccent,elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(onPressed:(){widget.toggleView();}, icon: Icon(Icons.person), label: Text('Sign In'))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 50.0),
        child:Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 30.0),
              TextFormField(
                decoration: textInputDecoration.copyWith(hintText: "Email"),
                validator: (val) => val.isEmpty ? 'Enter an Email' : null,
                onChanged: (val){
                  setState(() => email = val);
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: textInputDecoration.copyWith(hintText: "Password"),
                obscureText: false,
                validator: (val) => val.length < 6 ? 'Enter a password of 6+ characters' : null,
                onChanged: (val) {
                  setState(() => password = val);
                },
              ),
              SizedBox(height: 20.0,),
              Text(error,style: TextStyle(color: Colors.red,fontSize: 14.0),),
              SizedBox(height: 20.0,),
              SizedBox(height: 20.0,),
              RaisedButton(
                child: Text("Register",style: TextStyle(color: Colors.white),),
                color: Colors.blue,
                onPressed: () async {
                  if (_formKey.currentState.validate()){
                    dynamic result = await _auth.registerWithEmailAndPassword(email, password);

                    if (result == null)
                    {
                      setState(() => error ='Please give a valid email');
                    }
                  }
                },

              ),

            ],
          ),
        ),
      ),
    );
  }
}
