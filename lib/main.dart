import 'package:flutter/material.dart';

void main() {
  runApp(const BioDataApp());
}

class BioDataApp extends StatelessWidget {
  const BioDataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BIO-DATA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: 'Arial',
      ),
      home: const BioDataPage(),
    );
  }
}

class BioDataPage extends StatelessWidget {
  const BioDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7F8),
      appBar: AppBar(
        title: const Text(
          'BIO-DATA',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF3F5B66),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'KING FREIDRICH L. BARCELONA',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF3F5B66),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Personal Information',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFF6F8B95),
                      width: 3,
                    ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/profile.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            _sectionTitle('PERSONAL INFORMATION'),
            _rowField(
              'Full Name',
              'King Freidrich L. Barcelona',
            ),
            _rowField(
              'Age',
              '21',
            ),
            _rowField(
              'Date of Birth',
              'November 05, 2004',
            ),
            _rowField(
              'Birthplace',
              'Pulilan, Bulacan',
            ),
            _rowField(
              'Address',
              "Blk 15 Lot 14 A Pusit Alley, Teacher's Village D.D., Caloocan City",
            ),
            const SizedBox(height: 18),
            _sectionTitle('EDUCATIONAL BACKGROUND'),
            _rowField(
              'Elementary',
              'Ninoy Aquino Elementary School',
              trailing: '2012 - 2016',
            ),
            _rowField(
              'Junior High',
              'M.B. Asistio Sr. High School Unit I',
              trailing: '2016 - 2021',
            ),
            _rowField(
              'Senior High',
              'M.B. Asistio Sr. High School Unit I',
              trailing: '2021 - 2024',
            ),
            _rowField(
              'College',
              'Global Reciprocal Colleges',
              trailing: 'Recent',
            ),
            const SizedBox(height: 18),
            _sectionTitle('SKILLS'),
            _rowField(
              'Skill 1',
              'Basic Coding',
            ),
            _rowField(
              'Skill 2',
              'Creative Thinking',
            ),
            _rowField(
              'Skill 3',
              'Problem Solving',
            ),
            _rowField(
              'Skill 4',
              'Communication',
            ),
            const SizedBox(height: 18),
            _sectionTitle('CONTACT INFORMATION'),
            _rowField(
              'Contact Number',
              '09456351576',
            ),
            _rowField(
              'Email',
              'kingbarcelona16@gmail.com',
            ),
            const SizedBox(height: 25),
            Center(
              child: Text(
                'Thank you for viewing my bio-data.',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black54,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFDCE6E9),
      padding: const EdgeInsets.symmetric(
        vertical: 7,
        horizontal: 10,
      ),
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        title,
        style: const TextStyle(
          color: Color(0xFF3F5B66),
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    );
  }

  Widget _rowField(
    String label,
    String value, {
    String? trailing,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 125,
            child: Text(
              '$label:',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(bottom: 3),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black54,
                  ),
                ),
              ),
              child: Text(
                value,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          ),
          if (trailing != null) ...[
            const SizedBox(width: 10),
            SizedBox(
              width: 85,
              child: Text(
                trailing,
                style: const TextStyle(
                  fontSize: 11,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}