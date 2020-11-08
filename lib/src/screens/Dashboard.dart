import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import '../shared/Product.dart';
import '../shared/colors.dart';
import '../shared/fryo_icons.dart';
import '../shared/partials.dart';
import '../shared/styles.dart';
import './ProductPage.dart';

class Dashboard extends StatefulWidget {
  final String pageTitle;

  Dashboard({Key key, this.pageTitle}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _tabs = [
      storeTab(context),
      Container(
          child: ListView(
        children: <Widget>[
          ListTile(
            leading: Image.asset(
              'images/8.png',
              height: 50,
              width: 50,
            ),
            title: Text('Grapes', style: h5),
            subtitle: Text('Rs.70', style: h6),
            trailing: Text('farmer:Jessy', style: h5),
          ),
          ListTile(
            leading: Image.asset(
              'images/7.png',
              height: 50,
              width: 50,
            ),
            title: Text('water melon', style: h5),
            subtitle: Text('Rs.20', style: h6),
            trailing: Text('farmer:kavin', style: h5),
          ),
          ListTile(
            leading: Image.asset(
              'images/23.png',
              height: 50,
              width: 50,
            ),
            title: Text('Wall nut', style: h5),
            subtitle: Text('Rs.120', style: h6),
            trailing: Text('farmer:krissy', style: h5),
          ),
          ListTile(
            leading: Image.asset(
              'images/13.png',
              height: 50,
              width: 50,
            ),
            title: Text('Sapbangi', style: h5),
            subtitle: Text('Rs.120', style: h6),
            trailing: Text('farmer:bryan', style: h5),
          )
        ],
      )),
      Container(
          child: ListView(
        children: <Widget>[
          ListTile(
            leading: Image.asset(
              'images/2.png',
              height: 50,
              width: 50,
            ),
            title: Text('beans', style: h5),
            subtitle: Text('Rs.45', style: h5),
          ),
          ListTile(
            leading: Image.asset(
              'images/6.png',
              height: 50,
              width: 50,
            ),
            title: Text('apple', style: h5),
            subtitle: Text('Rs.120', style: h5),
          ),
          ListTile(
            leading: Image.asset(
              'images/14.png',
              height: 50,
              width: 50,
            ),
            title: Text('tulip', style: h5),
            subtitle: Text('Rs.60', style: h5),
          ),
          ListTile(
            leading: Image.asset(
              'images/16.png',
              height: 50,
              width: 50,
            ),
            title: Text('horse gram', style: h5),
            subtitle: Text('Rs.50', style: h5),
          ),
          ListTile(
            leading: Image.asset(
              'images/22.png',
              height: 50,
              width: 50,
            ),
            title: Text('Hazle nut', style: h5),
            subtitle: Text('Rs.120', style: h5),
          ),
        ],
      )),
      Container(
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
                              child: Text('Isolated people Details', style: h4),
                              margin: EdgeInsets.only(bottom: 15),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[],
                            )
                          ],
                        ),
                      ),
                      new Container(
                        height: 100.0,
                        width: 400.0,
                        child: InkWell(
                          child: Text(
                              "Isolated People Details -click here to view",
                              style: h4),
                          onTap: () async {
                            if (await canLaunch("https://pmindia.gov.in")) {
                              await launch("https://pmindia.gov.in");
                            } else {
                              new Text("can't launch");
                            }
                          },
                        ),
                      ),
                      Container(
                          width: 300,
                          height: 100,
                          child: FlatButton(
                            child: Text(
                                "Name:siva\nAddress:3/75 Allikulathur Cbe",
                                style: h6),
                            onPressed: () {},
                            color: Colors.lightGreenAccent,
                          )),
                      Container(
                          width: 300,
                          height: 100,
                          child: FlatButton(
                              child: Text(
                                  "Name:josh\nAddress:12/39 Perumanallur Cbe",
                                  style: h6),
                              onPressed: () {},
                              color: Colors.lightGreenAccent)),
                      Container(
                          width: 300,
                          height: 100,
                          child: FlatButton(
                            child: Text(
                                "Name:Raju\nAddress:144 TNagar  Chennai",
                                style: h6),
                            onPressed: () {},
                            color: Colors.lightGreenAccent,
                          )),
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
      Container(
        child: Text(
            '-->Grocery is a shopping app which connects the producer or food provider directly to the customer(Isolated people).\n\n--> This app that tells isolated people,the nearby producers with their available products.\n\n-->Grocery app that allow people for viewing product,It also consist of payment options cart etc..\n\n-->The producers products are add to the database directly.\n\n-->Producer can fix thier product price,so that the producer can sold out all the products.',
            style: h5),
      ),
    ];

    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => filter()));
            },
            iconSize: 21,
            icon: Icon(fryo.funnel),
          ),
          backgroundColor: primaryColor,
          title:
              Text('Kart', style: logoWhiteStyle, textAlign: TextAlign.center),
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => notify()));
              },
              iconSize: 21,
              icon: Icon(fryo.magnifier),
            ),
            IconButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => addProduct()));
              },
              iconSize: 21,
              icon: Icon(Icons.add_shopping_cart),
            )
          ],
        ),
        body: _tabs[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(fryo.shop),
                title: Text(
                  'Store',
                  style: tabLinkStyle,
                )),
            BottomNavigationBarItem(
                icon: Icon(fryo.cart),
                title: Text(
                  'My Cart',
                  style: tabLinkStyle,
                )),
            BottomNavigationBarItem(
                icon: Icon(fryo.heart_1),
                title: Text(
                  'Favourites',
                  style: tabLinkStyle,
                )),
            BottomNavigationBarItem(
                icon: Icon(fryo.user_1),
                title: Text(
                  'Profile',
                  style: tabLinkStyle,
                )),
            BottomNavigationBarItem(
                icon: Icon(fryo.cog_1),
                title: Text(
                  'about',
                  style: tabLinkStyle,
                ))
          ],
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.green[600],
          onTap: _onItemTapped,
        ));
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

Widget storeTab(BuildContext context) {
  // will pick it up from here
  // am to start another template
  List<Product> foods = [
    Product(
        name: "BEETROOT",
        image: "images/3.png",
        price: "30.00",
        userLiked: true,
        discount: 10),
    Product(
        name: "CAPSICUM",
        image: "images/4.png",
        price: "100.00",
        userLiked: false,
        discount: 7.8),
    Product(
        name: "BEANS",
        image: 'images/2.png',
        price: '120.00',
        userLiked: false),
    Product(
        name: "LADY'S FINGER",
        image: "images/1.png",
        price: '45.00',
        userLiked: true,
        discount: 14)
  ];

  List<Product> rice = [
    Product(
        name: "TOMATO RICE",
        image: "images/25.png",
        price: "30.00",
        userLiked: true,
        discount: 10),
    Product(
        name: "LEMON RICE",
        image: "images/26.png",
        price: "30.00",
        userLiked: false,
        discount: 7.8),
    Product(
        name: "FULL MEALS",
        image: 'images/27.png',
        price: '120.00',
        userLiked: false),
    Product(
        name: "NOODLES",
        image: "images/28.png",
        price: '45.00',
        userLiked: true,
        discount: 14)
  ];

  List<Product> drinks = [
    Product(
        name: "MANGO",
        image: "images/5.png",
        price: "45.00",
        userLiked: true,
        discount: 2),
    Product(
        name: "APPLE",
        image: "images/6.png",
        price: "120.00",
        userLiked: false,
        discount: 5.2),
    Product(
        name: "WATERMELON",
        image: "images/7.png",
        price: "10.00",
        userLiked: false),
    Product(
        name: "GRAPES",
        image: "images/8.png",
        price: "70.00",
        userLiked: true,
        discount: 3.4),
    Product(
        name: "POMEGRANATE",
        image: "images/9.png",
        price: "60.00",
        userLiked: true,
        discount: 4.5)
  ];

  List<Product> flower = [
    Product(
        name: "MARIGOLD",
        image: "images/10.png",
        price: "30.00",
        userLiked: true,
        discount: 2),
    Product(
        name: "HIBISCUS",
        image: "images/11.png",
        price: "18.00",
        userLiked: false,
        discount: 5.2),
    Product(
        name: "ROSE", image: "images/12.png", price: "20.00", userLiked: false),
    Product(
        name: "SAMPANGI",
        image: "images/13.png",
        price: "10.00",
        userLiked: true,
        discount: 3.4),
    Product(
        name: "TULIP",
        image: "images/14.png",
        price: "35.00",
        userLiked: true,
        discount: 4.5)
  ];

  List<Product> Grosery = [
    Product(
        name: "GREEN GRAM",
        image: "images/15.png",
        price: "60.00",
        userLiked: true,
        discount: 2),
    Product(
        name: "HORSE GRAM",
        image: "images/16.png",
        price: "28.00",
        userLiked: false,
        discount: 5.2),
    Product(
        name: "WHEAT",
        image: "images/17.png",
        price: "20.00",
        userLiked: false),
    Product(
        name: "MAIZE",
        image: "images/18.png",
        price: "35.00",
        userLiked: true,
        discount: 3.4),
    Product(
        name: "RICE",
        image: "images/19.png",
        price: "60.00",
        userLiked: true,
        discount: 4.5)
  ];
  List<Product> Nuts = [
    Product(
        name: "CASHNEW NUT",
        image: "images/20.png",
        price: "1000.00",
        userLiked: true,
        discount: 2),
    Product(
        name: "GROUND NUT",
        image: "images/21.png",
        price: "25.00",
        userLiked: false,
        discount: 5.2),
    Product(
        name: "HAZLE NUT",
        image: "images/22.png",
        price: "100.00",
        userLiked: false),
    Product(
        name: "WAL NUT",
        image: "images/23.png",
        price: "160.00",
        userLiked: true,
        discount: 3.4),
    Product(
        name: "ALMOND",
        image: "images/24.png",
        price: "800.0",
        userLiked: true,
        discount: 4.5)
  ];

  List<Product> free = [
    Product(
      name: "CAPSICUM",
      image: "images/4.png",
      price: "0.0",
      userLiked: true,
    ),
    Product(
        name: "BEANS", image: 'images/2.png', price: "0.0", userLiked: true),
    Product(
      name: "TOMATO RICE",
      image: "images/25.png",
      price: "0.0",
      userLiked: true,
    ),
    Product(
      name: "LEMON RICE",
      image: "images/26.png",
      price: "0.0",
      userLiked: true,
    ),
    Product(
      name: "RICE",
      image: "images/19.png",
      price: "0.0",
      userLiked: true,
    )
  ];

  return ListView(children: <Widget>[
    headerTopCategories(),
    deals('VEGETABLES', onViewMore: () {}, items: <Widget>[
      foodItem(foods[0], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: foods[0],
              );
            },
          ),
        );
      }, onLike: () {}),
      foodItem(foods[1], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: foods[1],
              );
            },
          ),
        );
      }, imgWidth: 250, onLike: () {}),
      foodItem(foods[2], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: foods[2],
              );
            },
          ),
        );
      }, imgWidth: 200, onLike: () {}),
      foodItem(foods[3], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: foods[3],
              );
            },
          ),
        );
      }, onLike: () {})
    ]),
    deals('Meals', onViewMore: () {}, items: <Widget>[
      foodItem(rice[0], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: rice[0],
              );
            },
          ),
        );
      }, onLike: () {}),
      foodItem(rice[1], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: rice[1],
              );
            },
          ),
        );
      }, imgWidth: 250, onLike: () {}),
      foodItem(rice[2], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: rice[2],
              );
            },
          ),
        );
      }, imgWidth: 200, onLike: () {}),
      foodItem(rice[3], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: rice[3],
              );
            },
          ),
        );
      }, onLike: () {})
    ]),
    deals('FRUITS', onViewMore: () {}, items: <Widget>[
      foodItem(drinks[0], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: drinks[0],
              );
            },
          ),
        );
      }, onLike: () {}, imgWidth: 60),
      foodItem(drinks[1], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: drinks[1],
              );
            },
          ),
        );
      }, onLike: () {}, imgWidth: 75),
      foodItem(drinks[2], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: drinks[2],
              );
            },
          ),
        );
      }, imgWidth: 110, onLike: () {}),
      foodItem(drinks[3], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: drinks[3],
              );
            },
          ),
        );
      }, onLike: () {}),
      foodItem(drinks[4], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: drinks[4],
              );
            },
          ),
        );
      }, onLike: () {})
    ]),
    deals('FLOWERS', onViewMore: () {}, items: <Widget>[
      foodItem(flower[0], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: flower[0],
              );
            },
          ),
        );
      }, onLike: () {}, imgWidth: 60),
      foodItem(flower[1], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: flower[1],
              );
            },
          ),
        );
      }, onLike: () {}, imgWidth: 75),
      foodItem(flower[2], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: flower[2],
              );
            },
          ),
        );
      }, imgWidth: 110, onLike: () {}),
      foodItem(flower[3], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: flower[3],
              );
            },
          ),
        );
      }, onLike: () {}),
      foodItem(flower[4], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: flower[4],
              );
            },
          ),
        );
      }, onLike: () {})
    ]),
    deals('GROCERY', onViewMore: () {}, items: <Widget>[
      foodItem(Grosery[0], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: Grosery[0],
              );
            },
          ),
        );
      }, onLike: () {}, imgWidth: 60),
      foodItem(Grosery[1], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: Grosery[1],
              );
            },
          ),
        );
      }, onLike: () {}, imgWidth: 75),
      foodItem(Grosery[2], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: Grosery[2],
              );
            },
          ),
        );
      }, imgWidth: 110, onLike: () {}),
      foodItem(Grosery[3], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: Grosery[3],
              );
            },
          ),
        );
      }, onLike: () {}),
      foodItem(Grosery[4], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: Grosery[4],
              );
            },
          ),
        );
      }, onLike: () {})
    ]),
    deals('NUTS', onViewMore: () {}, items: <Widget>[
      foodItem(Nuts[0], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: Nuts[0],
              );
            },
          ),
        );
      }, onLike: () {}, imgWidth: 60),
      foodItem(Nuts[1], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: Nuts[1],
              );
            },
          ),
        );
      }, onLike: () {}, imgWidth: 75),
      foodItem(Nuts[2], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: Nuts[2],
              );
            },
          ),
        );
      }, imgWidth: 110, onLike: () {}),
      foodItem(Nuts[3], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: Nuts[3],
              );
            },
          ),
        );
      }, onLike: () {}),
      foodItem(Nuts[4], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: Nuts[4],
              );
            },
          ),
        );
      }, onLike: () {})
    ]),
    deals('FREE PRODUCTS', onViewMore: () {}, items: <Widget>[
      foodItem(free[0], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: free[0],
              );
            },
          ),
        );
      }, onLike: () {}, imgWidth: 60),
      foodItem(free[1], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: free[1],
              );
            },
          ),
        );
      }, onLike: () {}, imgWidth: 75),
      foodItem(free[2], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: free[2],
              );
            },
          ),
        );
      }, imgWidth: 110, onLike: () {}),
      foodItem(free[3], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: free[3],
              );
            },
          ),
        );
      }, onLike: () {}),
      foodItem(free[4], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: free[4],
              );
            },
          ),
        );
      }, onLike: () {})
    ])
  ]);
}

Widget sectionHeader(String headerTitle, {onViewMore}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(left: 15, top: 10),
        child: Text(headerTitle, style: h4),
      ),
      Container(
        margin: EdgeInsets.only(left: 15, top: 4),
        child: FlatButton(
          onPressed: onViewMore,
          child: Text('Slide', style: contrastText),
        ),
      )
    ],
  );
}

// wrap the horizontal listview inside a sizedBox..
Widget headerTopCategories() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      sectionHeader('All Categories', onViewMore: () {}),
      SizedBox(
        height: 130,
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: <Widget>[
            headerCategoryItem(
                'Fruits',
                Image.asset(
                  'images/8.png',
                  width: 50.0,
                  height: 50.0,
                ),
                onPressed: () {}),
            headerCategoryItem(
                'Grocery',
                Image.asset(
                  'images/18.png',
                  width: 50.0,
                  height: 50.0,
                ),
                onPressed: () {}),
            headerCategoryItem(
                'Flowers',
                Image.asset(
                  'images/14.png',
                  width: 50.0,
                  height: 50.0,
                ),
                onPressed: () {}),
            headerCategoryItem(
                'Nuts',
                Image.asset(
                  'images/24.png',
                  width: 50.0,
                  height: 50.0,
                ),
                onPressed: () {}),
            headerCategoryItem(
                'Vegetables',
                Image.asset(
                  'images/2.png',
                  width: 50.0,
                  height: 50.0,
                ),
                onPressed: () {}),
          ],
        ),
      )
    ],
  );
}

Widget headerCategoryItem(String name1, Image image, {onPressed}) {
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
            )),
        Text(name1 + ' ›', style: categoryText)
      ],
    ),
  );
}

Widget deals(String dealTitle, {onViewMore, List<Widget> items}) {
  return Container(
    margin: EdgeInsets.only(top: 5),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        sectionHeader(dealTitle, onViewMore: onViewMore),
        SizedBox(
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: (items != null)
                ? items
                : <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text('No items available at this moment.',
                          style: taglineText),
                    )
                  ],
          ),
        )
      ],
    ),
  );
}

class addProduct extends StatelessWidget {
  final formkey = GlobalKey<FormState>();
  final scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: primaryColor,
            title: Text('New Product')),
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
                      Text('Welcome Producer!!', style: h3),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text('Lets add some products', style: h5),
                      Form(
                        key: formkey,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Please enter the product name";
                                }
                              },
                              decoration: InputDecoration(
                                icon: Icon(Icons.account_circle,
                                    color: Colors.black),
                                hintText: "Product name",
                                hintStyle: h5,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Please enter Price";
                                }
                              },
                              decoration: InputDecoration(
                                icon: Icon(Icons.account_box,
                                    color: Colors.black),
                                hintText: "Prize",
                                hintStyle: h5,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Please enter discount";
                                }
                              },
                              decoration: InputDecoration(
                                icon: Icon(Icons.call, color: Colors.black),
                                hintText: "Discount",
                                hintStyle: h5,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Please enter available amount";
                                }
                              },
                              decoration: InputDecoration(
                                icon: Icon(Icons.mail, color: Colors.black),
                                hintText: "Amount of Product",
                                hintStyle: h5,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Please enter the Quality";
                                }
                              },
                              decoration: InputDecoration(
                                icon: Icon(Icons.lock, color: Colors.black),
                                hintText: "Quality",
                                hintStyle: h5,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Please enter the expiry date";
                                }
                              },
                              decoration: InputDecoration(
                                icon: Icon(Icons.lock, color: Colors.black),
                                hintText: "Expiry date",
                                hintStyle: h5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        child: ButtonTheme(
                          buttonColor: Colors.green,
                          height: 50.0,
                          minWidth: 200,
                          child: RaisedButton(
                            onPressed: () {
                              if (formkey.currentState.validate()) {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Dashboard()));
                              }
                            },
                            child: Text(
                              "Upload",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins'),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 90,
                    right: -15,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Dashboard()));
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
        ));
  }
}

class search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: primaryColor,
            title: Text('Covid-19'),
            centerTitle: true,
          ),
          body: new Container(
              height: 700.0,
              width: double.infinity,
              child: new ListView(
                children: <Widget>[
                  new Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50.0,
                      ),
                      new Container(
                        child: new Text(
                          " Funds and Hotspots",
                          style: h3,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => fund()));
                          },
                          child: CircleAvatar(
                            backgroundImage: ExactAssetImage('images/33.png'),
                            radius: 55,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: new Text(
                          "fund",
                          style: h4,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                          child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => district()));
                        },
                        child: CircleAvatar(
                          backgroundImage: ExactAssetImage('images/35.png'),
                          radius: 55,
                        ),
                      )),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: new Text(
                          "Hotspots -corona detection",
                          style: h4,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ],
              ))),
    );
  }
}

class filter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: primaryColor,
            title: Text('Google Maps'),
            centerTitle: true,
          ),
          body: new Container(
              height: 700.0,
              width: double.infinity,
              child: new ListView(
                children: <Widget>[
                  new Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50.0,
                      ),
                      new Container(
                        child: InkWell(
                          onTap: () async {
                            if (await canLaunch("https://maps.google.co.in")) {
                              await launch("https://maps.google.co.in");
                            } else {
                              new Text("can't launch");
                            }
                          },
                          child: CircleAvatar(
                            backgroundImage: ExactAssetImage('images/29.png'),
                            radius: 55,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      new Container(
                        height: 200.0,
                        width: 200.0,
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                            image: new ExactAssetImage('images/30.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      new Container(
                        height: 200.0,
                        width: 450.0,
                        child: Text(
                            "We trace the isolated people through google maps\n Isolated people also track the delivery through google maps",
                            style: h6),
                      ),
                    ],
                  ),
                ],
              ))),
    );
  }
}

class fund extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: primaryColor,
            title: Text('Funds'),
            centerTitle: true,
          ),
          body: new Container(
              height: 1300.0,
              width: double.infinity,
              child: new ListView(
                children: <Widget>[
                  new Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50.0,
                      ),
                      new Container(
                        height: 200.0,
                        width: 200.0,
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                            image: new ExactAssetImage('images/32.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      new Container(
                        height: 210.0,
                        width: 300.0,
                        child: new Text(
                          'Direct payment\nName of the Account: PM CARES\nAccount Number: 2121PM20202\nIFSC Code: SBIN0000691\nSWIFT Code: SBININBB104.',
                          style: h4,
                        ),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      new Container(
                        height: 200.0,
                        width: 400.0,
                        child: new Text(
                          'Payment through link\n1.Click on the "Menu option\n2.Tap on PM fund section\n3.Click on PM-CARES fund\n4.Click on Domestic Donations\n5.Enter the credentials\n6.Enter otp and submit',
                          style: h6,
                        ),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      new Container(
                        height: 100.0,
                        width: 400.0,
                        child: InkWell(
                          child: Text(
                              "Click here to visit and donate for covid-19",
                              style: h6),
                          onTap: () async {
                            if (await canLaunch("https://pmindia.gov.in")) {
                              await launch("https://pmindia.gov.in");
                            } else {
                              new Text("can't launch");
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      new Container(
                        height: 200.0,
                        width: 200.0,
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                            image: new ExactAssetImage('images/34.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ))),
    );
  }
}

class district extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: primaryColor,
            title: Text('Hotspot Areas'),
            centerTitle: true,
          ),
          body: new Container(
              height: 800.0,
              width: double.infinity,
              child: new ListView(
                children: <Widget>[
                  new Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50.0,
                      ),
                      new Container(
                        height: 200.0,
                        width: 200.0,
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                            image: new ExactAssetImage('images/31.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      new Container(
                        height: 200.0,
                        width: 200.0,
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                            image: new ExactAssetImage('images/35.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      new Container(
                        height: 200.0,
                        width: 400.0,
                        child: InkWell(
                          child: Text(
                              "Click here to check various districts green, red, orange areas",
                              style: h3),
                          onTap: () async {
                            if (await canLaunch(
                                "https://www.mygov.in/covid-19/")) {
                              await launch("https://www.mygov.in/covid-19/");
                            } else {
                              new Text("can't launch");
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ))),
    );
  }
}

class notify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: primaryColor,
            title: Text('Covid 19'),
            centerTitle: true,
          ),
          body: new Container(
              height: 2000.0,
              width: double.infinity,
              child: new ListView(
                children: <Widget>[
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 50.0,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => fund()));
                          },
                          child: CircleAvatar(
                            backgroundImage: ExactAssetImage('images/33.png'),
                            radius: 55,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: new Text(
                          "fund",
                          style: h4,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                          child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => district()));
                        },
                        child: CircleAvatar(
                          backgroundImage: ExactAssetImage('images/35.png'),
                          radius: 55,
                        ),
                      )),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: new Text(
                          "Hotspots -corona detection",
                          style: h4,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => toll()));
                          },
                          child: CircleAvatar(
                            backgroundImage:
                                ExactAssetImage('images/img12.png'),
                            radius: 55,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: new Text(
                          "Toll free Numbers",
                          style: h4,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      
                      new Container(
                        child: InkWell(
                          onTap: () async {
                            if (await canLaunch(
                                "https://www.google.com/search?hl=en&biw=1422&bih=588&ei=oFdiX-PKOpeQ4-EPmr-9oAc&q=gujarat%20medical%20store%20online&oq=gujarat+medical+store+online&gs_lcp=CgZwc3ktYWIQAzIICCEQFhAdEB46BAgAEEc6BggAEBYQHjoCCAA6CAgAEAgQDRAeUJASWIMhYOEtaABwAXgAgAGoAYgBqAuSAQQwLjEwmAEAoAEBqgEHZ3dzLXdpesgBCMABAQ&sclient=psy-ab&ved=2ahUKEwipr5Kwpe7rAhWszTgGHX97AfIQvS4wAHoECAsQGQ&uact=5&npsic=0&rflfq=1&rlha=0&rllag=22108237,72768075,103403&tbm=lcl&rldimm=6795589286866008928&lqi=ChxndWphcmF0IG1lZGljYWwgc3RvcmUgb25saW5lWjQKFG1lZGljYWwgc3RvcmUgb25saW5lIhxndWphcmF0IG1lZGljYWwgc3RvcmUgb25saW5l&rldoc=1&tbs=lrf:!1m4!1u3!2m2!3m1!1e1!2m1!1e3!3sIAE,lf:1,lf_ui:3&rlst=f#rlfi=hd:;si:6795589286866008928,l,ChxndWphcmF0IG1lZGljYWwgc3RvcmUgb25saW5lWjQKFG1lZGljYWwgc3RvcmUgb25saW5lIhxndWphcmF0IG1lZGljYWwgc3RvcmUgb25saW5l;mv:[[24.011718800000004,73.3330957],[21.0360251,71.5370461]];tbs:lrf:!1m4!1u3!2m2!3m1!1e1!2m1!1e3!3sIAE,lf:1,lf_ui:3")) {
                              await launch(
                                  "https://www.google.com/search?hl=en&biw=1422&bih=588&ei=oFdiX-PKOpeQ4-EPmr-9oAc&q=gujarat%20medical%20store%20online&oq=gujarat+medical+store+online&gs_lcp=CgZwc3ktYWIQAzIICCEQFhAdEB46BAgAEEc6BggAEBYQHjoCCAA6CAgAEAgQDRAeUJASWIMhYOEtaABwAXgAgAGoAYgBqAuSAQQwLjEwmAEAoAEBqgEHZ3dzLXdpesgBCMABAQ&sclient=psy-ab&ved=2ahUKEwipr5Kwpe7rAhWszTgGHX97AfIQvS4wAHoECAsQGQ&uact=5&npsic=0&rflfq=1&rlha=0&rllag=22108237,72768075,103403&tbm=lcl&rldimm=6795589286866008928&lqi=ChxndWphcmF0IG1lZGljYWwgc3RvcmUgb25saW5lWjQKFG1lZGljYWwgc3RvcmUgb25saW5lIhxndWphcmF0IG1lZGljYWwgc3RvcmUgb25saW5l&rldoc=1&tbs=lrf:!1m4!1u3!2m2!3m1!1e1!2m1!1e3!3sIAE,lf:1,lf_ui:3&rlst=f#rlfi=hd:;si:6795589286866008928,l,ChxndWphcmF0IG1lZGljYWwgc3RvcmUgb25saW5lWjQKFG1lZGljYWwgc3RvcmUgb25saW5lIhxndWphcmF0IG1lZGljYWwgc3RvcmUgb25saW5l;mv:[[24.011718800000004,73.3330957],[21.0360251,71.5370461]];tbs:lrf:!1m4!1u3!2m2!3m1!1e1!2m1!1e3!3sIAE,lf:1,lf_ui:3");
                            } else {
                              new Text("can't launch");
                            }
                          },
                          child: CircleAvatar(
                            backgroundImage:
                                ExactAssetImage('images/img7.png'),
                            radius: 55,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: new Text(
                          "Medical Stores",
                          style: h4,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: InkWell(
                          onTap: () async {
                            if (await canLaunch(
                                "https://covidindia.org/testing/")) {
                              await launch("https://covidindia.org/testing/");
                            } else {
                              new Text("can't launch");
                            }
                          },
                          child: CircleAvatar(
                            backgroundImage:
                                ExactAssetImage('images/img16.png'),
                            radius: 55,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: new Text(
                          "Labs for Testing",
                          style: h4,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: InkWell(
                          onTap: () async {
                            if (await canLaunch(
                                "https://indianexpress.com/article/technology/social/google-maps-search-assistant-covid-19-food-night-shelters-across-india-how-it-will-work-6349921/")) {
                              await launch(
                                  "https://indianexpress.com/article/technology/social/google-maps-search-assistant-covid-19-food-night-shelters-across-india-how-it-will-work-6349921/");
                            } else {
                              new Text("can't launch");
                            }
                          },
                          child: CircleAvatar(
                            backgroundImage: ExactAssetImage('images/img2.png'),
                            radius: 55,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: new Text(
                          "Labour Shelter Mapping",
                          style: h4,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: InkWell(
                          onTap: () async {
                            if (await canLaunch(
                                "https://www.mfine.co/consult/?utm_source=Google&utm_medium=Search&utm_campaign=AcWeb_Mfine_Cons_Search_Doc_AllIndia_BMM&utm_id=11083435330&utm_term=%2Bdoctors%20%2Bonline&utm_device=m&gclid=CjwKCAjwkoz7BRBPEiwAeKw3qwIQu7lPKaxMD8TsAMJ2Z3EJilw1WTMxGptf-NjJ_09EfPt26IR7vRoCBvMQAvD_BwE")) {
                              await launch(
                                  "https://www.mfine.co/consult/?utm_source=Google&utm_medium=Search&utm_campaign=AcWeb_Mfine_Cons_Search_Doc_AllIndia_BMM&utm_id=11083435330&utm_term=%2Bdoctors%20%2Bonline&utm_device=m&gclid=CjwKCAjwkoz7BRBPEiwAeKw3qwIQu7lPKaxMD8TsAMJ2Z3EJilw1WTMxGptf-NjJ_09EfPt26IR7vRoCBvMQAvD_BwE");
                            } else {
                              new Text("can't launch");
                            }
                          },
                          child: CircleAvatar(
                            backgroundImage:
                                ExactAssetImage('images/img10.png'),
                            radius: 55,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: new Text(
                          "Doctors Online Appoinment",
                          style: h4,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: InkWell(
                          onTap: () async {
                            if (await canLaunch(
                                "https://www.psychiatry.org/psychiatrists/covid-19-coronavirus")) {
                              await launch(
                                  "https://www.psychiatry.org/psychiatrists/covid-19-coronavirus");
                            } else {
                              new Text("can't launch");
                            }
                          },
                          child: CircleAvatar(
                            backgroundImage:
                                ExactAssetImage('images/img19.png'),
                            radius: 55,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: new Text(
                          "Counselling for patients,family",
                          style: h4,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: InkWell(
                          onTap: () async {
                            if (await canLaunch(
                                "https://www.serviceonline.gov.in/epass/")) {
                              await launch(
                                  "https://www.serviceonline.gov.in/epass/");
                            } else {
                              new Text("can't launch");
                            }
                          },
                          child: CircleAvatar(
                            backgroundImage:
                                ExactAssetImage('images/img21.png'),
                            radius: 55,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: new Text(
                          "Transport pass",
                          style: h4,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: InkWell(
                          onTap: () async {
                            if (await canLaunch(
                                "https://www.digitalgujarat.gov.in/loginapp/CitizenLogin.aspx")) {
                              await launch(
                                  "https://www.digitalgujarat.gov.in/loginapp/CitizenLogin.aspx");
                            } else {
                              new Text("can't launch");
                            }
                          },
                          child: CircleAvatar(
                            backgroundImage: ExactAssetImage('images/img3.png'),
                            radius: 55,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: new Text(
                          "Citizenship",
                          style: h4,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: InkWell(
                          onTap: () async {
                            if (await canLaunch(
                                "https://blog.coursera.org/coursera-together-free-online-learning-during-covid-19/")) {
                              await launch(
                                  "https://blog.coursera.org/coursera-together-free-online-learning-during-covid-19/");
                            } else {
                              new Text("can't launch");
                            }
                          },
                          child: CircleAvatar(
                            backgroundImage:
                                ExactAssetImage('images/img26.png'),
                            radius: 55,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: new Text(
                          "Free Courses During Covid 19",
                          style: h4,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: InkWell(
                          onTap: () async {
                            if (await canLaunch(
                                "https://www.godigit.com/covid-19-assist")) {
                              await launch(
                                  "https://www.godigit.com/covid-19-assist");
                            } else {
                              new Text("can't launch");
                            }
                          },
                          child: CircleAvatar(
                            backgroundImage: ExactAssetImage('images/img9.png'),
                            radius: 55,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: new Text(
                          "Symptoms",
                          style: h4,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => volunteer()));
                          },
                          child: CircleAvatar(
                            backgroundImage: ExactAssetImage('images/img3.png'),
                            radius: 55,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: new Text(
                          "volunteer",
                          style: h4,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ],
              ))),
    );
  }
}

class volunteer extends StatelessWidget {
  final formkey = GlobalKey<FormState>();
  final scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: primaryColor,
            title: Text('Volunteer !'),
            centerTitle: true,
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
                        Text('Welcome volunteer!', style: h3),
                        SizedBox(
                          height: 20.0,
                        ),
                        Form(
                          key: formkey,
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "Please enter the username";
                                  } else if (value.length > 8) {
                                    return "username should not exceed 8 characters";
                                  }
                                },
                                decoration: InputDecoration(
                                  icon: Icon(Icons.account_circle,
                                      color: Colors.black),
                                  hintText: "Username",
                                  hintStyle: h5,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              TextFormField(
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "Please enter Full Name";
                                  }
                                },
                                decoration: InputDecoration(
                                  icon: Icon(Icons.account_box,
                                      color: Colors.black),
                                  hintText: "Full Name",
                                  hintStyle: h5,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              TextFormField(
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "Please enter mobile number";
                                  } else if (value.length != 10) {
                                    return "mobile number Should be 10 numbers";
                                  }
                                },
                                decoration: InputDecoration(
                                  icon: Icon(Icons.call, color: Colors.black),
                                  hintText: "mobilenumber",
                                  hintStyle: h5,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              TextFormField(
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "Please enter Email Address";
                                  }
                                },
                                decoration: InputDecoration(
                                  icon: Icon(Icons.mail, color: Colors.black),
                                  hintText: "Email Address",
                                  hintStyle: h5,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              TextFormField(
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "Please enter the Address";
                                  }
                                },
                                decoration: InputDecoration(
                                  icon: Icon(Icons.lock, color: Colors.black),
                                  hintText: "Address",
                                  hintStyle: h5,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          child: ButtonTheme(
                            buttonColor: Colors.green,
                            height: 50.0,
                            minWidth: 200,
                            child: RaisedButton(
                              onPressed: () {
                                if (formkey.currentState.validate()) {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Dashboard()));
                                }
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Poppins'),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
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
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Dashboard()));
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
          )),
    );
  }
}

class toll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Toll free Numbers')),
      body: Container(
          child: ListView(
        children: <Widget>[
          ListTile(
            leading: Image.asset(
              'images/img12.png',
              height: 50,
              width: 50,
            ),
            title: Text('Gujarat - 104', style: h5),
          ),
          ListTile(
            leading: Image.asset(
              'images/img12.png',
              height: 50,
              width: 50,
            ),
            title: Text('Manipur - 385241668', style: h5),
          ),
          ListTile(
            leading: Image.asset(
              'images/img12.png',
              height: 50,
              width: 50,
            ),
            title: Text('Andhra Pradesh - 0866-2410978', style: h5),
          ),
          ListTile(
            leading: Image.asset(
              'images/img12.png',
              height: 50,
              width: 50,
            ),
            title: Text('Arunachal Pradesh - 9436055743', style: h5),
          ),
          ListTile(
            leading: Image.asset(
              'images/img12.png',
              height: 50,
              width: 50,
            ),
            title: Text('Karnataka - 104', style: h5),
          ),
          ListTile(
            leading: Image.asset(
              'images/img12.png',
              height: 50,
              width: 50,
            ),
            title: Text('Haryana - 8558893911', style: h5),
          ),
          ListTile(
            leading: Image.asset(
              'images/img12.png',
              height: 50,
              width: 50,
            ),
            title: Text('Jharkhand - 104', style: h5),
          ),
          ListTile(
            leading: Image.asset(
              'images/img12.png',
              height: 50,
              width: 50,
            ),
            title: Text('Kerala - 0471-2552056', style: h5),
          ),
          ListTile(
            leading: Image.asset(
              'images/img12.png',
              height: 50,
              width: 50,
            ),
            title: Text('Maharastra - 020-26127394', style: h5),
          ),
          ListTile(
            leading: Image.asset(
              'images/img12.png',
              height: 50,
              width: 50,
            ),
            title: Text('Meghalaya - 108', style: h5),
          ),
          ListTile(
            leading: Image.asset(
              'images/img12.png',
              height: 50,
              width: 50,
            ),
            title: Text('Mizoram - 102', style: h5),
          ),
          ListTile(
            leading: Image.asset(
              'images/img12.png',
              height: 50,
              width: 50,
            ),
            title: Text('Nagaland - 7005539653', style: h5),
          ),
          ListTile(
            leading: Image.asset(
              'images/img12.png',
              height: 50,
              width: 50,
            ),
            title: Text('Punjab - 104', style: h5),
          ),
          ListTile(
            leading: Image.asset(
              'images/img12.png',
              height: 50,
              width: 50,
            ),
            title: Text('Rajasthan - 0141-2225624', style: h5),
          ),
          ListTile(
            leading: Image.asset(
              'images/img12.png',
              height: 50,
              width: 50,
            ),
            title: Text('Tamil Nadu - 044-29510500', style: h5),
          ),
          ListTile(
            leading: Image.asset(
              'images/img12.png',
              height: 50,
              width: 50,
            ),
            title: Text('Tripura - 0381-2315879', style: h5),
          ),
          ListTile(
            leading: Image.asset(
              'images/img12.png',
              height: 50,
              width: 50,
            ),
            title: Text('Delhi - 011-22307154', style: h5),
          ),
          ListTile(
            leading: Image.asset(
              'images/img12.png',
              height: 50,
              width: 50,
            ),
            title: Text('Jammu - 01912520982', style: h5),
          ),
          ListTile(
            leading: Image.asset(
              'images/img12.png',
              height: 50,
              width: 50,
            ),
            title: Text('Puducherry - 104', style: h5),
          ),
        ],
      )),
    );
  }
}
