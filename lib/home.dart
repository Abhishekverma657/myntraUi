import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<ZStack> items = [
    ZStack([
      Image.network(
        "https://media.istockphoto.com/id/679539190/photo/indian-made-mens-shoes.jpg?s=612x612&w=0&k=20&c=1wTYVNCgSpNcnzfLxPzjfd1swEWXnUZHKzikNupEaWk=",
        fit: BoxFit.cover,
      ),
      Positioned(
          bottom: 100,
          left: 170,
          child: VxBox(child: "dressby".text.italic.size(19).makeCentered())
              .size(82, 40)
              .white
              .alignCenter
              .shadow5xl
              .make()),
      Positioned(
          bottom: 100,
          left: 80,
          child: VxBox(child: "Allen Skly".text.italic.size(19).makeCentered())
              .size(82, 40)
              .white
              .alignCenter
              .shadow5xl
              .make()),
      Positioned(
          bottom: 30,
          left: 70,
          child: Column(
            children: [
              "Chic Fottwear".text.size(30).white.make(),
              "Min 40 % off".text.size(30).white.make(),
            ],
          ))
    ]),
    ZStack([
      Image.network(
        "https://cdn.pixabay.com/photo/2016/11/19/08/00/towel-1838210__480.jpg",
        fit: BoxFit.cover,
      ),
      Positioned(
          bottom: 100,
          left: 170,
          child: VxBox(child: "dressby".text.italic.size(19).makeCentered())
              .size(82, 40)
              .white
              .alignCenter
              .shadow5xl
              .make()),
      Positioned(
          bottom: 100,
          left: 80,
          child: VxBox(child: "Allen Skly".text.italic.size(19).makeCentered())
              .size(82, 40)
              .white
              .alignCenter
              .shadow5xl
              .make()),
      Positioned(
          bottom: 30,
          left: 70,
          child: Column(
            children: [
              "Chic Fottwear".text.size(30).white.make(),
              "Min 40 % off".text.size(30).white.make(),
            ],
          ))
    ]),
    ZStack([
      Image.network(
        "https://cdn.pixabay.com/photo/2020/06/29/17/16/strawberries-5353463__480.jpg",
        fit: BoxFit.cover,
      ),
      Positioned(
          bottom: 100,
          left: 170,
          child: VxBox(child: "dressby".text.italic.size(19).makeCentered())
              .size(82, 40)
              .white
              .alignCenter
              .shadow5xl
              .make()),
      Positioned(
          bottom: 100,
          left: 80,
          child: VxBox(child: "Allen Skly".text.italic.size(19).makeCentered())
              .size(82, 40)
              .white
              .alignCenter
              .shadow5xl
              .make()),
      Positioned(
          bottom: 30,
          left: 70,
          child: Column(
            children: [
              "Chic Fottwear".text.size(30).white.make(),
              "Min 40 % off".text.size(30).white.make(),
            ],
          ))
    ]),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //  backgroundColor:Colors.orange,
        appBar: AppBar(
          iconTheme: const  IconThemeData(color: Colors.black),
          title: "Myntra".text.bold.black.make(),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.search_outlined, color: Vx.black),
                WidthBox(13),
                Icon(Icons.favorite_border_outlined, color: Vx.black),
                WidthBox(13),
                Icon(Icons.shopping_bag_outlined, color: Vx.black),
              ],
            ).p(16)
          ],
          backgroundColor: Vx.white,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  decoration: const  BoxDecoration(
                    color: Vx.white,
                  ),
                  child: Row(
                    children: [
                     const   CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              "https://cdn.pixabay.com/photo/2016/08/20/05/38/avatar-1606916__480.png")),
                      VStack([
                        "Your Name".text.bold.size(20).green800.make(),
                        const  HeightBox(15),
                        "939392023".text.make()
                      ]).p(12)
                    ],
                  )),
              ListTile(
                title: "Men".text.size(18).make(),
                trailing:  const Icon (
                   Icons.chevron_right_outlined,
                  size: 40,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: "Women".text.size(18).make(),
                trailing: const  Icon(
                  Icons.chevron_right_outlined,
                  size: 40,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: "Kids".text.size(18).make(),
                trailing:  const Icon(
                  Icons.chevron_right_outlined,
                  size: 40,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: "Home& Style".text.size(18).make(),
                trailing:  const Icon(
                  Icons.chevron_right_outlined,
                  size: 40,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const  Divider(
                height: 1,
              ),
              "EXPLORE".text.make().p16(),
             const   Divider(
                height: 1,
              ),
              ListTile(
                  title: "Gift Cards".text.size(17).make(),
                  trailing: VxBox(child: "Featured".text.red800.makeCentered())
                      .size(80, 30)
                      .border(color: Colors.red)
                      .rounded
                      .make()),
              ListTile(
                  title: "Deal Of The Day".text.size(17).make(),
                  trailing: VxBox(child: "New".text.red800.makeCentered())
                      .size(80, 30)
                      .border(color: Colors.red)
                      .rounded
                      .make()),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 80,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black54, BlendMode.darken),
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd3Z3b_9JXua8WWaEtpmEicncu7DNxagq-Bg&usqp=CAU"))),
                  child: ZStack([
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Support The EarthQuacke solidarity Campaign"
                              .text
                              .bold
                              .gray100
                              .size(16)
                              .make(),
                          "Know More".text.bold.gray100.size(25).make(),
                          " Donate Esasential Goods and Financial Aid for Turkey"
                              .text
                              .bold
                              .gray100
                              .size(13)
                              .make(),
                        ],
                      ),
                    )
                  ]),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: const BoxDecoration(

                      //  border: Border.all(color: Colors.black)

                      ),
                  child: CarouselSlider(
                      disableGesture: true,
                      items: items,
                      options: CarouselOptions(
                        height: 500,
                        aspectRatio: 16 / 11,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        scrollDirection: Axis.horizontal,
                      )),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: "FEATURED BRANDS".text.bold.size(20).make(),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                            height: 230,
                            width: 200,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 166, 240, 171),
                            ),
                            child: ZStack([
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Image.network(
                                  "https://cdn.pixabay.com/photo/2014/12/08/14/23/pocket-watch-560937__480.jpg",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Positioned(
                                  top: 120,
                                  left: 50,
                                  child: VxBox(
                                          child: "DANIEL KLEIN"
                                              .text
                                              .bold
                                              .makeCentered())
                                      .size(100, 32)
                                      .white
                                      .shadowMax
                                      .make()),
                              Positioned(
                                  top: 160,
                                  left: 40,
                                  child: VStack([
                                    "40-70% Off".text.size(25).make(),
                                    "Shop Now"
                                        .text
                                        .bold
                                        .red800
                                        .size(20)
                                        .make()
                                        .p(8)
                                  ]))
                            ])),
                        const  SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 230,
                          width: 200,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 166, 240, 171),
                          ),
                          child: ZStack([
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.network(
                                "https://cdn.pixabay.com/photo/2014/12/08/14/23/pocket-watch-560937__480.jpg",
                                fit: BoxFit.contain,
                              ),
                            ),
                            Positioned(
                                top: 120,
                                left: 50,
                                child: VxBox(
                                        child: "DANIEL KLEIN"
                                            .text
                                            .bold
                                            .makeCentered())
                                    .size(100, 32)
                                    .white
                                    .shadowMax
                                    .make()),
                            Positioned(
                                top: 160,
                                left: 40,
                                child: VStack([
                                  "40-70% Off".text.size(25).make(),
                                  "Shop Now"
                                      .text
                                      .bold
                                      .red800
                                      .size(20)
                                      .make()
                                      .p(8)
                                ]))
                          ]),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 230,
                          width: 200,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 166, 240, 171),
                          ),
                          child: ZStack([
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.network(
                                "https://cdn.pixabay.com/photo/2014/12/08/14/23/pocket-watch-560937__480.jpg",
                                fit: BoxFit.contain,
                              ),
                            ),
                            Positioned(
                                top: 120,
                                left: 50,
                                child: VxBox(
                                        child: "DANIEL KLEIN"
                                            .text
                                            .bold
                                            .makeCentered())
                                    .size(100, 32)
                                    .white
                                    .shadowMax
                                    .make()),
                            Positioned(
                                top: 160,
                                left: 40,
                                child: VStack([
                                  "40-70% Off".text.size(25).make(),
                                  "Shop Now"
                                      .text
                                      .bold
                                      .red800
                                      .size(20)
                                      .make()
                                      .p(8)
                                ]))
                          ]),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
