import 'package:card_swiper/card_swiper.dart';

import 'package:flutter/material.dart';
import 'package:resume_builder/data.dart';
import 'package:resume_builder/internships.dart';
import 'package:resume_builder/jobs.dart';
import 'package:resume_builder/pages/home/view/home_view.dart';
import 'package:resume_builder/quiz_app/home.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'College Recruitment',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              height: height / 5,
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Swiper(
                autoplay: true,
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(
                    'assets/images/cp.jpg',
                    fit: BoxFit.fill,
                  );
                },
                itemCount: 4,
                pagination: const SwiperPagination(),
              )),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              height: 70,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: Text(" Hello,",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w300,
                              ))),
                      Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                          child: Text('User',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.0))),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 10, 10, 0),
                        child: Text("How are you feeling today?",
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 14.0)),
                      ),
                    ],
                  ),
                ],
              )),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomeAuthView()));
              },
              child: Card(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  constraints: const BoxConstraints(
                      minHeight: 50, minWidth: double.infinity, maxHeight: 80),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, 3.0),
                            blurRadius: 10.0),
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, 3.0),
                            blurRadius: 10.0),
                      ]),
                  //  height: height/5,
                  //  width: width/3.4,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: [
                            Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 0, 5),
                                child: Icon(
                                  Icons.edit_document,
                                  color: Colors.blue[600],
                                )),
                            const Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 0, 5),
                                child: Text(
                                  'Build Your Resume',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                          ],
                        ),
                        const Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 5),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 16,
                            ))
                      ]),
                ),
              )),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => QuizHomePage()));
              },
              child: Card(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  constraints: const BoxConstraints(
                      minHeight: 50, minWidth: double.infinity, maxHeight: 80),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, 3.0),
                            blurRadius: 10.0),
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, 3.0),
                            blurRadius: 10.0),
                      ]),
                  //  height: height/5,
                  //  width: width/3.4,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: [
                            Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 0, 5),
                                child: Icon(
                                  Icons.quiz,
                                  color: Colors.blue[600],
                                )),
                            const Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 0, 5),
                                child: Text(
                                  'Assessments',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                          ],
                        ),
                        const Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 5),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 16,
                            ))
                      ]),
                ),
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => JobScreen(
                                jsonData: jsonData,
                              )));
                    },
                    child: dashdecor(
                        image: Image.asset(
                          'assets/images/jobs.jpg',
                          width: width / 5,
                        ),
                        title: 'Jobs'),
                  )),
                  Flexible(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Internship(
                                InternjsonData: InternjsonData,
                              )));
                    },
                    child: dashdecor(
                        image: Image.asset(
                          'assets/images/intern.jpg',
                          width: width / 5,
                        ),
                        title: 'Internship'),
                  )),
                  // Flexible(
                  //     child: GestureDetector(
                  //   onTap: () {
                  //     // Navigator.of(context).push(MaterialPageRoute(
                  //     //     builder: (context) => healthpackages(
                  //     //         type: "LabTest", CatID: 0)));
                  //   },
                  //   child: dashdecor(
                  //       image: Image.asset(
                  //         'assets/images/lab_test.png',
                  //         width: width / 5.9,
                  //       ),
                  //       title: 'Mentorship'),
                  // ))
                ],
              )),
          SizedBox(
            height: height / 40,
          ),
        ])));
  }
}

class dashdecor extends StatelessWidget {
  dashdecor({required this.image, required this.title});
  String title;
  Image image;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Card(
      child: Container(
        padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
        width: double.maxFinite,
        constraints: const BoxConstraints(
          minHeight: 150,
          minWidth: double.maxFinite,
          maxHeight: 160,
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, 3.0),
                  blurRadius: 10.0),
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, 3.0),
                  blurRadius: 10.0),
            ]),
        //  height: height/5,
        //  width: width/3.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            image,
            // "assets/images/video_consultation.png",

            SizedBox(
              height: height / 30,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat'),
            )
          ],
        ),
      ),
    );
  }
}
