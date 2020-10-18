import 'package:flutter/material.dart';
import 'package:flutter_day2/list_produk.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List menuUtama = [
    {"nama": "Produk", "icon": Icons.shopping_cart},
    {"nama": "Mall", "icon": Icons.person},
    {"nama": "Indomaret", "icon": Icons.dashboard},
    {"nama": "Centro", "icon": Icons.apps}
  ];

  List menuKasir = [
    {'nama': 'Kasir', 'icon': Icons.laptop},
    {'nama': 'Laporan Kasir', 'icon': Icons.person}
  ];
  @override
  Widget build(BuildContext context) {
    double sH = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text('Page 1'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              height: sH / 6,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemCount: menuUtama.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(menuUtama[index]['icon']),
                          Text('${menuUtama[index]['nama']}'),
                        ],
                      )),
                    );
                  }),
            ),
            Container(
                margin: EdgeInsets.all(10),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                height: sH / 12,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: menuKasir.length,
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => ListProduk()));
                                },
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(menuKasir[index]['icon']),
                                      Text(menuKasir[index]['nama'])
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                )
                //
                // GridView.builder(
                //     physics: NeverScrollableScrollPhysics(),
                //     itemCount: menuKasir.length,
                //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //         crossAxisCount: 2),
                //     itemBuilder: (context, index) {
                //       return Card(
                //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children: <Widget>[
                //             Icon(menuKasir[index]['icon']),
                //             Text(menuKasir[index]['nama'])
                //           ],
                //         ),
                //       );
                //     }),
                )
          ],
        ));
  }
}
