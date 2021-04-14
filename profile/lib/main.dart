import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile',
      home: Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  final phoneNumber = "(581)-307-6902";
  final email = "emma.philips@gmail.com";
  final itemList = {
    Icons.favorite_border: "Your Favorites",
    Icons.payment: "Payment",
    Icons.fiber_manual_record_outlined: "Tell Your Friends",
    Icons.tab_unselected_sharp: "Promotions",
    Icons.settings: "Setting"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: null,
          icon: Icon(Icons.arrow_back),
          padding: EdgeInsets.only(left: 20.0),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.auto_stories), onPressed: null),
          const SizedBox(
            width: 10.0,
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(0, 30, 0, 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 50.0)),
                ClipOval(
                  child: Image.asset(
                    'images/avatar.png',
                    width: 100,
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Emma Philips',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Fashion Model',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                  ],
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 20.0)),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 50.0)),
                Icon(Icons.call),
                Padding(padding: EdgeInsets.only(right: 20.0)),
                Text(
                  phoneNumber,
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 50.0)),
                Icon(
                  Icons.mail,
                ),
                Padding(padding: EdgeInsets.only(left: 20.0)),
                Text(
                  email,
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Divider(
              color: Colors.black,
              height: 2.0,
            ),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Column(
                      children: [
                        Text(
                          "\$140.00",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Wallet',
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.black,
                    width: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Column(
                      children: [
                        Text(
                          "12",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Orders',
                          style: TextStyle(fontSize: 13.0, color: Colors.black),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.black,
              height: 2.0,
            ),
            Padding(padding: EdgeInsets.only(bottom: 20.0)),
            Padding(padding: EdgeInsets.only(bottom: 20.0)),
            Expanded(
              child: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: itemList.length,
                    itemBuilder: (_, i) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildRow(itemList.keys.elementAt(i),
                              itemList.values.elementAt(i)),
                          Padding(padding: EdgeInsets.only(bottom: 40.0)),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
              height: 2.0,
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 50.0,
                ),
                Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
                const SizedBox(
                  width: 30.0,
                ),
                Text(
                  "LogOut",
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector _buildRow(IconData icon, String text) => GestureDetector(
        onTap: () => print(text),
        child: Container(
          child: Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 50.0)),
              Icon(icon, color: Colors.blue),
              Padding(padding: EdgeInsets.only(right: 30.0)),
              Text(
                text,
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      );
}
