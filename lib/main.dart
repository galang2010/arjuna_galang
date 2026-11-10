import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

const Color forest = Color(0xff243d32);
const Color green = Color(0xff496b50);
const Color cream = Color(0xfff2f0e8);
const Color brown = Color(0xff987653);
const Color muted = Color(0xff78847b);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: cream,
      ),
      home: ArjunoPage(),
    );
  }
}

class ArjunoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // HEADER
          SliverAppBar(
            expandedHeight: 420,
            pinned: true,
            backgroundColor: forest,
            foregroundColor: Colors.white,
            title: Text(
              "MOUNT ARJUNO",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                letterSpacing: 2,
                fontSize: 16,
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'asset/arjuna.jpg',
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.2),
                          Colors.transparent,
                          forest.withOpacity(0.95),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 24,
                    right: 24,
                    bottom: 35,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: brown,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "MOUNTAIN DESTINATION",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "Explore Mount\nArjuno",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 38,
                            height: 1.1,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Discover the beauty above the clouds.",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // INTRODUCTION
                Padding(
                  padding: EdgeInsets.fromLTRB(22, 28, 22, 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "THE BEAUTY OF EAST JAVA",
                        style: TextStyle(
                          color: brown,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          fontSize: 11,
                        ),
                      ),
                      SizedBox(height: 9),
                      Text(
                        "Tentang Gunung Arjuno",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: forest,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        "Gunung Arjuno merupakan salah satu gunung "
                        "berapi kerucut yang terletak di Jawa Timur. "
                        "Gunung ini memiliki ketinggian sekitar "
                        "3.339 meter di atas permukaan laut dan "
                        "menawarkan panorama alam yang luar biasa. "
                        "Hamparan hutan, jalur pendakian, udara "
                        "pegunungan yang sejuk, serta pemandangan "
                        "lautan awan menjadikan Gunung Arjuno sebagai "
                        "salah satu destinasi alam yang menarik.",
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.8,
                          color: muted,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),

                // MOUNTAIN INFORMATION
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: InfoCard(
                          icon: Icons.terrain_rounded,
                          title: "Ketinggian",
                          value: "3.339 MDPL",
                          color: Color(0xffdce7d9),
                          iconColor: green,
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: InfoCard(
                          icon: Icons.location_on_rounded,
                          title: "Provinsi",
                          value: "Jawa Timur",
                          color: Color(0xffe9e0d2),
                          iconColor: brown,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30),

                // ATTRACTION
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22),
                  child: Text(
                    "Pesona Gunung Arjuno",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w900,
                      color: forest,
                    ),
                  ),
                ),

                SizedBox(height: 15),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: Stack(
                      children: [
                        Image.asset(
                          'asset/arjuna2.jpg',
                          height: 210,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          height: 210,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                forest.withOpacity(0.9),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 18,
                          bottom: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Above The Clouds",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 6),
                              Text(
                                "Pemandangan alam dari ketinggian.",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 28),

                // ACTIVITIES
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22),
                  child: Text(
                    "Aktivitas Menarik",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w900,
                      color: forest,
                    ),
                  ),
                ),

                SizedBox(height: 15),

                ActivityItem(
                  icon: Icons.hiking_rounded,
                  title: "Pendakian Gunung",
                  subtitle: "Menikmati perjalanan di alam pegunungan.",
                  color: Color(0xffdce7d9),
                ),

                ActivityItem(
                  icon: Icons.camera_alt_rounded,
                  title: "Mountain Photography",
                  subtitle: "Mengabadikan keindahan panorama alam.",
                  color: Color(0xffe9e0d2),
                ),

                ActivityItem(
                  icon: Icons.cloud_rounded,
                  title: "Menikmati Lautan Awan",
                  subtitle: "Menyaksikan hamparan awan dari ketinggian.",
                  color: Color(0xffe1e7ec),
                ),

                ActivityItem(
                  icon: Icons.nature_people_rounded,
                  title: "Camping",
                  subtitle: "Menikmati suasana alam bersama teman.",
                  color: Color(0xffe5e5d1),
                ),

                // LOCATION
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(22),
                    decoration: BoxDecoration(
                      color: forest,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.15),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.location_on_rounded,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mountain Location",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Jawa Timur, Indonesia",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Explore the beauty of Arjuno",
                                style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color(0xffc4a77d),
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),

                // QUOTE
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 30),
                  child: Center(
                    child: Column(
                      children: [
                        Icon(
                          Icons.landscape_rounded,
                          size: 40,
                          color: green,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "\"The mountains are calling.\"",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: forest,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "CLIMB • EXPLORE • DISCOVER",
                          style: TextStyle(
                            fontSize: 11,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                            color: brown,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // FOOTER
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(25),
                  color: Color(0xffdce5d8),
                  child: Column(
                    children: [
                      Text(
                        "MOUNT ARJUNO",
                        style: TextStyle(
                          color: forest,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 2,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Created by Galang Arya Putra",
                        style: TextStyle(
                          fontSize: 12,
                          color: muted,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// INFORMATION CARD
class InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final Color color;
  final Color iconColor;

  const InfoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.color,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: iconColor, size: 30),
          SizedBox(height: 15),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              color: muted,
            ),
          ),
          SizedBox(height: 6),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w900,
              color: forest,
            ),
          ),
        ],
      ),
    );
  }
}

// ACTIVITY ITEM
class ActivityItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;

  const ActivityItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 12),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(19),
          boxShadow: [
            BoxShadow(
              color: forest.withOpacity(0.05),
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                icon,
                color: forest,
                size: 25,
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: forest,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12,
                      color: muted,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.chevron_right_rounded,
              color: green,
            ),
          ],
        ),
      ),
    );
  }
}
