import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'nav_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List features = [
    {
      "imagePath": "assets/Images/man.png",
      "title": "Height Detector",
      "description": "Upload a picture of anyone"
    },
    {
      "imagePath": "assets/Images/girl.png",
      "title": "Dating Profile Optimizer",
      "description": "Enhance dating profile"
    },
    {
      "imagePath": "assets/Images/suit.png",
      "title": "Date Outfit Suggestion",
      "description": "Suggests outfits for different ty"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffDDEBFB), Color(0xffF1E8F8)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          title: Column(
            children: [
              Text(
                'Good Morning, 👋',
                style: GoogleFonts.onest(
                  color: const Color(0xff08080F),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        'assets/Images/avatar.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Nico Robin',
                    style: GoogleFonts.onest(
                      color: const Color(0xff08080F),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
            ],
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 7, top: 5),
            child: SizedBox(
              height: 60,
              width: 60,
              child: Center(
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/Images/dash.png',
                      height: 25,
                      width: 25,
                    ),
                  ),
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10, bottom: 7, top: 5),
              child: Container(
                height: 50,
                width: 46,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/Images/noti.png',
                    height: 25,
                    width: 25,
                  ),
                ),
              ),
            ),
          ],
          centerTitle: true,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(height: 60,decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.transparent,
        ), child: CustomBottomNavBar(),),
      ),
      body: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffDDEBFB),
              Color(0xffF1E8F8),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 450,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Stack(
                          children: [
                        Align(
                            child: Image.asset("assets/Images/mask.png",height: 450,width: 450,),alignment: Alignment.center,),

                        Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 1.1,
                            // height: 350,
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0,top: 14),
                                      child: Image.asset("assets/Images/mobile.png",height: 350,width: 350,),
                                    ),
                                    Positioned(
                                      top: 100,
                                      left: 20,
                                      child: Container(
                                        height: 36,
                                        width: 175,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                            color: Color(0xffFFFFFF)),
                                        child: Center(
                                          child: Text(
                                            'Hey👋, Are you available?',
                                            style: GoogleFonts.onest(
                                              color: const Color(0xff08080F),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 120,
                                      right: 60,
                                        child: Image.asset('assets/Images/pic2.png',height: 65,width: 65,),
                                    ),
                                    Positioned(
                                      bottom: 110,
                                      left: 55,
                                      child: SizedBox(
                                        width: MediaQuery.of(context).size.width / 1.4,
                                        child: Row(
                                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              // height: 80,
                                                width: 80,
                                                child: Stack(
                                                  children: [

                                                    Column(
                                                      children: [
                                                        Image.asset('assets/Images/pic1.png',height: 65,width: 65,),
                                                      ],
                                                    ),
                                                    Positioned(
                                                        right: 10,
                                                        child: Image.asset('assets/Images/heart.png',height: 25,width: 25,)),
                                                  ],
                                                )),
                                            SizedBox(width: 10,),
                                            Container(
                                              height: 36,
                                              width: 175,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(100),
                                                  color: Color(0xffFFFFFF)),
                                              child: Center(
                                                child: Text(
                                                  'Yeah! I am, Let’s Hangout🍷 ',
                                                  style: GoogleFonts.onest(
                                                    color: const Color(0xff08080F),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 10,
                                      left: 38,
                                      child: SizedBox(
                                        width: MediaQuery.of(context).size.width / 1.4,
                                        child: Text(
                                          textAlign: TextAlign.center,
                                          'Upload A Screenshot Of A Chat Or Dating App Profile',
                                          style: GoogleFonts.onest(
                                            color: const Color(0xff08080F),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        bottom: 92,
                                        right: 100,
                                        child: Image.asset('assets/Images/emoji.png',height: 35,width: 35,)),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),
                            SizedBox(
                              height: 450,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 22),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 36,
                                      width: 170,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color: Color(0xff30BCBF)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/Images/download.png",
                                              height: 20,
                                              width: 20,
                                            ),
                                            Text(
                                              'Upload A Screenshot',
                                              style: GoogleFonts.onest(
                                                color: const Color(0xffFFFFFF),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )

                          ]),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pookie Tool’s',
                      style: GoogleFonts.onest(
                        color: const Color(0xff08080F),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'See More',
                              style: GoogleFonts.onest(
                                color: const Color(0xff08080F),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'assets/Images/arrow.png',
                              height: 15,
                              width: 15,
                            )
                          ],
                        ),
                        Container(
                          height: 1, // Thickness of the underline
                          width: 95, // Full width underline
                          color: const Color(0xff08080F), // Underline color
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 171,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Container(
                          height: 171,
                          width: 152,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: const Color(0xffFFFFFF).withOpacity(0.4)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 18,),
                                Padding(
                                  padding: EdgeInsets.only(left: 3, bottom: 8),
                                  child: Image.asset(
                                    features[index]['imagePath'],
                                    height: 40,
                                    width: 40,
                                  ),
                                ),
                                Text(
                                  features[index]['title'],
                                  style: GoogleFonts.onest(
                                    color: const Color(0xff08080F),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  features[index]['description'],
                                  style: GoogleFonts.onest(
                                    color: const Color(0xff6B6B6F),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
