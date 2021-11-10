import 'package:book_store/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left: 25, top: 25),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                  'Hi, Febiadi',
                  style: GoogleFonts.openSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: kGreyColor),
                  ),
                  Text(
                  'Discover Latest Book',
                  style: GoogleFonts.openSans(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: kBlackColor),
                  ),
                ],
              ),
            ),

            Container(
              height: 39,
              margin: EdgeInsets.only(left: 25, right: 25, top: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kLightGreyColor
              ),
              child: Stack(
                children: <Widget>[
                  TextField(
                    maxLengthEnforced: true,
                    style: GoogleFonts.openSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: kBlackColor
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 19, right: 50, bottom: 8),
                      border: InputBorder.none,
                      hintText: 'Search book...',
                      hintStyle: GoogleFonts.openSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: kGreyColor
                      )
                    ),
                  ),
                  Positioned(
                  right: 0,
                  child: SvgPicture.asset('assets/svg/background_search.svg'),
                  ),
                  Positioned(
                    top: 8,
                    right: 9,
                    child: SvgPicture.asset('assets/icons/icon_search_white.svg')
                  )
                ],
              ),
            ),

            Container(
              height: 25,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(left: 25),
              child: DefaultTabController(
                length: 3, 
                child: TabBar(
                  labelPadding: EdgeInsets.all(0),
                  indicatorPadding: EdgeInsets.all(0),
                  isScrollable: true,
                  labelColor: kBlackColor,
                  unselectedLabelColor: kGreyColor,
                  labelStyle: GoogleFonts.openSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                  unselectedLabelStyle: GoogleFonts.openSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  indicatorColor: kBlackColor,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 2),
                    insets: EdgeInsets.only(right: 50),
                  ),
                  tabs: [
                  Tab(
                    child: Container(
                      margin: EdgeInsets.only(right: 23),
                      child: Text('Recommended'),
                    ),
                  ),
                  Tab(
                    child: Container(
                      margin: EdgeInsets.only(right: 23),
                      child: Text('Trending'),
                    ),
                  ),
                  Tab(
                    child: Container(
                      margin: EdgeInsets.only(right: 23),
                      child: Text('Best Seller'),
                    ),
                  )
                ]),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 21),
              height: 210,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 25, right: 6),
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index){
                return Container(
                  margin: EdgeInsets.only(right: 19),
                  height: 210,
                  width: 153,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kMainColor,
                    image: DecorationImage(image: AssetImage('assets/images/img_newbook1.png'))
                  ),
                );
              }),
            ),

            Padding(
              padding: EdgeInsets.only(left: 25, top: 25),
              child: Text(
                'Popular',
                style: GoogleFonts.openSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: kBlackColor
                ),
              ),
            ),

            ListView.builder(
              padding: EdgeInsets.only(top: 25, left: 25, right: 25),
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index){
              return Container(
                margin: EdgeInsets.only(bottom: 19),
                height: 81,
                width: MediaQuery.of(context).size.width - 50,
                color: kBackgroundColor,
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 81,
                      width: 62,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(image: AssetImage('assets/images/img_popular_book1.png')
                        ),
                        color: kMainColor,
                      ),
                    ),
                    SizedBox(
                      width: 21,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("You're A Miracle", style: GoogleFonts.openSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: kBlackColor),
                        ),
                        SizedBox(height: 5,),
                        Text('Mike McHargue', style: GoogleFonts.openSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: kGreyColor),
                        ),
                        SizedBox(height: 5,),
                        Text('\$20', style: GoogleFonts.openSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: kBlackColor),
                        ),
                      ],
                    )
                  ],
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}