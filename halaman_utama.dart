import 'package:flutter/material.dart';

import 'halaman_detail.dart';
import 'data_buku.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Data Buku'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: listBuku.length,
          itemBuilder: (context, index) {
            final DataBuku buku = listBuku[index];
            return ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HalamanDetail(buku: buku),
                  ),
                );
              },
              leading: SizedBox(
                height: MediaQuery.of(context).size.width / 3,
                width: MediaQuery.of(context).size.height / 3,
                child: Image.network(buku.imageLink[0],
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(buku.title),
              subtitle: Text(buku.author),
            );
          },
        ),
      ),
    );
  }
}
