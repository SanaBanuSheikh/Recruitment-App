
// import 'package:flutter/material.dart';
// class JobListScreen extends StatelessWidget {
//   final List<String> data;

//   const JobListScreen({Key? key, required this.data}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Job List'),
//       ),
//       body: ListView(
//         padding: const EdgeInsets.all(16),
//         children: [
//           _buildCard(context,'Job Title', data[0]),
//           _buildCard(context,'Job Description', data[1]),
//           _buildCard(context,'Experience Required', data[2]),
//           _buildCard(context,'Perks and Benefits', data[3]),
//           _buildCard(context,'Salary', data[4]),
//           _buildCard(context,'Location', data[5]),
//           _buildCard(context,'Start Date', data[6]),
//           _buildCard(context,'Start Time', data[7]),
//         ],
//       ),
//     );
//   }

//   Widget _buildCard(BuildContext context,
//   String title, String subtitle) {
//     return Card(
//       child: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(title, style: Theme.of(context).textTheme.headline6),
//             const SizedBox(height: 8),
//             Text(subtitle, style: Theme.of(context).textTheme.bodyText2),
//           ],
//         ),
//       ),
//     );
//   }
// }
