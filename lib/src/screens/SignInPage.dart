import 'package:flutter/material.dart';
import '../shared/styles.dart';
import '../shared/colors.dart';
import 'package:page_transition/page_transition.dart';
import './SignUpPage.dart';
import './Dashboard.dart';

class SignInPage extends StatefulWidget {
  final String pageTitle;

  SignInPage({Key key, this.pageTitle}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

 final formkey=GlobalKey<FormState>();
  final scaffoldkey=GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        title: Text('Sign In',
            style: TextStyle(
                color: Colors.grey, fontFamily: 'Poppins', fontSize: 15)),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
        
              Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft,  child: SignUpPage()));

            },
            child: Text('Sign Up', style: contrastText),
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
                Text('Welcome Back!', style: h3),
                Text('Howdy, let\'s go', style: taglineText),



            SizedBox(height:30.0,),

            Form(
              key:formkey,
              child: Column(
                  children: <Widget>[
                     TextFormField(
                       validator: (value){
                         if (value.isEmpty) {
                           return "Please enter the username or email address";
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
                           return "Please enter the password";
                         }
                         else if(value.length<8)
                         {
                           return "create a strong password";
                         }
                       },

              decoration: InputDecoration(
                icon:Icon(Icons.lock,color:Colors.black),
                hintText: "password",hintStyle: h5,
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
                                  builder: (context) =>Dashboard()
                            ));
                          }
                          
                        },
                        child:Text("Login",style: TextStyle(
                              color: Colors.white,
                                  fontSize: 18,
                            fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins'),),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                        
                      ),
              ),
            ),

            SizedBox(height:20.0,),
              ],
            ),
            Positioned(
              bottom: 84,
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
        height:600,
        
        width: double.infinity,
        decoration: authPlateDecoration,
      ),
        ],
      )
    );
  }

}
