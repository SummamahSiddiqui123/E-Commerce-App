import 'dart:js';
import 'package:flutter/material.dart';
import 'package:myfirstclass/UI/loginscreen.dart';
import 'package:myfirstclass/main.dart';
import 'package:myfirstclass/UI/productdetail.dart';
import 'package:myfirstclass/constants/constants.dart';
import 'package:myfirstclass/UI/splashscreen2.dart';
import 'package:myfirstclass/UI/splashscreen4.dart';

void main() {}

class BottomNavigationExample extends StatefulWidget {
  const BottomNavigationExample({Key? key}) : super(key: key);

  @override
  _BottomNavigationExampleState createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State<BottomNavigationExample> {
  int _selectedTab = 0;

  List<Widget> _pages = [
    HomeView(),
    CartView(),
    Notification(),
    Profile(),
  ];

  void _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notification"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
    var productList = constants.list;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) => CartView()));
        },
        child: Icon(
          Icons.shopping_bag,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.5,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: productList.length,
                  itemBuilder: (context, index) {
                    return getFeaturedProductCard2(context, productList[index]);
                  }),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Featured Footwear",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.5,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: productList.length,
                  itemBuilder: (context, index) {
                    return getFeaturedProductCard(context, productList[index]);
                  }),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "New Arrivals",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: productList.length,
                  itemBuilder: (context, index) {
                    return getProductCard(context, productList[index]);
                  }),
            ),
            Container(
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: productList.length,
                  itemBuilder: (context, index) {
                    return getProductCard(context, productList[index]);
                  }),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Popular",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: productList.length,
                  itemBuilder: (context, index) {
                    return getProductCard(context, productList[index]);
                  }),
            ),
            Container(
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: productList.length,
                  itemBuilder: (context, index) {
                    return getProductCard(context, productList[index]);
                  }),
            ),
            Container(
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: productList.length,
                  itemBuilder: (context, index) {
                    return getProductCard(context, productList[index]);
                  }),
            ),
          ],
        ),
      ),
    );
  }

  getProductCard(BuildContext context, product) {
    return InkWell(
      onTap: () {
        print(product.name);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    ProductDetailsView(product)));
      },
      child: Card(
        color: Colors.white,
        shadowColor: Colors.grey.shade200,
        elevation: 5.0,
        child: Container(
          height: 250,
          width: MediaQuery.of(context).size.width * 0.4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(
                "${product.image}",
                width: double.infinity,
                height: 200,
              ),
              Text(
                "${product.name}",
                style: TextStyle(fontSize: 14),
              ),
              Text(
                "${product.price}",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  getFeaturedProductCard(BuildContext context, product) {
    return InkWell(
      onTap: () {
        print(product.name);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    ProductDetailsView(product)));
      },
      child: Card(
        color: Colors.white,
        shadowColor: Colors.grey.shade200,
        elevation: 5.0,
        child: Container(
          height: MediaQuery.of(context).size.width * 0.5,
          width: MediaQuery.of(context).size.width * 0.5,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(product.image), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "${product.name}",
                style: TextStyle(fontSize: 14),
              ),
              Text(
                "${product.price}",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

getFeaturedProductCard2(BuildContext context, product) {
  return InkWell(
    onTap: () {
      print(product.image);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => ProductDetailsView(product)));
    },
    child: Card(
      color: Colors.white,
      shadowColor: Colors.grey.shade200,
      elevation: 5.0,
      child: Container(
        height: MediaQuery.of(context).size.width * 0.5,
        width: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(product.image), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "${product.name}",
              style: TextStyle(fontSize: 14),
            ),
            Text(
              "${product.price}",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    ),
  );
}

class Notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: 15,
        ),
        Text(
          "Notification",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        getListTile1(
            "S",
            "Summamah",
            "New Arrivals! Check out the latest products in our store now.",
            "2 hour ago",
            Colors.green),
        getListTile1(
            "S",
            "Sinan",
            "Flash Sale Alert: Get up to 50% off on selected items for a limited time.",
            "6 hour ago",
            Colors.yellow),
        getListTile1(
            "H",
            "Hussain",
            "Your Order Has Shipped! Track your package to see its status.",
            "6 hour ago",
            Colors.purple),
        getListTile1(
            "U",
            "Umer",
            "Exclusive Offer: Buy 2, Get 1 Free on all accessories today!",
            "8 hour ago",
            Colors.orange),
        getListTile1(
            "Y",
            "Youshay",
            "Don't Miss Out! Our summer collection is now available.",
            "12 hour ago",
            Colors.grey),
        getListTile1(
            "E",
            "Ezaan",
            "Clearance Sale: Huge discounts on last season's fashion.",
            "1 day ago",
            Colors.amber),
        getListTile1(
            "S",
            "Sabeel",
            "Special Promotion: Buy a gift card and get 10% extra value.",
            "3 days ago",
            Colors.pink),
        getListTile1(
            "A",
            "Amir",
            "Limited Stock: Grab your favorite items before they're gone.",
            "1 week ago",
            Colors.red.shade400),
        getListTile1(
            "S",
            "Shariq",
            "Order Delivered! Rate your recent purchase and get a discount.",
            "4 weeks ago",
            Colors.yellow.shade400),
        getListTile1(
            "H",
            "Hassan",
            "Thank you for shopping with us! Your loyalty is appreciated.",
            "1 month ago",
            Colors.blueGrey),
        getListTile1(
            "M",
            "Mobariz",
            "Price Drop Alert: Your wishlist items are now at a lower price.",
            "2 months ago",
            Colors.purple.shade400),
        getListTile1(
            "U",
            "Usman",
            "Exclusive Early Access: VIP members can shop our new collection now.",
            "6 months ago",
            Colors.deepOrange),
        getListTile1(
            "S",
            "Shayan",
            "Holiday Sale: Enjoy special discounts on gifts for your loved ones.",
            "last year",
            Colors.greenAccent),
      ]),
    ));
  }

  getListTile1(avatar, title, subtitle, trailing, color) {
    return ListTile(
        leading: CircleAvatar(
          backgroundColor: color,
          child: Text(
            "$avatar",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        title: Text(
          "$title",
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        subtitle: Text("$subtitle"),
        trailing: Text(
          "$trailing",
          style: TextStyle(
              fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        tileColor: Colors.white);
  }
}

class CartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Cart',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
      body: ListView.builder(
          itemCount: Constants.cartList.length,
          itemBuilder: (context, index) {
            return myCartItem(index);
          }),
    );
  }

 myCartItem(index) {
  return Column(
    children: [
      SizedBox(
        height: 10,
        ),
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 2.0,         
          ),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),  
        ),
        child: ListTile(
          leading: CircleAvatar(
            child: Image.network(Constants.cartList[index].image),
          ),
          title: Text(Constants.cartList[index].name),
          subtitle: Text(Constants.cartList[index].brand),
          trailing: Text(Constants.cartList[index].price),
        ),
      ),
    ],
  );
}

}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25),
            _getProfileHead(
                'https://thumbs.dreamstime.com/b/businessman-avatar-image-beard-hairstyle-male-profile-vector-illustration-178545831.jpg'),
            SizedBox(height: 25),
            _getProfileCard(),
            SizedBox(height: 15),
            _getProfileCard2(),
            SizedBox(height: 15),
            _getLogout(context),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  Widget _getProfileHead(image) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 3.0),
            borderRadius: BorderRadius.circular(20.0)),
        child: Card(
          child: Stack(
            children: [
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'M.Summamah Siddiqui',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text("m.summamah123@gmail.com")
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  Widget _getProfileCard() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 3.0),
            borderRadius: BorderRadius.circular(20.0)),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Personal Details'),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('My Orders'),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('My Favorites'),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                leading: Icon(Icons.location_on),
                title: Text('Shipping Address'),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                leading: Icon(Icons.credit_card),
                title: Text('My Card'),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                trailing: Icon(Icons.chevron_right),
              ),
            ],
          ),
        ));
  }

  Widget _getProfileCard2() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 3.0),
            borderRadius: BorderRadius.circular(20.0)),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Icon(Icons.info),
                title: Text('FAQs'),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                leading: Icon(Icons.privacy_tip),
                title: Text('Privacy Policy'),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                leading: Icon(Icons.money),
                title: Text('Payment Method'),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Help and Support'),
                trailing: Icon(Icons.chevron_right),
              ),
            ],
          ),
        ));
  }

  Widget _getLogout(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 25.0),
            side: BorderSide(color: Colors.black, width: 2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            )),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SplashScreen4()));
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          });
        },
        child: Text(
          'Logout',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
