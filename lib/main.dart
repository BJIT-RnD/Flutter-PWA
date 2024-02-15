import 'package:flutter/material.dart';

void main() async {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: Colors.transparent,
      appBar: AppBar(
        actions: [
          if (MediaQuery.of(context).size.width < 900)
            Builder(
              builder: (context) => IconButton(
                icon: const MenuIcon(),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            )
          else
            Padding(
              padding:
                  EdgeInsets.only(right: MediaQuery.sizeOf(context).width / 10),
              child: const MenuItems(),
            ),
        ],
        backgroundColor: const Color.fromARGB(255, 82, 32, 123),
        leadingWidth: MediaQuery.sizeOf(context).width / 1.5,
        leading: Row(
          children: [
            SizedBox(width: MediaQuery.sizeOf(context).width / 10),
            Image.asset(
              "assets/images/logo.png",
              height: 30,
            ),
            const SizedBox(
              width: 20,
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'BJIT Code Warrior\n',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Urbanist'),
                  ),
                  TextSpan(
                    text: 'The Last man standing',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: const MobileDrawer(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color.fromARGB(255, 74, 0, 119),
        child: Stack(
          children: [
            if (MediaQuery.of(context).size.width > 900)
              Image.asset('assets/images/line.png')
            else if (MediaQuery.of(context).size.width <= 900)
              Center(child: Image.asset('assets/images/line.png')),
            Image.asset(
              'assets/images/grid.png',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
            // Image.asset('assets/images/gridMobile.png',
            // height: MediaQuery.of(context).size.height,
            // width: MediaQuery.of(context).size.width,
            // fit: BoxFit.fitHeight,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (MediaQuery.of(context).size.width > 900)
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/images/java.png',
                        width: 90,
                        height: 90,
                      ),
                      Image.asset(
                        'assets/images/js.png',
                        width: 90,
                        height: 90,
                      ),
                    ],
                  ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (MediaQuery.of(context).size.width < 900)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.01),
                              alignment: Alignment.centerLeft,
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset(
                                'assets/images/java.png',
                                width: 45,
                                height: 45,
                              ),
                            ),
                          ],
                        ),
                      Text(
                        'GET READY',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 11, 253, 209),
                          fontWeight: FontWeight.w700,
                          fontSize:
                              MediaQuery.of(context).size.width > 900 ? 32 : 20,
                          fontFamily: 'Inter',
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            top: 6, bottom: 6, left: 25, right: 25),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 3, 36, 84),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Text(
                              'For the ultimate coding challenge with',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    MediaQuery.of(context).size.width > 900
                                        ? 20
                                        : 14,
                                fontFamily: 'Inter',
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.arrow_downward,
                              color: Color.fromARGB(255, 11, 253, 209),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height:
                            MediaQuery.of(context).size.width > 900 ? 64 : 48,
                      ),
                      Text(
                        '“BJIT Code Warrior: \n The Last Man Standing.”',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 211, 88),
                          fontWeight: FontWeight.w700,
                          fontSize:
                              MediaQuery.of(context).size.width > 900 ? 64 : 24,
                          fontFamily: 'Oswald',
                        ),
                      ),
                      if (MediaQuery.of(context).size.width < 900)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.01),
                              alignment: Alignment.centerRight,
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset(
                                'assets/images/html.png',
                                width: 45,
                                height: 45,
                              ),
                            ),
                          ],
                        ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: <InlineSpan>[
                            TextSpan(
                              // text:
                              //     'Whether you\'re a seasoned coder or a curious mind,',
                              text: MediaQuery.of(context).size.width > 900
                                  ? 'Whether you\'re a seasoned coder or a curious mind,'
                                  : 'Whether you\'re a seasoned coder\n or a curious mind,',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                fontFamily: 'Oswald',
                              ),
                            ),
                            WidgetSpan(
                              child: Image.asset(
                                'assets/images/mind.png',
                                width: 80, // Adjust the width
                                height: 42, // Adjust the height
                              ),
                              alignment: PlaceholderAlignment
                                  .bottom, // Align the image with the middle of the text
                            ),
                            TextSpan(
                              // text: 'this\n',
                              text: MediaQuery.of(context).size.width > 900
                                  ? 'this\n'
                                  : 'this\n\n',

                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                fontFamily: 'Oswald',
                              ),
                            ),
                            TextSpan(
                              // text: 'endeavor will push your skills',
                              text: MediaQuery.of(context).size.width > 900
                                  ? 'endeavor will push your skills'
                                  : 'endeavor will push your skills\n',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                fontFamily: 'Oswald',
                              ),
                            ),
                            WidgetSpan(
                              child: Image.asset(
                                'assets/images/skill.png',
                                width: 80, // Adjust the width
                                height: 42, // Adjust the height
                              ),
                              alignment: PlaceholderAlignment
                                  .bottom, // Align the image with the middle of the text
                            ),
                            const TextSpan(
                              text: 'to the limit!',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                fontFamily: 'Oswald',
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (MediaQuery.of(context).size.width < 900)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.01),
                              alignment: Alignment.centerLeft,
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset(
                                'assets/images/js.png',
                                width: 45,
                                height: 45,
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
                if (MediaQuery.of(context).size.width > 900)
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/html.png',
                        width: 90,
                        height: 90,
                      ),
                    ],
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
            top: kToolbarHeight + 2,
            left: 0,
            child: SizedBox(
              height: 64.0,
              width: MediaQuery.sizeOf(context).width,
              child: const DrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 82, 32, 123)),
                margin: EdgeInsets.all(0.0),
                padding: EdgeInsets.all(0.0),
                child: MenuItems(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MenuItems extends StatelessWidget {
  const MenuItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(
          width: 50,
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Home',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 248, 213, 109),
              decoration: TextDecoration.underline,
              decorationColor: Color.fromARGB(255, 248, 213, 109),
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Rules',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 248, 213, 109),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'Registration',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}

class MenuIcon extends StatefulWidget {
  const MenuIcon({super.key});

  @override
  State<MenuIcon> createState() => _MenuIconState();
}

class _MenuIconState extends State<MenuIcon> {
  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.menu_rounded,
      color: Colors.amber,
    );
  }
}
