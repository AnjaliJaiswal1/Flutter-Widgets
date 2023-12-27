// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UIScreen1 extends StatelessWidget {
  const UIScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Row(
              children: [
                Center(
                    child: Image.asset(
                  "assets/images/girl_avatar.png",
                  height: 70,
                )),
                const SizedBox(
                  width: 8,
                ),
                const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Jane!✋ ",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ]),
                const Spacer(),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: const Color.fromARGB(255, 231, 244, 250),
                  ),
                  child: const Center(
                    child: Badge(
                        child: Icon(
                      Icons.notifications_outlined,
                      size: 28,
                    )),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.all(18),
              height: 120,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 53, 53, 53),
                  borderRadius: BorderRadius.circular(28)),
              child: Row(children: [
                Flexible(
                    flex: 2,
                    child: Text(
                      "Your Plan for today",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 26),
                    )),
                const Spacer(),
                const Stack(
                  children: [
                    SizedBox(
                      height: 70,
                      width: 70,
                      child: CircularProgressIndicator(
                        value: 55 / 100,
                        strokeWidth: 6,
                        backgroundColor: Color.fromARGB(255, 100, 100, 100),
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                      ),
                    ),
                    Positioned(
                        top: 18,
                        left: 12,
                        child: Text(
                          "55%",
                          style: TextStyle(fontSize: 26, color: Colors.white),
                        ))
                  ],
                )
              ]),
            ),
            const SizedBox(
              height: 24,
            ),
            const Row(
              children: [
                Text(
                  "Start a new goal",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text("To shop",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500))
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 170,
              child: GridView.count(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                crossAxisCount: 1,
                children: const [
                  CustomGoalContainer(
                    title: "Usablity testing",
                  ),
                  CustomGoalContainer(
                    title: "UX-writing",
                  ),
                  CustomGoalContainer(
                    title: "Usablity testing",
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Row(
              children: [
                Text(
                  "Daily Tasks",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Text("See All",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400))
              ],
            ),
          ],
        ),
      )),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 56, 56, 56),
              borderRadius: BorderRadius.circular(28)),
          height: 70,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: BottomNavigationBar(
                iconSize: 28,
                showSelectedLabels: false,
                type: BottomNavigationBarType.fixed,
                backgroundColor: const Color.fromARGB(255, 51, 51, 51),
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home_outlined,
                        color: Color.fromARGB(255, 219, 219, 219),
                      ),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.shopping_cart_outlined,
                        color: Color.fromARGB(255, 219, 219, 219),
                      ),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.mouse_outlined,
                        color: Color.fromARGB(255, 219, 219, 219),
                      ),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person_2_outlined,
                        color: Color.fromARGB(255, 219, 219, 219),
                      ),
                      label: "")
                ]),
          ),
        ),
      ),
    );
  }
}

class CustomGoalContainer extends StatelessWidget {
  final String title;

  const CustomGoalContainer({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 110,
          width: 150,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(
              "assets/images/diamond.jpeg",
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            children: [
              Icon(
                Icons.star_border,
                size: 22,
              ),
              Text("4.9"),
              SizedBox(
                width: 12,
              ),
              Text("2995")
            ],
          ),
        )
      ],
    );
  }
}
