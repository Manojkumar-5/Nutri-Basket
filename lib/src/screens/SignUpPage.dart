import 'package:flutter/material.dart';
import '../shared/styles.dart';
import '../shared/colors.dart';
import 'package:page_transition/page_transition.dart';
import './SignInPage.dart';
import './Dashboard.dart';


class SignUpPage extends StatefulWidget {
  final String pageTitle;

  SignUpPage({Key key, this.pageTitle}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formkey=GlobalKey<FormState>();
  final scaffoldkey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        title: Text('Sign Up',
            style: TextStyle(
                color: Colors.grey, fontFamily: 'Poppins', fontSize: 15)),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              // Navigator.of(context).pushReplacementNamed('/signin');
              Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: SignInPage()));

            },
            child: Text('Sign In', style: contrastText),
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
        padding: EdgeInsets.only(left: 18, right: 18),
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Welcome to Grocery App!', style: h3),
                Text('Let\'s get started', style: taglineText),
              Form(
              key:formkey,
              child: Column(
                  children: <Widget>[
                     TextFormField(
                       validator: (value){
                         if (value.isEmpty) {
                           return "Please enter the username";
                         }
                         else if(value.length>8)
                         {
                           return "username should not exceed 8 characters";
                         }
                       },
              decoration: InputDecoration(
                icon:Icon(Icons.account_circle,color:Colors.black),
                hintText: "Username",hintStyle:h5,
              ),
            ),
            SizedBox(height:10.0,),
            TextFormField(   
              validator: (value){
                         if (value.isEmpty) {
                           return "Please enter Full Name";
                         }
                        
                       },

              decoration: InputDecoration(
                icon:Icon(Icons.account_box,color:Colors.black),
                hintText: "Full Name",hintStyle: h5,
              ),
            ),

            SizedBox(height:10.0,),

            TextFormField(   
              validator: (value){
                         if (value.isEmpty) {
                           return "Please enter mobile number";
                         }
                         else if(value.length!=10){
                           return "mobile number Should be 10 numbers";
                         }
                       },

              decoration: InputDecoration(
                icon:Icon(Icons.call,color:Colors.black),
                hintText: "mobilenumber",hintStyle: h5,
              ),
            ),

            SizedBox(height:10.0,),

            
            
             TextFormField(
                       validator: (value){
                         if (value.isEmpty) {
                           return "Please enter Email Address";
                         }
                       },
              decoration: InputDecoration(
                icon:Icon(Icons.mail,color:Colors.black),
                hintText: "Email Address",hintStyle: h5,
              ),
            ),


            SizedBox(height:10.0,),

            TextFormField(   
              validator: (value){
                         if (value.isEmpty) {
                           return "Please enter the Password";
                         }
                         else if(value.length<8)
                         {
                           return "Create a Strong password";
                         }
                       },

              decoration: InputDecoration(
                icon:Icon(Icons.lock,color:Colors.black),
                hintText: "Password",hintStyle: h5,
              ),
            ),

            SizedBox(height:10.0,),

          
                  ],
              ),
            ),
           
            SizedBox(
              height:20.0,
            ),
            
            Container(
              
              child:ButtonTheme(
                      buttonColor:Colors.green,
                      height:50.0,
                      minWidth: 200,

                      child:RaisedButton(
                        onPressed: (){
                          if(formkey.currentState.validate()){
                           
                            Navigator.pushReplacement(context,MaterialPageRoute(
                                  builder: (context) =>SignInPage()
                            ));
                          }
                          
                        },
                        child:Text("Sign Up",style: TextStyle(
                              color: Colors.white,
                                  fontSize: 18,
                            fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins'),),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                        
                      ),
              ),
            ),
              ],
            ),
            Positioned(
              bottom: 190,
              right: -15,
              child: FlatButton(
                onPressed: () {
                    Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: Dashboard()));
                },
                color: primaryColor,
                padding: EdgeInsets.all(13),
               shape: CircleBorder(),
                child: Icon(Icons.arrow_forward, color: white),
              ),
            )
          ],
        ),
        height: 760,
        
        width: double.infinity,
        decoration: authPlateDecoration,
      ),
        ],
      )
    );
  }
}
