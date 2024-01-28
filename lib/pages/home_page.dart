import 'package:flutter/material.dart';
import 'package:veterinarian_ui/component/category_card.dart';
import 'package:veterinarian_ui/component/veterinarian_card.dart';
import 'package:veterinarian_ui/constans/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pageBackGround,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello,",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          "Elif Akkurt",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(Icons.person),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: containerBackGround,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/icons/improve.png",
                        height: 100,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "How do you feel?",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              "Fill out your medicial card right now.",
                              style: TextStyle(fontSize: 14),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: buttonColor,
                              ),
                              child: const Center(
                                child: Text(
                                  "Get Started",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: color,
                  ),
                  child: const TextField(
                    cursorColor: yellow,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: "How can we help you?",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CategoryCard("Vaccines", "assets/icons/vaccine.png"),
                    CategoryCard(
                        "Illness or Injury", "assets/icons/illness.png"),
                    CategoryCard("Parasite", "assets/icons/parasite.png"),
                    CategoryCard("Emergency", "assets/icons/emergency.png"),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Veterinarian List",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 260,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    VeterinarianCard(
                        yearVet: "4 y.e.",
                        vetName: "Dr. Luca Moretti",
                        vetPic: "assets/images/doctor.png",
                        rating: "4.5"),
                    VeterinarianCard(
                        yearVet: "3 y.e.",
                        vetName: "Dr. Isabella Santos",
                        vetPic: "assets/images/doctor_four.png",
                        rating: "4.7"),
                    VeterinarianCard(
                        yearVet: "2 y.e.",
                        vetName: "Dr. Rafael Chavez",
                        vetPic: "assets/images/doctor_three.png",
                        rating: "4.6"),
                    VeterinarianCard(
                        yearVet: "6 y.e.",
                        vetName: "Dr. Alejandro Silva",
                        vetPic: "assets/images/doctor_two.png",
                        rating: "4.4"),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
