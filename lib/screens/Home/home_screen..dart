import 'package:flutter/material.dart';
import 'package:travelapp/model/place_model.dart';
import 'package:travelapp/screens/Home/widgets/category_card.dart';
import 'package:travelapp/utilities/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteClr,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 27,
                    backgroundImage: AssetImage("assets/images/welcome.jpeg"),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  RichText(
                      text: const TextSpan(
                    text: "Merhaba",
                    style: TextStyle(color: kBlackClr),
                    children: [
                      TextSpan(
                          text: ",Zuhal",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          )),
                    ],
                  ))
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Yeni varış noktasını keşfet",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Material(
                borderRadius: BorderRadius.circular(100),
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                      color: kWhiteClr,
                      borderRadius: BorderRadius.circular(100)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "varış yerinizi keşfedin",
                              prefixIcon: Icon(Icons.search),
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        const CircleAvatar(
                          radius: 22,
                          backgroundColor: kPrimaryClr,
                          child: Icon(
                            Icons.sort_by_alpha_sharp,
                            color: kWhiteClr,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              //kategori
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    "Kategori",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        CategoryCard(
                          press: () {},
                          image: "assets/images/mountains.jpeg",
                          title: "Mountains",
                        ),
                        CategoryCard(
                          press: () {},
                          image: "assets/images/forests.jpeg",
                          title: "Forests",
                        ),
                        CategoryCard(
                          press: () {},
                          image: "assets/images/sea.webp",
                          title: "Sea",
                        ),
                        CategoryCard(
                          press: () {},
                          image: "assets/images/deserts.jpeg",
                          title: "Deserts",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //Recomended
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text(
                    "Önerilen",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  height: 350,
                  child: ListView.builder(
                      itemCount: places.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 5, right: 15),
                          child: Row(
                            children: [
                              RecommmendedCard(
                                placeInfo: places[index],
                                press: () {},
                              )
                            ],
                          ),
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}

class RecommmendedCard extends StatelessWidget {
  final PlaceInfo placeInfo;
  final VoidCallback press;
  const RecommmendedCard({
    super.key,
    required this.placeInfo,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 250,
        width: 200,
        decoration: BoxDecoration(
          color: kWhiteClr,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(placeInfo.image))),
              ),
              SizedBox(
                height: 20,
              ),
              Text(placeInfo.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 0.8,
              ),
              Row(
                children: [
                  Icon(Icons.location_on, color: kPrimaryClr),
                  Text(placeInfo.location,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
