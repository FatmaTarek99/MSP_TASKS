import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black12,
            title: Text(
              'TabBar Screen',
              style: GoogleFonts.pacifico(fontStyle: FontStyle.italic),
            ),
            centerTitle: true,
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.pinkAccent,
              labelColor: Colors.white,
              tabs: [
                Tab(child: Text(
                  'First Name',
                  style: GoogleFonts.pacifico(fontStyle: FontStyle.italic),

                ),
                  icon: Icon(Icons.ac_unit),
                ),
                Tab(child: Text(
                  'Second Name',
                ),
                  icon: Icon(Icons.account_circle),
                ),
                Tab(child: Text(
                  'Family Name',
                ),
                  icon: Icon(Icons.home),
                ),

              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TabBarView(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'FATMA',
                        style: GoogleFonts.pacifico(
                            fontWeight:FontWeight.bold ,
                        fontSize: 30.0,
                        ),
                        //  TextStyle(
                        //
                        //   fontWeight: FontWeight.bold,
                        //   fontSize: 30.0,
                        //
                        // ),
                      ),
                      Divider(height: 30.0,
                      color: Colors.pinkAccent,
                        endIndent: 50.0,
                        indent: 50.0,
                        thickness: 5.0,
                      ),
                      Text(
                        'Tarek',
                        style: GoogleFonts.pacifico(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Text(
                    'TAREK',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,

                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'ELKUSSY',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,

                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}