import'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:resume_builder/jobs.dart';
import 'package:resume_builder/test.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateJobScreen extends StatefulWidget {
  @override
  _CreateJobScreenState createState() => _CreateJobScreenState();
}

class _CreateJobScreenState extends State<CreateJobScreen> {
  TextEditingController jobTitle = TextEditingController();
  TextEditingController jobDescription = TextEditingController();
  TextEditingController experienceRequired = TextEditingController();
  TextEditingController perksAndBenefits = TextEditingController();
  TextEditingController salary = TextEditingController();
  TextEditingController location = TextEditingController();
  String _jobTitle = '';
  String _jobDescription = '';
  String _experienceRequired = '';
  String _perksAndBenefits = '';
  double _salary = 0.0;
  String _location = '';
  DateTime _startDate = DateTime.now();
  TimeOfDay _startTime = TimeOfDay.now();

  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _startDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _startDate) {
      setState(() {
        _startDate = picked;
      });
    }
  }

  Future<void> _selectStartTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _startTime,
    );
    if (picked != null && picked != _startTime) {
      setState(() {
        _startTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    void _createJob() async {
      LocalStorage storage = LocalStorage('JobInfo');
      // SharedPreferences prefs = await SharedPreferences.getInstance();
      List<String> data = [
        jobTitle.text,
        jobDescription.text,
        experienceRequired.text,
        perksAndBenefits.text,
        salary.text,
        location.text,
        _startDate.toString(),
        _startTime.toString(),
      ];
       storage.setItem('Info', data);
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => JobScreen(jsonData: data)),
  );
    }

    return Scaffold(
      appBar: AppBar(centerTitle: true,
      // leading: IconButton(icon: Icon(Icons.abc),onPressed: (){  Navigator.of(context).push(MaterialPageRoute(
      //                                     builder: (context) => JobListScreen()));},),
        title: const Text('Create Job'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Job Title',
                style: Theme.of(context).textTheme.caption,
              ),
              const SizedBox(height: 8.0),
              TextFormField(
                controller: jobTitle,
                decoration: const InputDecoration(
                  hintText: 'Enter job title',
                ),
                onChanged: (value) {
                  setState(() {
                    _jobTitle = value;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              Text(
                'Job Description',
                style: Theme.of(context).textTheme.caption,
              ),
              const SizedBox(height: 8.0),
              TextFormField(
                controller: jobDescription,
                decoration: const InputDecoration(
                  hintText: 'Enter job description',
                ),
                minLines: 3,
                maxLines: 5,
                onChanged: (value) {
                  setState(() {
                    _jobDescription = value;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              Text(
                'Experience Required',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 8.0),
              TextFormField(
                controller: experienceRequired,
                decoration: const InputDecoration(
                  hintText: 'Enter experience required',
                ),
                onChanged: (value) {
                  setState(() {
                    _experienceRequired = value;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              Text(
                'Perks and Benefits',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 8.0),
              TextFormField(
                controller: perksAndBenefits,
                decoration: const InputDecoration(
                  hintText: 'Enter perks and benefits',
                ),
                minLines: 3,
                maxLines: 5,
                onChanged: (value) {
                  setState(() {
                    _perksAndBenefits = value;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              Text(
                'Salary',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 8.0),
              TextFormField(
                controller: salary,
                decoration: const InputDecoration(
                  hintText: 'Enter salary',
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    _salary = double.tryParse(value) ?? 0.0;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              Text(
                'Location',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 8.0),
              TextFormField(
                controller: location,
                decoration: const InputDecoration(
                  hintText: 'Enter location',
                ),
                onChanged: (value) {
                  setState(() {
                    _location = value;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Start Date',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(height: 8.0),
                        InkWell(
                          onTap: () {
                            _selectStartDate(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Row(
                              children: [
                                const Icon(Icons.calendar_today),
                                const SizedBox(width: 8.0),
                                Text(
                                  '${_startDate.day}/${_startDate.month}/${_startDate.year}',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Start Time',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(height: 8.0),
                        InkWell(
                          onTap: () {
                            _selectStartTime(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Row(
                              children: [
                                const Icon(Icons.access_time),
                                const SizedBox(width: 8.0),
                                Text(
                                  '${_startTime.hour}:${_startTime.minute}',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: _createJob,
                child: const Text('Create Job'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}