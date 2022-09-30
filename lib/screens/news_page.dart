import 'package:daryo/models/news.dart';
import 'package:daryo/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class News_Page extends StatefulWidget {
  const News_Page({super.key});
  static List<NewsClass> news = [
    NewsClass(
        time: '20:54',
        image: Myimages.salomatlik,
        date: '29 sentabr 2022',
        title:
            "Mavsumiy infeksiyalarni yengish uchun foydali mahsulotlarni iste'mol qilish kerak.",
        watchCaunt: '123',
        info: 'Salomatlik'),
    NewsClass(
        time: '08:52',
        image: Myimages.tez_yordam,
        date: '30 sntabr 2022',
        title:
            "Quyi Chirchiqdagi bog'chada bolalar ovqatdan zaharlangani aytilmoqda",
        watchCaunt: '120001',
        info: 'Mahaliy'),
    NewsClass(
        time: '09:10',
        image: Myimages.putin,
        date: '30 sentabr 2022',
        title:
            "Rossiya Zaporojye va Xerson viloyatlari mustaqilligini tan oldi",
        watchCaunt: '281231',
        info: 'Dunyo'),
    NewsClass(
        time: '22:33',
        image: Myimages.kros,
        date: '29 sentabr 2022',
        title: "Toni Kroos mavsum so'ngida faoliyatini yakunlamoqchi",
        watchCaunt: '1827522',
        info: 'Sport'),
    NewsClass(
        time: '10:04',
        image: Myimages.riana,
        date: '28 sentabr 2022',
        title:
            "Besh yil ichida ilk bor: amerikalik xonanda Rianna konsert berishini ma'lum qildi.",
        watchCaunt: '999',
        info: 'Madaniyat'),
    NewsClass(
        time: '20:54',
        image: Myimages.salomatlik,
        date: '29 sentabr 2022',
        title:
            "Mavsumiy infeksiyalarni yengish uchun foydali mahsulotlarni iste'mol qilish kerak.",
        watchCaunt: '123',
        info: 'Salomatlik'),
    NewsClass(
        time: '08:52',
        image: Myimages.tez_yordam,
        date: '30 sntabr 2022',
        title:
            "Quyi Chirchiqdagi bog'chada bolalar ovqatdan zaharlangani aytilmoqda",
        watchCaunt: '120001',
        info: 'Mahaliy'),
    NewsClass(
        time: '09:10',
        image: Myimages.putin,
        date: '30 sentabr 2022',
        title:
            "Rossiya Zaporojye va Xerson viloyatlari mustaqilligini tan oldi",
        watchCaunt: '281235',
        info: 'Dunyo'),
    NewsClass(
        time: '22:33',
        image: Myimages.kros,
        date: '29 sentabr 2022',
        title: "Toni Kroos mavsum so'ngida faoliyatini yakunlamoqchi",
        watchCaunt: '1827500',
        info: 'Sport'),
    NewsClass(
        time: '10:04',
        image: Myimages.riana,
        date: '28 sentabr 2022',
        title:
            "Besh yil ichida ilk bor: amerikalik xonanda Rianna konsert berishini ma'lum qildi.",
        watchCaunt: '999',
        info: 'Madaniyat'),
  ];
  @override
  State<News_Page> createState() => _News_PageState();
}

class _News_PageState extends State<News_Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: News_Page.news.length,
        itemBuilder: (BuildContext context, int index) {
          return NewsItem(News_Page.news[index]);
        },
      ),
    );
  }

  Widget NewsItem(NewsClass news) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5).r,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                '${news.info}',
                style:
                    const TextStyle(color: Color.fromARGB(255, 111, 182, 240)),
              ),
              SizedBox(
                width: 90.w,
              ),
              Text(
                '${news.time} | ${news.date} | ',
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              const Icon(
                Icons.remove_red_eye,
                color: Color.fromARGB(255, 101, 179, 242),
              ),
              SizedBox(
                width: 4.w,
              ),
              Text(
                '${news.watchCaunt}',
                style: const TextStyle(
                  color: Color.fromARGB(255, 96, 171, 232),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                news.image,
                width: 120.w,
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Text('${news.title}'),
              ),
            ],
          ),
          const Divider(
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
