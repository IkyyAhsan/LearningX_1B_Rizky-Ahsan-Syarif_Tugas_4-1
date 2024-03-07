import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key, // Perbaiki parameter super.key yang seharusnya Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
            backgroundColor: Colors.red,
            child: const Icon(Icons.add, color: Colors.white,),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/foodHeader.png', width: 135, height: 45),
                    const SizedBox(width: 10),
                    // -- Search Bar
                    Expanded(
                      child: Container(
                        height: 45,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.black45,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Search',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Katalog Resep Makanan',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/images/wheel.png', width: 40, height: 40),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 105,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Image.asset('assets/foodType/food.png', height: 30,),
                        Text('All', style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                      ),
                      SizedBox(width: 10,),
                      GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.red,
                            width: 1
                          )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Image.asset('assets/foodType/food.png', height: 30,),
                          Text('Makanan', style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Colors.red,
                            width: 1
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/foodType/soupIcon.png', height: 30,),
                          Text('Kuah', style: TextStyle(color: Colors.black),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Colors.red,
                            width: 1
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/foodType/fastFood.png', height: 30,),
                          Text('Cepat Saji', style: TextStyle(color: Colors.black),),
                        ],
                      ),
                    ),
                  ),
                  ],
                  ),
                ),
                const SizedBox(height: 20,),
                Expanded(
                  child: GridView.count(
                    mainAxisSpacing: 15,
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    children: const [
                        productCard(image: 'assets/images/payEnak.jpg', titleName: 'Apple Pie', duration: '50 Menit', status: 'Tunggu', statusColors: Colors.orange,),
                        productCard(image: 'assets/images/burger.jpg', titleName: 'Beef Burger', duration: '30 Menit', status: 'Tunggu', statusColors: Colors.orange),
                        productCard(image: 'assets/images/indomie.jpg', titleName: 'Ramen Udang', duration: '30 Menit', status: 'Habis', statusColors: Colors.red),
                        productCard(image: 'assets/images/takoyaki.jpg', titleName: 'Karage', duration: '30 Menit', status: 'Tunggu', statusColors: Colors.orange),
                        productCard(image: 'assets/images/karage.jpg', titleName: 'Takoyaki', duration: '30 Menit', status: 'Tunggu', statusColors: Colors.orange),
                        
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class productCard extends StatelessWidget {
  const productCard({
    super.key, 
    required this.image, 
    required this.titleName, 
    required this.duration, 
    required this.status, 
    required this.statusColors,
  });

  final String image;
  final String titleName;
  final String duration;
  final String status;
  final Color statusColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1, horizontal: 10),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
          color: Colors.black.withOpacity(0.4),
          spreadRadius: 1,
          blurRadius: 8,
        ),
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Image.asset(image,
        fit: BoxFit.cover,
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Row(
          children: [
            Text(titleName, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          ],
        ),
        ),
        SizedBox(height: 20,),
        Padding(padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Row(
                  children: [
                    Icon(Icons.access_alarm_outlined, size: 15,),
                    SizedBox(width: 3,),
                    Text(duration, style: TextStyle(fontSize: 12),),
                    SizedBox(width: 14,),
                    Container(
                      width: 60,
                      height: 20,
                      alignment: Alignment.center,
                      color: statusColors,
                      child: Text(status, style: TextStyle(color: Colors.white),),
                    )
                  ],
                ),
        ),
        
        ],
      ),
    );
  }
}