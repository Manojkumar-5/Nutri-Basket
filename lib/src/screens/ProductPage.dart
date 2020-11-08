import 'package:flutter/material.dart';
//import 'package:grocery/src/screens/Dashboard.dart';
//import 'package:fryo/src/screens/Dashboard.dart';
import '../screens/Dashboard.dart';
import '../shared/Product.dart';
import '../shared/styles.dart';
import '../shared/colors.dart';
import '../shared/partials.dart';
//import '../shared/buttons.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
int count;
var cartlist=new List();
class ProductPage extends StatefulWidget {
  final String pageTitle;
  final Product productData;

  ProductPage({Key key, this.pageTitle, this.productData}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  double _rating = 4;
  int _quantity = 1;
  
  @override
  Widget build(BuildContext context) {
    
        return Scaffold(
            backgroundColor: bgColor,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: bgColor,
              centerTitle: true,
              leading: BackButton(
                color: darkText,
              ),
              title: Text(widget.productData.name, style: h4),
            ),
             
            body: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Center(
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                          margin: EdgeInsets.only(top: 100, bottom: 100),
                          padding: EdgeInsets.only(top: 100, bottom: 50),
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(widget.productData.name, style: h5),
                              Text("Rs "+widget.productData.price, style: h3),
                               
                              Container(
                                margin: EdgeInsets.only(top: 5, bottom: 20),
                                child: SmoothStarRating(
                                  allowHalfRating: false,
                                  onRatingChanged: (v) {
                                    setState(() {
                                      _rating = v;
                                    });
                                  },
                                  starCount: 5,
                                  rating: _rating,
                                  size: 27.0,
                                  color: Colors.orange,
                                  borderColor: Colors.orange,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 25),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: Text('Quantity', style: h6),
                                      margin: EdgeInsets.only(bottom: 15),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          width: 55,
                                          height: 55,
                                          child: OutlineButton(
                                            onPressed: () {
                                                 setState(() {
                                               if(_quantity == 1) return;
                                                 _quantity -= 1; 
                                              });
    
                                            },
                                            child: Icon(Icons.remove),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.only(left: 20, right: 20),
                                          child: Text(_quantity.toString(), style: h3),
                                          
                                        ),


                                      SizedBox(height:20.0),

                                        Container(
                                          margin:
                                              EdgeInsets.only(left: 20, right: 20),
                                          child: Text( (_quantity.toDouble()*( double.tryParse(widget.productData.price))).toString(), style: h3),
                                          
                                        ),









                                      





                                        Container(
                                          width: 55,
                                          height: 55,
                                          child: OutlineButton(
                                            onPressed: () {
                                                setState(() {
                                                _quantity += 1;
                                              });
                                                                                    },
                                            child: Icon(Icons.add),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 180,
                                 child: FlatButton(child:Text("Buy now",style:TextStyle(color:Colors.white)), onPressed: () {
                                  Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>Payment()));
                                
                               
                                },
                                color:Colors.green,
                                )
    
                            
                              ),
    
    
                           

                                                                Container(
                            width: 180,


                          
                        
                          
                            
                            child: FlatButton(child:Text("Producer Info",style:TextStyle(color:Colors.white)), onPressed: () {
                                 Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>producer()));
                              },
                              
                              color:Colors.green,
                            )

                          ),
                          Container(
                            width: 180,
                            child: FlatButton(child:Text("  Add to Cart  ",style:TextStyle(color:Colors.white)), onPressed: () {
                             CartItem(widget.productData.name);
                            Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>cart()));
                            
                           
                            },
                            color:Colors.green,
                            )
                        

                          ),
                 
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 15,
                                spreadRadius: 5,
                                color: Color.fromRGBO(0, 0, 0, .05))
                          ]),
                    ),
                    ),
                    Align(
                        alignment: Alignment.center,
                      child: SizedBox(
                        width: 200,
                        height: 160,
                        child: foodItem(widget.productData,
                            isProductPage: true,
                            onTapped: () {},
                            imgWidth: 250,
                            onLike: () {}),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}





 void CartItem(String item) {
        
        cartlist.add(item);
  }

 
















Widget header(String name1,Image image, {onPressed}) {
  return Container(
    margin: EdgeInsets.only(left: 15),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(bottom: 10),
            width: 86,
            height: 86,
       

            child: FloatingActionButton(
              shape: CircleBorder(),
              heroTag: name1,
              onPressed: onPressed,

              backgroundColor: white,
             // child: Icon(icon, size: 35, color: Colors.black87),
             child: image,
            )
            
            ),
        Text(name1 + ' ›', style: categoryText)
      ],
    ),
  );
}








class cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


  return  new Scaffold(
    appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        title: Text('Cart'),
        centerTitle: true,
      ),
                 
                    body:new ListView.builder(
                      itemCount:cartlist.length,
              itemBuilder:(context,int index){
            
                return new Dismissible(
                  key:new Key(cartlist[index]),
                  onDismissed: (direction){
                    cartlist.removeAt(index);
                    Scaffold.of(context).showSnackBar(new SnackBar(
                      content:new Text('item Dismissed'),
                    ));
                  },
                  background: new Container(color:Colors.red,),
                child:new ListTile(
                  title:new Text("${cartlist[index]}",style: h5,),
                  leading: Image.asset('images/cart.png'),
                  subtitle: Text('offer:5%'),
                  trailing: Text('Farmer:Jade'),
                
                )
                );
                
              }
            )
                          
        );

}
}








class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        title: Text('Payment'),
        centerTitle: true,
      ),

       
        body: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Center(
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                      margin: EdgeInsets.only(top: 50, bottom: 50),
                      padding: EdgeInsets.only(top: 50, bottom: 50),
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          

                          
                          Container(
                            margin: EdgeInsets.only(top: 10, bottom: 25),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Text('Payment .....!', style: h3),
                                  margin: EdgeInsets.only(bottom: 15),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                 
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 20, right: 20),
                                      child: Text('Lets pay!!', style: h5),
                                    ),
                                    Container(
                                      width: 55,
                                      height: 55,
                                      
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 180,
                             child: FlatButton(child:Text("Cash On Delivery",style:TextStyle(color:Colors.white)), onPressed: () {
                              Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>paymethod()));
                            
                           
                            },
                            color:Colors.green,
                            )

                        
                          ),

                          Container(
                            width: 180,
            
                            child: FlatButton(child:Text('Credit Card',style:TextStyle(color:Colors.white)), onPressed: () {

    Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>paymethod()));
                              },
                              
                              color:Colors.green,
                            )

                          ),
                          Container(
                            width: 180,
                            child: FlatButton(child:Text("Google Pay",style:TextStyle(color:Colors.white)), onPressed: () {
    Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>paymethod()));
                              
                            
                           
                            },
                            color:Colors.green,
                            ),
                            
                        

                          ),
                          
                          Container(
                            width: 180,
                            child: FlatButton(child:Text("Debit Card",style:TextStyle(color:Colors.white)), onPressed: () {
                                  Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>paymethod()));
 
                            },
                            color:Colors.green,
                            ),
                            
                        

                          ),
                 
                        ],
                      ),
                     
                    ),
                    ),
                    Align(
                        alignment: Alignment.center,
                      child: SizedBox(
                        width: 200,
                        height: 160,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}










class producer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
     return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        title: Text('Producer Details')
      ),

    
body:Container(
              margin: EdgeInsets.only(top: 20),
              child: Center(
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          

                          
                          Container(
                            margin: EdgeInsets.only(top: 10, bottom: 25),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Text('Producer Details', style: h4),
                                  margin: EdgeInsets.only(bottom: 15),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                 
                                   
                                  
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 300,
                             child: FlatButton(child:Text("Name:Jessy",style:TextStyle(color:Colors.black)), onPressed: () {
                            },
                            color:Colors.white,
                            )

                        
                          ),

                             Container(
                            width: 300,
                             child: FlatButton(child:Text("mobile:8888855555",style:TextStyle(color:Colors.black)), onPressed: () {
                            },
                            color:Colors.white,
                            )

                        
                          ),
                           Container(
                            width: 300,
                             child: FlatButton(child:Text("City:cbe",style:TextStyle(color:Colors.black)), onPressed: () {
                            },
                            color:Colors.white,
                            )

                        
                          ),
                           Container(
                            width: 300,
                             child: FlatButton(child:Text("village:Annur",style:TextStyle(color:Colors.black)), onPressed: () {
                            },
                            color:Colors.white,
                            )

                        
                          ),                         
                           Container(
                            width: 300,
                             child: FlatButton(child:Text("type:Producer",style:TextStyle(color:Colors.black)), onPressed: () {
                            },
                            color:Colors.white,
                            )

                        
                          ),
                           Container(
                            width: 300,
                             child: FlatButton(child:Text("AvailableTime:6am to 5pm",style:TextStyle(color:Colors.black)), onPressed: () {
                            },
                            color:Colors.white,
                            )

                        
                          ),
                        
                           Container(
                            width: 300,
                             child: FlatButton(child:Text("Delivery:Available",style:TextStyle(color:Colors.black)), onPressed: () {
                            },
                            color:Colors.white,
                            )

                        
                          ),
                          
                      
                 
                        ],
                      ),
                     
                    ),
                    ),
                    Align(
                        alignment: Alignment.center,
                      child: SizedBox(
                        width: 200,
                        height: 160,
                      ),
                    )
                  ],
                ),
              ),
            ),


      );
  }
  
}





















class paymethod extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
     return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        title: Text('Payment...')
      ),

    
body:Container(
              margin: EdgeInsets.only(top: 20),
              child: Center(
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          

                          
                          Container(
                            margin: EdgeInsets.only(top: 10, bottom: 25),
                            child: Column(
                              children: <Widget>[
                               Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                 
                                   
                                  
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 400,
                             child: FlatButton(child:Text("Payment Status: Done",style:TextStyle(color:Colors.black)), onPressed: () {
                            },
                            color:Colors.white,
                            )

                        
                          ),
                          SizedBox(height:50.0,),
                          
                           Container(
                            width: 400,
                             child: FlatButton(child:Text("Product delivery within 10 hours",style:TextStyle(color:Colors.black)), onPressed: () {
                            },
                            color:Colors.white,
                            )

                        
                          ),
                          
                          SizedBox(height:50.0,),


                           Container(
                            width: 100,
                             child: FlatButton(child:Text("GoBack",style:TextStyle(color:Colors.black)), onPressed: () {
  Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>Dashboard()));
                            },
                            color:Colors.green,
                            )

                        
                          ),


                      
                 
                        ],
                      ),
                     
                    ),
                    ),
                    Align(
                        alignment: Alignment.center,
                      child: SizedBox(
                        width: 200,
                        height: 160,
                      ),
                    )
                  ],
                ),
              ),
            ),


      );
  }
  
}