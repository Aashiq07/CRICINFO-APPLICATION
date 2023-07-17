import 'package:flutter/material.dart';
import 'package:second_app/description.dart';
import 'package:second_app/main.dart';

class HomePag extends StatefulWidget {
  const HomePag({super.key});

  @override
  State<HomePag> createState() => _HomePagState();
}

class _HomePagState extends State<HomePag> {
  Color backgroundcolor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(64, 196, 255, 1),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  if (backgroundcolor == Colors.white) {
                    backgroundcolor = const Color.fromRGBO(64, 196, 255, 1);
                  } else {
                    backgroundcolor = Colors.white;
                  }
                });
              },
              icon: const Icon(Icons.color_lens))
        ],
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(64, 196, 255, 1),
                ),
                child: ListTile(
                  title: Text(
                    'ASH',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.settings),
                title: const Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const LoginPage();
                      },
                    ),
                  );
                },
                leading: const Icon(Icons.logout),
                title: const Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Wrap(
                spacing: 10,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.blue[200],
                        shape: const StadiumBorder()),
                    child: const Text('Virat Kohli'),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.blue[200],
                          shape: const StadiumBorder()),
                      child: const Text('MS Dhoni')),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.blue[200],
                          shape: const StadiumBorder()),
                      child: const Text('Sachin Tendulkar')),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.blue[200],
                          shape: const StadiumBorder()),
                      child: const Text('Rohit Sharma')),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.blue[200],
                          shape: const StadiumBorder()),
                      child: const Text('Zaheer Khan'))
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const DescriptionPage(
                          title: 'The Art of Fast Bowling',
                          imagePath:
                              'https://st2.depositphotos.com/4187167/10086/i/450/depositphotos_100868464-stock-photo-cricket-bowler-holding-ball.jpg',
                        )));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(
                            2,
                            2,
                          ))
                    ]),
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 5.0,
                ),
                child: Column(
                  children: [
                    Center(
                      child: Image.network(
                          'https://st2.depositphotos.com/4187167/10086/i/450/depositphotos_100868464-stock-photo-cricket-bowler-holding-ball.jpg'),
                    ),
                    const ListTile(
                      title: Text('The Art of Fast Bowling'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const DescriptionPage(
                          title: 'Masterclass Batting',
                          imagePath:
                              'https://prod.chaseyoursport.com/blogImage/0.16168523502143106.jpeg',
                        )));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(
                            2,
                            2,
                          ))
                    ]),
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 5.0,
                ),
                child: Column(
                  children: [
                    Center(
                      child: Image.network(
                          'https://prod.chaseyoursport.com/blogImage/0.16168523502143106.jpeg'),
                    ),
                    const ListTile(
                      title: Text('Masterclass Batting'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const DescriptionPage(
                          title: 'Behind the stumps',
                          imagePath:
                              'https://resize.indiatvnews.com/en/resize/newbucket/1200_-/2017/12/mahendra-singh-dhoni-successfully-breaks-the-wicket-to-dismiss-sri-lanka-s-angelo-mathews-during-their-t20i-in-colombo-1514130758.jpg',
                        )));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(
                            2,
                            2,
                          ))
                    ]),
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 5.0,
                ),
                child: Column(
                  children: [
                    Center(
                      child: Image.network(
                          'https://resize.indiatvnews.com/en/resize/newbucket/1200_-/2017/12/mahendra-singh-dhoni-successfully-breaks-the-wicket-to-dismiss-sri-lanka-s-angelo-mathews-during-their-t20i-in-colombo-1514130758.jpg'),
                    ),
                    const ListTile(
                      title: Text('Behind the stumps'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const DescriptionPage(
                          title: 'Sharp Fielding',
                          imagePath:
                              'https://lastwordonsports.com/cricket/wp-content/uploads/sites/13/2021/03/gettyimages-1200288498-594x594-2.jpg',
                        )));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(
                            2,
                            2,
                          ))
                    ]),
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 5.0,
                ),
                child: Column(
                  children: [
                    Center(
                      child: Image.network(
                          'https://lastwordonsports.com/cricket/wp-content/uploads/sites/13/2021/03/gettyimages-1200288498-594x594-2.jpg'),
                    ),
                    const ListTile(
                      title: Text('Sharp Fielding'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const DescriptionPage(
                          title: 'Umpiring',
                          imagePath:
                              'https://st3.cricketcountry.com/wp-content/uploads/cricket/16565f3ca2451d4ac8f0da194d4171b1.jpeg',
                        )));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(
                            2,
                            2,
                          ))
                    ]),
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 5.0,
                ),
                child: Column(
                  children: [
                    Center(
                      child: Image.network(
                          'https://st3.cricketcountry.com/wp-content/uploads/cricket/16565f3ca2451d4ac8f0da194d4171b1.jpeg'),
                    ),
                    const ListTile(
                      title: Text('Umpiring'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
