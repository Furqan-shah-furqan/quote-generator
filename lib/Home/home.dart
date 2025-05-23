import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../Service/quote_class.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // responsiveness.
    final minHeight = MediaQuery.of(context).size.height / 2;
    final minWidth = MediaQuery.of(context).size.width / 2;
    String mText = 'Tap the button to generate new quote';
    return Scaffold(
      backgroundColor: Colors.grey[200],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<QuoteClass>(context, listen: false).getQuote();
        },
        child: Icon(Icons.navigate_next_rounded),
      ),
      body: Consumer<QuoteClass>(
        builder: (context, value, child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: minWidth * 1.5,
                  height: minHeight,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:
                      value.currentQuote.isNotEmpty
                          ? SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Text(
                              value.currentQuote.toUpperCase(),
                              style: GoogleFonts.oswald(
                                fontSize: minWidth * 0.1,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                          : Text(
                            mText.toUpperCase(),
                            style: GoogleFonts.fjallaOne(
                              fontSize: minWidth * 0.1,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
