import 'package:creative_ui/util/job_car.dart';
import 'package:creative_ui/util/recent_job_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List jobsForYou = [
    // [companyName, jobTitle, logoImagePath, hourlyRate ]
    ['Uber', 'Flutter Dev', 'lib/icons/uber.png', 45],
    ['Google', 'UI Designer', 'lib/icons/google.png', 80],
    ['Apple', 'Product Dev', 'lib/icons/apple-logo.png', 95],
  ];

  final List recentJobs = [
    // [companyName, jobTitle, logoImagePath, hourlyRate ]
    ['Nike', 'Web Designer', 'lib/icons/nike.png', 60],
    ['Google', 'UI Designer', 'lib/icons/google.png', 30],
    ['Apple', 'Product Dev', 'lib/icons/apple-logo.png', 125],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 80),
        // appbar
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Container(
              height: 50,
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200]
              ),

              child: Image.asset('lib/icons/menu.png',
                color: Colors.grey[800]
              ),
            ),
          ),

          const SizedBox(height: 40),

          // discover a new path
          const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child:  Text('Explore new things!',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold
              ),
            ),
          ),

          const SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                    child:  Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Container(
                            height: 30,
                            color: Colors.grey[200],
                            child: Image.asset('lib/icons/search.png'),
                          ),
                        ),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search for a job.",
                              )
                            ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Container(
                  height: 50,
                  padding: const EdgeInsets.all(9),
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(
                    'lib/icons/optimization.png',
                    color: Colors.white
                  ),
                )
              ],
            ),
          ),

          const SizedBox(height: 40),

          const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child:  Text(
                'For You',
              style: TextStyle(
                fontSize: 30, 
                fontWeight: FontWeight.bold
              ),
            ),
          ),

          const SizedBox(height: 25),

          Container(
            height: 160,
            child: ListView.builder(
              itemCount: jobsForYou.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
              return JobCard(
                companyName: jobsForYou[index][0],
                jobTitle: jobsForYou[index][1],
                logoImagePath: jobsForYou[index][2],
                hourlyRate: jobsForYou[index][3],
              );}
            ),
          ),

          const SizedBox(height: 35),

          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Recently Added',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView.builder(
                itemCount: recentJobs.length,
                itemBuilder: (context, index){
                  return RecentJobCard(
                      companyName: recentJobs[index][0], 
                      jobTitle: recentJobs[index][1], 
                      logoImagePath: recentJobs[index][2],
                      hourlyRate: recentJobs[index][3] 
                    );
                  },
                ),
            ),
            )
        ]

      ),
    );
  }
}