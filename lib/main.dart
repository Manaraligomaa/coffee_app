import 'package:flutter/material.dart';
import 'constant.dart';
import 'my_homePage.dart';

void main() {
  runApp(Sign());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home:MyHomePage(),
    );
  }
}
class Sign extends StatefulWidget {
  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<Sign> {
  
  final _emailController=TextEditingController();
  final _passwordController=TextEditingController();
  final GlobalKey<FormState>_formkey=GlobalKey();
  Map<String,String>autData={
    'email':'',
    'password':''
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kbackgroundcolor,
        appBar: AppBar(
          backgroundColor: kprimarycolor,
          elevation: 0,
          title: Text("Sign Up"),
        ),
        body:Container(
          padding: EdgeInsets.all(50),
          child: Form(
            key: _formkey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network('https://cdn-icons-png.flaticon.com/128/2954/2954804.png',fit: BoxFit.cover,width: 250,),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Please enter your email",
                    ),
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (val){
                      if(val.isEmpty|| !val.contains('@')){
                        return "invalid email";
                      }return null;
                    },
                    onSaved: (value){
                      autData['email']=value;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Please enter your password",
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    validator: (val){
                      if(val.isEmpty|| val.length<=5){
                        return "invalid password";
                      }return null;
                    },
                    onSaved: (value){
                      autData['password']=value;
                    },
                    controller: _passwordController,
                    obscureText: true,
                  ),
                  Builder(builder: (ctx)=>RaisedButton(onPressed: (){
                  if(! _formkey.currentState.validate()){
                    return;
                  }_formkey.currentState.save();
                    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (context)=>MyHomePage(),));
                  },child: Text("Sign Up"),))
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}

