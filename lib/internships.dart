import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'dart:convert';

import 'package:url_launcher/url_launcher.dart';

class Internship extends StatelessWidget {
  var InternjsonData;

  Internship({Key? key, required this.InternjsonData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<dynamic> companies = jsonDecode(InternjsonData)['companies'];

    return Scaffold(
      appBar: AppBar(title: const Text('Internship Listings')),
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
              ...company['internshipListings']
                  .map(
                    (jobListing) => Card(
                      margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                      child: ListTile(
                        title: Text(jobListing['internshipTitle']),
                        subtitle: Text(jobListing['stipendRange']),
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
      appBar: AppBar(title: Text(jobListing['internshipTitle'])),
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
                child: Text(jobListing['internshipDescription'])),
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
