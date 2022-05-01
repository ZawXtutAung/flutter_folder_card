import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              alignment: Alignment.topCenter,
              child: SimpleFoldingCell.create(
                frontWidget: _buildFrontWidget(index),
                innerWidget: _buildInnerWidget(index),
                cellSize: Size(MediaQuery.of(context).size.width, 140),
                padding: EdgeInsets.all(15),
                animationDuration: Duration(milliseconds: 300),
                borderRadius: 10,
                onOpen: () => print('cell opened'),
                onClose: () => print('cell closed'),
              ),
            );
          },
        ));
  }

  Widget _buildFrontWidget(int index) {
    //todo
    return Builder(builder: ((xcontext) {
      return Container(
        color: Color(0xFFffcd3c),
        alignment: Alignment.center,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Text(
                "CARD TITLE",
                style: GoogleFonts.aldrich(
                  color: Color(0xFF2e282a),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              right: 10,
              bottom: 10,
              child: TextButton(
                onPressed: () {
                  final first = xcontext
                      .findAncestorStateOfType<SimpleFoldingCellState>();
                  first?.toggleFold();
                },
                child: Text(
                  "OPEN",
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: Size(80, 40),
                ),
              ),
            )
          ],
        ),
      );
    }));
    //Todo
  }

  Widget _buildInnerWidget(int index) {
    return Builder(builder: (BuildContext context) {
      return Container(
        color: Color(0xFFecf2f9),
        padding: EdgeInsets.only(top: 10),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "CARD TITLE",
                style: GoogleFonts.aldrich(
                  color: Color(0xFF2e282a),
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "CARD DETAIL",
                style: GoogleFonts.aldrich(
                  color: Color(0xFF2e282a),
                  fontSize: 40.0,
                ),
              ),
            ),
            Positioned(
              right: 10,
              bottom: 10,
              child: TextButton(
                onPressed: () {
                  final first =
                      context.findAncestorStateOfType<SimpleFoldingCellState>();
                  first?.toggleFold();
                },
                child: Text(
                  "Close",
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: Size(80, 40),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
