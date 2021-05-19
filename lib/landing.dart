import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'LetsDo.dart';
import 'Slider.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    SliderPage(
        title: "Keep",
        description:
            "Accept cryptocurrencies and digital assets, keep thern here, or send to orthers",
        image: "assets/bg1.png"),
    SliderPage(
        title: "Buy",
        description:
            "Buy Bitcoin and cryptocurrencies with VISA and MasterVard right in the App",
        image: "assets/bg2.png"),
    SliderPage(
        title: "Sell",
        description:
            "Sell your Bitcoin cryptocurrencies or Change with orthres digital assets or flat money",
        image: "assets/bg3.png"),
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onchanged,
            controller: _controller,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/bg1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.57,
                    ),
                    Text("A Big Decision",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Center(
                      child: Text("Choosing a career is one of the most",
                          style: TextStyle(fontSize: 16)),
                    ),
                    Center(
                      child: Text(
                          "important decisions you will make in your life",
                          style: TextStyle(fontSize: 16)),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.10,
                    ),
                    InkWell(
                      onTap: () {
                        (_currentPage == (_pages.length - 1))
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LetsDo()))
                            : _controller.nextPage(
                                duration: Duration(milliseconds: 800),
                                curve: Curves.easeInOutQuint);
                      },
                      child: AnimatedContainer(
                          alignment: Alignment.center,
                          duration: Duration(milliseconds: 300),
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.75,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(35)),
                          child: Text(
                            "Continue",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/bg2.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.57,
                    ),
                    Text("Information Overload",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Center(
                      child: Text(
                        "But amount of information out there",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Center(
                      child: Text(
                        "can be very intimidating and can make an",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Center(
                      child: Text(
                        "exciting decisions very hard.",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                    ),
                    InkWell(
                      onTap: () {
                        (_currentPage == (_pages.length - 1))
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LetsDo()))
                            : _controller.nextPage(
                                duration: Duration(milliseconds: 800),
                                curve: Curves.easeInOutQuint);
                      },
                      child: AnimatedContainer(
                          alignment: Alignment.center,
                          duration: Duration(milliseconds: 300),
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.75,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(35)),
                          child: Text(
                            "Continue",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/bg3.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.57,
                    ),
                    Text("We are here to help",
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Center(
                      child: Text("Using this app will help make it a",
                          style: TextStyle(fontSize: 16, color: Colors.white)),
                    ),
                    Center(
                        child: Text("bit easier.",
                            style:
                                TextStyle(fontSize: 16, color: Colors.white))),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.10,
                    ),
                    InkWell(
                      onTap: () {
                        (_currentPage == (_pages.length - 1))
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LetsDo()))
                            : _controller.nextPage(
                                duration: Duration(milliseconds: 800),
                                curve: Curves.easeInOutQuint);
                      },
                      child: AnimatedContainer(
                          alignment: Alignment.center,
                          duration: Duration(milliseconds: 300),
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.75,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(35)),
                          child: Text(
                            "Continue",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(_pages.length, (int index) {
                    return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: 10,
                        width: (index == _currentPage) ? 10 : 10,
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: (index == _currentPage)
                                ? Colors.red
                                : Colors.white.withOpacity(0.5)));
                  })),
            ],
          ),
        ],
      ),
    );
  }
}
