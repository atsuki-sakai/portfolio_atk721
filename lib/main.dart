import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => PortfolioView(),
      },
    );
  }
}

class PortfolioView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TitleHeader(),
              NavigationMenu(),
              Container(
                width: double.infinity,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    image: Image.asset('images/bg.jpg').image,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: Color.fromRGBO(163, 228, 215, 0.8), width: 5.0),
                ),
                margin: const EdgeInsets.all(20.0),
                child: Container(
                  width: 1200,
                  height: 500,
                  margin: const EdgeInsets.all(80.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: ' SIMPLE ',
                                  style: GoogleFonts.notoSans(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    shadows: [
                                      Shadow(
                                          color: Colors.black,
                                          offset: Offset(4, 4),
                                          blurRadius: 5)
                                    ],
                                  ),
                                ),
                                TextSpan(
                                  text: 'に、そして美しく動くアプリを心がけています。',
                                  style: GoogleFonts.notoSans(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: screenSize.height,
                width: screenSize.width,
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
        width: 1200,
        padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.02),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Spacer(),
              SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'About',
                  style: GoogleFonts.notoSans(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Works',
                  style: GoogleFonts.notoSans(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Blag',
                  style: GoogleFonts.notoSans(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Contacts',
                  style: GoogleFonts.notoSans(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ));
  }
}

class TitleHeader extends StatelessWidget {
  const TitleHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: 120,
      width: 1200,
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 40,
          ),
          FlutterLogo(
            size: 80,
          ),
          SizedBox(
            width: 10,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'ATSUKI SAKAI',
                    style: GoogleFonts.fasterOne(
                        fontSize: 38.0,
                        color: Colors.black,
                        textBaseline: TextBaseline.alphabetic)),
                TextSpan(
                    text: '  +  ',
                    style: TextStyle(
                        color: Colors.redAccent[400],
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: 'PORTFOLIO',
                    style: GoogleFonts.notable(
                        fontSize: 34.0, color: Colors.black87)),
              ],
            ),
          ),
          Spacer(),
          Row(
            children: [
              IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.twitter,
                    color: Colors.lightBlue[400],
                    size: 28.0,
                  ),
                  onPressed: () {}),
              SizedBox(
                width: 20,
              ),
              IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.medium,
                    size: 28.0,
                  ),
                  onPressed: () {}),
              SizedBox(
                width: 20,
              ),
              IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.github,
                    color: Colors.grey[600],
                    size: 28.0,
                  ),
                  onPressed: () {}),
              SizedBox(
                width: 40,
              ),
            ],
          )
        ],
      ),
    );
  }
}
