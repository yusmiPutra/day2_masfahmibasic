import 'package:flutter/material.dart';

class DetailProduk extends StatelessWidget {
  String namaDetail, gambarDetail, lokasiDetail, detailDetail;
  int hargaDetail;
  DetailProduk(
      {this.namaDetail,
      this.gambarDetail,
      this.hargaDetail,
      this.lokasiDetail,
      this.detailDetail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(namaDetail),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Image.asset('images/produk/' + gambarDetail),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Lokasi : $lokasiDetail'),
                Text('Harga Rp. $hargaDetail')
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              '$detailDetail',
              textAlign: TextAlign.justify,
            )
          ],
        ),
      ),
    );
  }
}
