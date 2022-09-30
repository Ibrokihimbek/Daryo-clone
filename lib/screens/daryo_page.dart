import 'package:daryo/screens/drawer_body.dart';
import 'package:daryo/screens/news_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Daryo_page extends StatefulWidget {
  const Daryo_page({super.key});

  @override
  State<Daryo_page> createState() => _Daryo_pageState();
}

class _Daryo_pageState extends State<Daryo_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10).r,
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                showDialog(
                  context: context,
                  builder: ((context) => AlertDialog(
                        title: Text("Kechirasiz!"),
                        content: Text("Bu project to'lib bitirilmagan"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("OK"))
                        ],
                      )),
                );
              },
              child: const Icon(
                Icons.search,
                size: 30,
              ),
            ),
          )
        ],
        title: const Text(
          "Daryo",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: 400,
              height: 200,
              color: Colors.blue,
              child: DrawerHeader(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Daryo',
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        selectLang()
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Toshkent',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 115.w,
                        ),
                        Icon(
                          Icons.filter_drama,
                          color: Colors.white,
                        ),
                        SizedBox(width: 8.w),
                        Text('+12.0', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Divider(
                      thickness: 0.8,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.monetization_on_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          '10769.78',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Icon(
                          Icons.euro_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          '10769.78',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Icon(
                          Icons.currency_ruble,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          '146.77',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Drawer_body_page(),
          ],
        ),
      ),
      body: const News_Page(),
    );
  }

  List<bool> _isSelected = [false, true];

  Widget selectLang() {
    return Container(
      width: 135.w,
      height: 30.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.white)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ToggleButtons(
            borderRadius: BorderRadius.circular(30),
            children: [
              Container(
                width: 65.w,
                height: 30.h,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                    color: _isSelected[0] ? Colors.white : Colors.blue),
                child: Text(
                  'LOTINCHA',
                  style: TextStyle(
                      color: _isSelected[0] ? Colors.blue : Colors.white,
                      fontSize: 8),
                ),
                alignment: Alignment.center,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: _isSelected[1] ? Colors.white : Colors.blue),
                width: 65.w,
                height: 30.h,
                child: Text(
                  'KIRILCHA',
                  style: TextStyle(
                      color: _isSelected[1] ? Colors.blue : Colors.white,
                      fontSize: 8),
                ),
                alignment: Alignment.center,
              ),
            ],
            isSelected: _isSelected,
            onPressed: (int index) {
              setState(
                () {
                  if (index == 0) {
                    _isSelected[0] = true;
                    _isSelected[1] = false;
                  } else {
                    _isSelected[1] = true;
                    _isSelected[0] = false;
                  }
                },
              );
            },
          )
        ],
      ),
    );
  }
}
