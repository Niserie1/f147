import 'package:flutter/material.dart';

class BildirimSayfasi extends StatefulWidget {
  const BildirimSayfasi({super.key});

  @override
  State<BildirimSayfasi> createState() => _BildirimSayfasiState();
}

class _BildirimSayfasiState extends State<BildirimSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back),
              color: Colors.white),
          title: const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 5,
            ),
            child: Text('Bildirimler', style: TextStyle(color: Colors.white)),
          ),
        ),
        body: ListView.separated(
          itemCount: 1,
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.black,
            );
          },
          itemBuilder: (context, index) {
            return Column(
              children: const [
                SizedBox(
                  height: 75,
                  child: Card(
                      child: ListTile(
                    leading: Icon(size: 40, color: Colors.black, Icons.person),
                    title: Text(
                      'Metin ilanını beğendi dasdsad asdasd asdas dasd a dsadasd sada s',
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
                ),
                SizedBox(
                  height: 75,
                  child: Card(
                      child: ListTile(
                    leading: Icon(size: 40, color: Colors.black, Icons.person),
                    title: Text(
                      'Metin ilanını beğendi dasdsad asdasd asdas dasd a dsadasd sada s',
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
                ),
                SizedBox(
                  height: 75,
                  child: Card(
                      child: ListTile(
                    leading: Icon(size: 40, color: Colors.black, Icons.person),
                    title: Text(
                      'Metin ilanını beğendi dasdsad asdasd asdas dasd a dsadasd sada s',
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
                ),
                SizedBox(
                  height: 75,
                  child: Card(
                      child: ListTile(
                    leading: Icon(size: 40, color: Colors.black, Icons.person),
                    title: Text(
                      'Metin ilanını beğendi dasdsad asdasd asdas dasd a dsadasd sada s',
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
                ),
                SizedBox(
                  height: 75,
                  child: Card(
                      child: ListTile(
                    leading: Icon(size: 40, color: Colors.black, Icons.person),
                    title: Text(
                      'Metin ilanını beğendi dasdsad asdasd asdas dasd a dsadasd sada s',
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
                ),
                SizedBox(
                  height: 75,
                  child: Card(
                      child: ListTile(
                    leading: Icon(size: 40, color: Colors.black, Icons.person),
                    title: Text(
                      'Metin ilanını beğendi dasdsad asdasd asdas dasd a dsadasd sada s',
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
                ),
                SizedBox(
                  height: 75,
                  child: Card(
                      child: ListTile(
                    leading: Icon(size: 40, color: Colors.black, Icons.person),
                    title: Text(
                      'Metin ilanını beğendi dasdsad asdasd asdas dasd a dsadasd sada s',
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
                ),
                SizedBox(
                  height: 75,
                  child: Card(
                      child: ListTile(
                    leading: Icon(size: 40, color: Colors.black, Icons.person),
                    title: Text(
                      'Metin ilanını beğendi dasdsad asdasd asdas dasd a dsadasd sada s',
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
                ),
                SizedBox(
                  height: 75,
                  child: Card(
                      child: ListTile(
                    leading: Icon(size: 40, color: Colors.black, Icons.person),
                    title: Text(
                      'Metin ilanını beğendi dasdsad asdasd asdas dasd a dsadasd sada s',
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
                ),
                SizedBox(
                  height: 75,
                  child: Card(
                      child: ListTile(
                    leading: Icon(size: 40, color: Colors.black, Icons.person),
                    title: Text(
                      'Metin ilanını beğendi dasdsad asdasd asdas dasd a dsadasd sada s',
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
                ),
                SizedBox(
                  height: 75,
                  child: Card(
                      child: ListTile(
                    leading: Icon(size: 40, color: Colors.black, Icons.person),
                    title: Text(
                      'Metin ilanını beğendi dasdsad asdasd asdas dasd a dsadasd sada s',
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
                ),
                SizedBox(
                  height: 75,
                  child: Card(
                      child: ListTile(
                    leading: Icon(size: 40, color: Colors.black, Icons.person),
                    title: Text(
                      'Metin ilanını beğendi dasdsad asdasd asdas dasd a dsadasd sada s',
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
                ),
              ],
            );
          },
        ));
  }
}
