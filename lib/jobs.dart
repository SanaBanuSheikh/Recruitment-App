import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

// class JobListingPage extends StatelessWidget {
//   final String json;

//   JobListingPage(this.json);

//   @override
//   Widget build(BuildContext context) {
//     Map<String, dynamic> data = jsonDecode(json);
//     List<dynamic> jobListings = data['jobListings'];

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(data['companyName']),
//       ),
//       body: ListView.builder(
//         itemCount: jobListings.length,
//         itemBuilder: (BuildContext context, int index) {
//           Map<String, dynamic> jobData = jobListings[index];

//           return Padding(
//             padding: EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   jobData['jobTitle'],
//                   style: TextStyle(
//                     fontSize: 24.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 8.0),
//                 Text(
//                   jobData['jobDescription'],
//                   style: TextStyle(fontSize: 16.0),
//                 ),
//                 SizedBox(height: 8.0),
//                 Text(
//                   'Experience Required: ${jobData['experienceRequired']}',
//                   style: TextStyle(fontSize: 16.0),
//                 ),
//                 SizedBox(height: 8.0),
//                 Text(
//                   'Perks and Benefits:',
//                   style: TextStyle(
//                     fontSize: 16.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Column(
//                   children: List.generate(
//                     jobData['perksAndBenefits'].length,
//                     (index) => Text('- ${jobData['perksAndBenefits'][index]}'),
//                   ),
//                 ),
//                 SizedBox(height: 8.0),
//                 Text(
//                   'Location: ${jobData['location']['city']}, ${jobData['location']['state']}, ${jobData['location']['country']}',
//                   style: TextStyle(fontSize: 16.0),
//                 ),
//                 SizedBox(height: 8.0),
//                 Text(
//                   'Fields: ${jobData['fields'].join(', ')}',
//                   style: TextStyle(fontSize: 16.0),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:url_launcher/url_launcher.dart';

class JobScreen extends StatelessWidget {
  var jsonData;

  JobScreen({Key? key, required this.jsonData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<dynamic> companies = jsonDecode(jsonData)['companies'];

    return Scaffold(
      appBar: AppBar(title: const Text('Job Listings')),
      body: ListView.builder(
        itemCount: companies.length,
        itemBuilder: (context, index) {
          final company = companies[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 8, right: 0, bottom: 10),
                  child: Row(
                    children: [
                      Icon(
                        LineIcons.landmark,
                        // Icons.lock_clock,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        company['companyName'],
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,

                          // color: DesignCourseAppTheme.darkerText,
                        ),
                      ),
                    ],
                  )),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Text(
              //     company['companyName'],
              //     style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              //   ),
              // ),
              ...company['jobListings']
                  .map(
                    (jobListing) => Card(
                      margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                      child: ListTile(
                        title: Text(jobListing['jobTitle']),
                        subtitle: Text(jobListing['salaryRange']),
                        trailing: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    JobDetailsScreen(jobListing),
                              ),
                            );
                          },
                          child: const Text('Apply'),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ],
          );
        },
      ),
    );
  }
}

class JobDetailsScreen extends StatelessWidget {
  final Map<String, dynamic> jobListing;

  const JobDetailsScreen(this.jobListing, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(jobListing['jobTitle'])),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 8, right: 0, bottom: 10),
                child: Row(
                  children: const [
                    Icon(
                      LineIcons.bloggerB,
                      // Icons.lock_clock,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      'Summary',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,

                        // color: DesignCourseAppTheme.darkerText,
                      ),
                    ),
                  ],
                )),
            Padding(
                padding: const EdgeInsets.only(
                    left: 6, right: 16, top: 0, bottom: 0),
                child: Text(jobListing['jobDescription'])),
            const SizedBox(height: 16),
            Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 8, right: 0, bottom: 10),
                child: Row(
                  children: const [
                    Icon(
                      LineIcons.calendar,
                      // Icons.lock_clock,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      'Experience required',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,

                        // color: DesignCourseAppTheme.darkerText,
                      ),
                    ),
                  ],
                )),
            Text(jobListing['experienceRequired']),
            const SizedBox(height: 16),
            Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 8, right: 0, bottom: 10),
                child: Row(
                  children: const [
                    Icon(
                      LineIcons.star,
                      // Icons.lock_clock,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      'Perks & Benefits',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,

                        // color: DesignCourseAppTheme.darkerText,
                      ),
                    ),
                  ],
                )),
            ...jobListing['perksAndBenefits']
                .map((pnb) => Text('- $pnb'))
                .toList(),
            const SizedBox(height: 16),
            Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 8, right: 0, bottom: 10),
                child: Row(
                  children: const [
                    Icon(
                      LineIcons.landmark,
                      // Icons.lock_clock,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      'Location',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,

                        // color: DesignCourseAppTheme.darkerText,
                      ),
                    ),
                  ],
                )),
            Text(
                '${jobListing['location']['city']}, ${jobListing['location']['state']}, ${jobListing['location']['country']}'),
            const SizedBox(height: 16),
            Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 8, right: 0, bottom: 10),
                child: Row(
                  children: const [
                    Icon(
                      LineIcons.star,
                      // Icons.lock_clock,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      'Fields',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,

                        // color: DesignCourseAppTheme.darkerText,
                      ),
                    ),
                  ],
                )),
            Text('${jobListing['fields'].join(', ')}'),
            Center(
                child: Padding(
              padding: EdgeInsets.fromLTRB(36, 20, 36, 20),
              child: Expanded(
                  child: ElevatedButton(
                      onPressed: () async {
                        await launchUrl(Uri.https(
                            'www.linkedin.com/in/sanabanu815a61217/'));
                      },
                      child: Text('Apply'))),
            ))
          ],
        ),
      ),
    );
  }
}
