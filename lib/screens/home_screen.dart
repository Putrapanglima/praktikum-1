import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/detail_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pageController = PageController(viewportFraction: 0.877);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Container(
                color: Color.fromARGB(255, 179, 38, 179),
                height: 57.6,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 57.6,
                      width: 57.6,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: const Color(0x080a0928),
                      ),
                      child: const Icon(Icons.reorder),
                    ),
                    Text(
                      'putraStoreApp',
                      style: GoogleFonts.playfairDisplay(
                        color: Color.fromARGB(255, 248, 245, 245),
                      ),
                    ),

                    Container(
                      height: 57.6,
                      width: 57.6,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: const Color(0x080a0928),
                      ),
                      child: const Icon(Icons.search),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 48, left: 28.8),
                child: Text(
                  'Welcome to \n Fashion Store',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 40.6, fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 75, 68, 75),
                  ),
                  ),
                ),
           Container(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            color: Color.fromARGB(255, 75, 68, 75),
            height: 218.4,
            margin: const EdgeInsets.only(top: 20.8),
            child: PageView(
              physics: const BouncingScrollPhysics(),
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8ZmFzaGlvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'))),
                  ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const DetailScreen()
                    ),
                  );
                  print("You Click Me");
                },
                ),
                GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1490481651871-ab68de25d43d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60'))),
                  ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const DetailScreen()
                    ),
                  );
                  print("You Click Me");
                },
                ),
                GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1551232864-3f0890e580d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTJ8fGZhc2hpb258ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60'))),
                  ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const DetailScreen()
                    ),
                  );
                  print("You Click Me");
                },
                ),
                GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1558769132-cb1aea458c5e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGZhc2hpb258ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60'))),
                  ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const DetailScreen()
                    ),
                  );
                  print("You Click Me");
                },
                ),
                
              ],
            ),
           ),
           Padding(
            padding: const EdgeInsets.only(left: 28.8, top: 28.8),
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 4,
              effect: const ExpandingDotsEffect(
                activeDotColor: Colors.blue,
                dotColor: Colors.blueGrey,
                dotHeight: 5,
                dotWidth: 6,
                spacing: 5),
            ),
           ),
           Padding(
            padding: const EdgeInsets.only(top: 50, right: 30, left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Untuk Kamu',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Show All',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.blueGrey,
                  ),
                )
              ],
            ),
           ),
           Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1509319117193-57bab727e09d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGZhc2hpb258ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60'))),
                  ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const DetailScreen()
                    ),
                    );
                  print("You Click Me");
                },
                ),
           ),
           Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1495121605193-b116b5b9c5fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjl8fGZhc2hpb258ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60'))),
                  ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const DetailScreen()
                    ),
                  );
                  print("You Click Me");
                },
                ),
           ),
           Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1603400521630-9f2de124b33b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzZ8fGZhc2hpb258ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60'))),
                  ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const DetailScreen()
                    ),
                  );
                  print("You Click Me");
                },
                ),
           ),
           Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1462392246754-28dfa2df8e6b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fGZhc2hpb258ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60'))),
                  ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const DetailScreen()
                    ),
                  );
                  print("You Click Me");
                },
                ),
           ),
           Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1532453288672-3a27e9be9efd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTR8fGZhc2hpb258ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60'))),
                  ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const DetailScreen()
                    ),
                  );
                  print("You Click Me");
                },
                ),
           ),
           Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1585914924626-15adac1e6402?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODl8fGZhc2hpb258ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60'))),
                  ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const DetailScreen()
                    ),
                  );
                  print("You Click Me");
                },
                ),
           ),
            ],
          )
        )
      )
    );
  }
}
