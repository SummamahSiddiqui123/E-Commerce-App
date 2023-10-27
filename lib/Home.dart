import 'package:flutter/material.dart';

void main() {}

class BottomNavigationExample extends StatefulWidget {
  const BottomNavigationExample({Key? key}) : super(key: key);

  @override
  _BottomNavigationExampleState createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State {
  int _selectedTab = 0;

  List _pages = [
    HomeView(),
    getcart(),
    getnotification(),
    Center(
      child: Text("Profile"),
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'MobileMart',
          style: TextStyle(fontSize: 20),
        ),
      ),
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

HomeView() {
  return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
    SizedBox(height: 10),
    Text(
      "Apple:-",
      style: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
    ),
    SizedBox(height: 10),
    RowWithHorizontalScroll(getrow()),
    SizedBox(height: 18),
    RowWithHorizontalScroll(getrow1()),
    SizedBox(height: 10),
    Text(
      "Samsung:-",
      style: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
    ),
    SizedBox(height: 10),
    RowWithHorizontalScroll(getrow2()),
    SizedBox(height: 18),
    RowWithHorizontalScroll(getrow3()),
    SizedBox(height: 10),
    Text(
      "Realme:-",
      style: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
    ),
    SizedBox(height: 10),
    RowWithHorizontalScroll(getrow4()),
    SizedBox(height: 18),
    RowWithHorizontalScroll(getrow5()),
  ])));
}

getrow() {
  return Row(children: <Widget>[
    getcard(
        'https://www.laybyland.com.au/media/catalog/product/cache/f3909c84cc0b01542da25634e4effa6c/1/3/1309728_full.jpg',
        "Iphone 15 Pro Max"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'https://eezepc.com/wp-content/uploads/2022/09/14-pro-max-256GB-purple-1.jpg',
        "Iphone 14 Pro Max"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'https://specbuzz.com/media/phone/Apple_iphone_13_Pro_max_pictures.jpg',
        "Iphone 13 Pro Max"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'https://images-eu.ssl-images-amazon.com/images/I/71GLMJ7TQiL._AC_UL210_SR210,210_.jpg',
        "Iphone 13"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5rvX6Krp9HfRPNAM0q3gzoaI6Hs-XPdHJbtOlHfcfAqWYlV__MtF1zpyaDpE53fdBVOM&usqp=CAU',
        "Iphone 12 Pro Max"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'https://images.officeworks.com.au/api/2/img/https://s3-ap-southeast-2.amazonaws.com/wc-prod-pim/JPEG_1000x1000/AIP12128BL_.jpg/resize?size=600&auth=MjA5OTcwODkwMg__',
        "Iphone 12"),
    SizedBox(
      width: 18,
    ),
  ]);
}

getrow1() {
  return Row(children: <Widget>[
    getcard('https://m.media-amazon.com/images/I/41WsaMyJAqL.jpg', "Iphone 11"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'https://cdn.alloallo.media/catalog/product/apple/iphone/iphone-11-pro/iphone-11-pro-midnight-green.jpg',
        "Iphone 11 Pro Max"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'data:image/jpeg;base64,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',
        "Iphone X"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'https://cdn.alloallo.media/catalog/product/apple/iphone/iphone-xs-max/iphone-xs-max-gold.jpg',
        "Iphone XS Max"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'https://cdn.alloallo.media/catalog/product/apple/iphone/iphone-8/iphone-8-silver.jpg',
        "Iphone 8"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'data:image/jpeg;base64,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',
        "Iphone 8 Plus"),
    SizedBox(
      width: 18,
    ),
  ]);
}

getrow2() {
  return Row(children: <Widget>[
    getcard('https://m.media-amazon.com/images/I/61j99uUfXNL.jpg',
        "Samsung S23 Ultra"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSpkrX0EcN6RWvATOZD0VY7vUDZMGUJaZL-UlpZCEk0wlX4OmJVC6pkSShYsPcyDZ4crY&usqp=CAU',
        "Samsung S22"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'https://www.pakmobizone.pk/wp-content/uploads/2022/02/Samsung-Galaxy-S22-Ultra-5G-Green-8.jpg',
        "Samsung S22 Ultra"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'https://i0.wp.com/samsungmart.pk/wp-content/uploads/2021/05/48f6-Samsung-s21-price-in-pakistan-qmart.pk-5-0-1-550x550-1.jpg',
        "Samsung S21 Ultra"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'https://cdn.dxomark.com/wp-content/uploads/medias/post-80404/Samsung-Galaxy-S21-5G-Yoast-image-packshot-review.jpg',
        "Samsung S21"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'https://www.phonemall.pk/wp-content/uploads/2021/03/Samsung-Galaxy-S20-Ultra-At-Lowest-Price-in-Pakistan-PhoneMall-6ksBps.webp',
        "Samsung S20 Ultra"),
    SizedBox(
      width: 18,
    ),
  ]);
}

getrow3() {
  return Row(children: <Widget>[
    getcard('https://www.brandsmerkez.com/wp-content/uploads/2022/08/a32-2.jpg',
        "Samsung A32"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'https://images.priceoye.pk/samsung-galaxy-a52-pakistan-priceoye-xu4x1-500x500.webp',
        "Samsung A52"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'https://rocket.pk/media/catalog/product/cache/207e23213cf636ccdef205098cf3c8a3/s/a/samsung-galaxy-a21s-pakistan-priceoye-81xy3_1_.png',
        "Samsung A21"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'https://cdn.dxomark.com/wp-content/uploads/medias/post-88123/template-featured-image-packshot-review-1024x691.jpg',
        "Samsung A72"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'https://www.hcsupermart.com/wp-content/uploads/2021/07/samsung-a02s-.jpg',
        "Samsung A02s"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'data:image/jpeg;base64,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',
        "Samsung S10"),
    SizedBox(
      width: 18,
    ),
  ]);
}

getrow4() {
  return Row(children: <Widget>[
    getcard('https://static-01.daraz.pk/p/8dae68bb26cb52080eb475a799e63db9.jpg',
        "Realme C33"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'https://image01.realme.net/general/20230512/1683873815640.png.webp?width=1440&height=1440&size=544990',
        "Realme Narzo N53"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'https://www.mega.pk/items_images/Realme+8+Pro+8GB+RAM+128GB+Storage+Price+in+Pakistan%2C+Specifications%2C+Features_-_22797.webp',
        "Realme 8 Pro"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'https://images.priceoye.pk/realme-narzo-20-pakistan-priceoye-d2mwn.jpg',
        "Realme Narzo 20"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'data:image/jpeg;base64,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',
        "Realme C35"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'https://media-ik.croma.com/prod/https://media.croma.com/image/upload/v1686294913/Croma%20Assets/Communication/Mobiles/Images/273443_gnhdmz.png',
        "Realme 11 Pro"),
    SizedBox(
      width: 18,
    ),
  ]);
}

getrow5() {
  return Row(children: <Widget>[
    getcard(
        'https://adminapi.applegadgetsbd.com/storage/media/large/realme-10-Rush-Black-4740.jpg',
        "Realme 10"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'https://newmobiles.com.pk/wp-content/uploads/2019/08/Realme-5-Official-Image.jpg',
        "Realme 5"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'https://newmobiles.com.pk/wp-content/uploads/2020/01/Realme-5s-Official-Image-600x600.jpg',
        "Realme 5s"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'https://media-ik.croma.com/prod/https://media.croma.com/image/upload/v1692788788/Croma%20Assets/Communication/Mobiles/Images/300095_fvyzff.png',
        "Realme 11"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX6fRTKMhDvcKjDM9jH-gmjuGRqkCjd-cnjTGcdSHhLTckcY54ihVBCzZns08yynf012k&usqp=CAU',
        "Realme V30"),
    SizedBox(
      width: 18,
    ),
    getcard(
        'https://www.mobiledokan.co/wp-content/uploads/2023/08/Realme-GT5-240W-Starry-Oasis.webp',
        "Realme GT5"),
    SizedBox(width: 18),
  ]);
}

getcard(image, text) {
  return Container(
    decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 3.0),
        borderRadius: BorderRadius.circular(20.0)),
    child: Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.network(
            '$image',
            fit: BoxFit.cover,
            width: 200,
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$text',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    ),
  );
}

class RowWithHorizontalScroll extends StatelessWidget {
  final Widget child;

  RowWithHorizontalScroll(this.child);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: child,
    );
  }
}

getnotification() {
  return Scaffold(
      body: SingleChildScrollView(
    child: Column(children: [
      SizedBox(
        height: 15,
      ),
      Text(
        "Notifiaction",
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
      title: Text("$title"),
      subtitle: Text("$subtitle"),
      trailing: Text("$trailing"),
      tileColor: Colors.white);
}

getcart() {
  return Scaffold(
    body: Column(
      children: [
        Text(
          'Cart',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        getCardItemCard(
            'https://www.laybyland.com.au/media/catalog/product/cache/f3909c84cc0b01542da25634e4effa6c/1/3/1309728_full.jpg',
            '\$1191.00',
            'Iphone 15 Pro Max'),
        SizedBox(
          height: 8,
        ),
        getCardItemCard(
            'https://cdn.alloallo.media/catalog/product/apple/iphone/iphone-xs-max/iphone-xs-max-gold.jpg',
            '\$700.00',
            'Iphone XS Max'),
      ],
    ),
  );
}

getCardItemCard(image, amount, text) {
  return Container(
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
                        '$text',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 8.0,
              right: 8.0,
              child: Text(
                'Price: $amount',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ));
}

getprofile() {
  return Scaffold(
    body: Column(
      children: [
        getprofilehead(
            'https://cdn.vectorstock.com/i/preview-1x/17/61/male-avatar-profile-picture-vector-10211761.jpg')
      ],
    ),
  );
}

getprofilehead(image) {
  return Container(
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
