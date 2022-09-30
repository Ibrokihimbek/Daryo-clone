import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Drawer_body_page extends StatefulWidget {
  const Drawer_body_page({super.key});

  @override
  State<Drawer_body_page> createState() => _Drawer_body_pageState();
}

class _Drawer_body_pageState extends State<Drawer_body_page> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          ListTile(
            onTap: () {},
            tileColor: Colors.yellow[200],
            title: Text("Qo'llanma Ekranini ko'rish"),
          ),
          ListTile(
            onTap: () {},
            tileColor: Colors.grey[200],
            title: const Text(
              "So'ngi yangiliklar",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text("Mahaliy"),
          ),
          ListTile(
            onTap: () {},
            title: Text("Dunyo"),
          ),
          ListTile(
            onTap: () {},
            title: Text("Texnologiyalar"),
          ),
          Divider(
            thickness: 1,
          ),
          ListTile(
            onTap: () {},
            title: Text(
              "Tanlangan xabarlar",
              style: TextStyle(color: Colors.green),
            ),
          ),
          Divider(
            thickness: 1,
          ),
          ListTile(
            onTap: () {},
            title: Text("Madaniyat"),
          ),
          ListTile(
            onTap: () {},
            title: Text("Avto"),
          ),
          ListTile(
            onTap: () {},
            title: Text("Sport"),
          ),
          ListTile(
            onTap: () {},
            title: Text("Foto"),
          ),
          ListTile(
            onTap: () {},
            title: Text("Lifestyle"),
          ),
          ListTile(
            onTap: () {},
            title: Text("Kolumnistlar"),
          ),
          ListTile(
            onTap: () {},
            tileColor: Colors.grey[100],
            title: Text("Afisha"),
          ),
        ],
      ),
    );
  }
}
