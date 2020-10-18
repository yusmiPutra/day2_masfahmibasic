import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  TextEditingController namaController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String agama = "Islam";
  List listAgama = [
    'Islam',
    'Budha',
    'Hindu',
    'Kristen Protestan',
    'Kristen Khatolik',
    'Konghucu'
  ];

  void pilihAgama(String value) {
    setState(() {
      agama = value;
    });
  }

  String jk = "";
  void pilihJk(String value) {
    setState(() {
      jk = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            TextFormField(
              controller: namaController,
              decoration: InputDecoration(
                  hintText: 'input nama',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                  hintText: 'input email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: 'password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Pilih Agama'),
                DropdownButton(
                    value: agama,
                    items: listAgama.map((val) {
                      return DropdownMenuItem(
                        child: Text(val),
                        value: val,
                      );
                    }).toList(),
                    onChanged: (value) {
                      pilihAgama(value);
                    })
              ],
            ),
            SizedBox(
              height: 5,
            ),
            RadioListTile(
              value: "Laki-laki",
              groupValue: jk,
              onChanged: (value) {
                pilihJk(value);
              },
              title: Text('Laki-laki'),
              activeColor: Colors.green,
            ),
            RadioListTile(
              value: "Perempuan",
              groupValue: jk,
              onChanged: (value) {
                pilihJk(value);
              },
              title: Text('Perempuan'),
              activeColor: Colors.green,
            ),
            SizedBox(
              height: 5,
            ),
            OutlineButton(
              color: Colors.deepOrangeAccent,
              textColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        title: Text('Informasi'),
                        content: Container(
                          height: 100,
                          child: Column(
                            children: <Widget>[
                              Text('Nama : ${namaController.text}'),
                              Text('Email : ${emailController.text}'),
                              Text('Password : ${passwordController.text}'),
                              Text('Agama : $agama'),
                              Text('Jenis Kelamin : $jk')
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: Text('REGISTER'),
            )
          ],
        ),
      ),
    );
  }
}
