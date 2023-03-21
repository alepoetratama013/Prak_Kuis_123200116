import 'package:flutter/material.dart';

import 'data_buku.dart';


class HalamanDetail extends StatelessWidget {
  final DataBuku buku;
  const HalamanDetail({Key? key, required this.buku}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(buku.title),
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.network(buku.imageLink),
              ],
            ),
          ),
          Text('Judul           : ' + buku.title),
          Text('Penulis         : ' + buku.author),
          Text('Bahasa          : ' + buku.language),
          Text('Negara          : ' + buku.country),
          Text('Jumlah Halaman  : ' + buku.pages.toString()),
          Text('Tahun Terbit    : ' + buku.year.toString()),
          Text(buku.isAvailable ? 'Tersedia' : 'Tidak Tersedia',
          style: TextStyle(color: buku.isAvailable ? Colors.green : Colors.red,),
      ),
    ],
    ),
    );

  }
}
