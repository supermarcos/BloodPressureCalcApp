import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final int _data;

  ResultsPage(this._data) {
    print(this._data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RESULTS'),
        elevation: 0,
        backgroundColor: Colors.indigo[800],
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              Colors.indigo[800],
              Colors.indigo[700],
              Colors.indigo[600],
              Colors.indigo[400],
            ],
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            Card(
              color: Colors.white,
              elevation: 2,
              shape: Border.all(style: BorderStyle.none),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    // title of report + actions
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "Interpretation Report",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          // decoration: BoxDecoration(
                          //   border: Border(
                          //     bottom: BorderSide(color: Colors.black),
                          //   ),
                          // ),
                        ),
                        IconButton(
                          icon: Icon(Icons.mail_outline),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    // first section of content
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                "First section of report",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Text(
                              "this is data laksdjf ;alksdfj a;sldfkja sd;lfkajsdfhasd kfjahsd fkajsdh flaksjdf halksdjfh alksdhjf hakdjf halskdjf ahlskdfjh alsdkfjah sldfkja hsdlfkaj shdflkasjd fhlaksjdfh alsdkjfh alsdkfj haldskfja shdlfka jsdhfl aksjdfhalkdfja slhkdf ahj l ak djhal  fhfal sdjh asl kjsa h"),
                        ],
                      ),
                    ),
                    // second section of content
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                "Second section of report",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Text(
                              "this is data laksdjf ;alksdfj a;sldfkja sd;lfkajsdfhasd kfjahsd fkajsdh flaksjdf halksdjfh alksdhjf hakdjf halskdjf ahlskdfjh a laksdjf ;alksdfj a;sldfkja sd;lfkajsdfhasd kfjahsd fkajsdh flaksjdf halksdjfh alksdhjf hakdjf halskdjf ahlskdfjh a laksdjf ;alksdfj a;sldfkja sd;lfkajsdfhasd kfjahsd fkajsdh flaksjdf halksdjfh alksdhjf hakdjf halskdjf ahlskdfjh a laksdjf ;alksdfj a;sldfkja sd;lfkajsdfhasd kfjahsd fkajsdh flaksjdf halksdjfh alksdhjf hakdjf halskdjf ahlskdfjh alsdkfjah sldfkja hsdlfkaj shdflkasjd fhlaksjdfh alsdkjfh alsdkfj haldskfja shdlfka jsdhfl aksjdfhalkdfja slhkdf ahj l ak djhal  fhfal sdjh asl kjsa h"),
                        ],
                      ),
                    ),
                    // third section of content
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                "Third section of report",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Text(
                              "this is data laksdjf ;alksdfj a;sldfkja sd;lfkajsdfhasd kfjahsd fkajsdh flaksjdf halksdjfh alksdhjf hakdjf halskdjf ahlskdfjh alsdkfjah sldfkja hsdlfkaj shdflkasjd fhlaksjdfh alsdkjfh alsdkfj haldskfja shdlfka jsdhfl aksjdfhalkdfja slhkdf ahj l ak djhal  fhfal sdjh asl kjsa h"),
                        ],
                      ),
                    ),
                    // report footer
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "Generated by ",
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.grey),
                        ),
                        Text(
                          "BP Calc",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.grey),
                        ),
                      ],
                    ),
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
