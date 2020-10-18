import 'package:flutter/material.dart';

class ListProduk extends StatefulWidget {
  @override
  _ListProdukState createState() => _ListProdukState();
}

class _ListProdukState extends State<ListProduk> {
  List dataProduk = [
    {
      "nama": "Wisata Sitinurbaya",
      "lokasi": "Gunung Padang",
      "harga": 12000,
      "gambar": "jembatan_sitinurbaya.jpg",
      "detail":
          "Tempatnya di dekat pandtai dan gunung Padang, area parkirnya luas dan ada mushollah"
    },
    {
      "nama": "Lubuk Ranting",
      "lokasi": "Lubuk Alung",
      "harga": 15000,
      "gambar": "lubuak_rantiang.jpg",
      "detail":
          "Tempatnya di dekat pandtai dan gunung Padang, area parkirnya luas dan ada mushollah"
    },
    {
      "nama": "Wisata Mangrove",
      "lokasi": "Pantai Indah Kapuk",
      "harga": 15000,
      "gambar": "jembatan_sitinurbaya.jpg",
      "detail":
          "Tempatnya di dekat pandtai dan gunung Padang, area parkirnya luas dan ada mushollah"
    },
    {
      "nama": "Wisata Mangrove",
      "lokasi": "Pantai Indah Kapuk",
      "harga": 15000,
      "gambar": "jembatan_sitinurbaya.jpg",
      "detail":
          "Tempatnya di dekat pandtai dan gunung Padang, area parkirnya luas dan ada mushollah"
    },
    {
      "nama": "Wisata Maribayabay",
      "lokasi": "Bandung",
      "harga": 20000,
      "gambar": "maribayabay.jpg",
      "detail":
          "Tempatnya di dekat pandtai dan gunung Padang, area parkirnya luas dan ada mushollah"
    },
    {
      "nama": "Wisata Miniatur Makah",
      "lokasi": "Gunung Panggilun",
      "harga": 15000,
      "gambar": "miniatur_makah.jpeg",
      "detail":
          "Tempatnya di dekat pandtai dan gunung Padang, area parkirnya luas dan ada mushollah"
    },
    {
      "nama": "Wisata Miniatur Makah",
      "lokasi": "Gunung Panggilun",
      "harga": 15000,
      "gambar": "miniatur_makah.jpeg",
      "detail":
          "Tempatnya di dekat pandtai dan gunung Padang, area parkirnya luas dan ada mushollah"
    },
    {
      "nama": "Wisata Monas",
      "lokasi": "Jakarta Pusat",
      "harga": 15000,
      "gambar": "monas.jpg",
      "detail":
          "Tempatnya di dekat pandtai dan gunung Padang, area parkirnya luas dan ada mushollah"
    },
    {
      "nama": "Wisata Museum Adityawarman",
      "lokasi": "Padang",
      "harga": 15000,
      "gambar": "museum_adityawarman.jpg",
      "detail":
          "Tempatnya di dekat pandtai dan gunung Padang, area parkirnya luas dan ada mushollah"
    },
    {
      "nama": "Wisata Museum Adityawarman",
      "lokasi": "Padang",
      "harga": 15000,
      "gambar": "museum_adityawarman.jpg",
      "detail":
          "Tempatnya di dekat pandtai dan gunung Padang, area parkirnya luas dan ada mushollah"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Produk'),
      ),
      body: GridView.builder(
          itemCount: dataProduk.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: Column(
                    children: <Widget>[Text(dataProduk[index]['nama'])],
                  ),
                ),
                child: Image.asset(
                    'images/produk/' + dataProduk[index]['gambar']));
          }),
    );
  }
}
