import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bio-Data',
      theme: ThemeData(
        fontFamily: 'Arial',
      ),
      home: const BiodataPage(),
    );
  }
}

class BiodataPage extends StatelessWidget {
  const BiodataPage({super.key});

  // SECTION TITLE
  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 10,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // INFORMATION
  Widget info(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 155,
            child: Text(
              '$label:',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // EDUCATION
  Widget education(
    String level,
    String school,
    String year,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 155,
            child: Text(
              '$level:',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            child: Text(
              '$school\n$year',
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // SKILL
  Widget skill(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '• ',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // EXPERIENCE
  Widget experience(
    String position,
    String company,
    String year,
    List<String> duties,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            position,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 3),
          Text(
            company,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          Text(
            year,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(height: 5),
          ...duties.map(
            (duty) => Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: Text(
                '• $duty',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),

          child: Center(
            child: Container(
              constraints: const BoxConstraints(
                maxWidth: 800,
              ),

              padding: const EdgeInsets.all(30),

              color: Colors.white,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // =================================
                  // TITLE
                  // =================================

                  const Text(
                    'BIO-DATA',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w900,
                    ),
                  ),

                  const SizedBox(height: 25),

                  // =================================
                  // PERSONAL DATA + PHOTO
                  // =================================

                  sectionTitle('PERSONAL DATA'),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // PERSONAL INFORMATION
                      Expanded(
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [

                            info(
                              'Name',
                              'Christian Paulo M. Vasquez',
                            ),

                            info(
                              'Present Address',
                              'Longos, Malabon City',
                            ),

                            info(
                              'Email Address',
                              'paulovasquez102@gmail.com',
                            ),

                            info(
                              'Mobile Number',
                              '09204931337',
                            ),

                            info(
                              'Place of Birth',
                              'Caloocan City',
                            ),

                            info(
                              'Citizenship',
                              'Filipino',
                            ),

                            info(
                              'Nationality',
                              'Filipino',
                            ),

                            info(
                              'Civil Status',
                              'Single',
                            ),

                            info(
                              'Language',
                              'Filipino, English',
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 30),

                      // =================================
                      // PICTURE
                      // =================================

                      Container(
                        width: 170,
                        height: 210,

                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),

                        child: Image.asset(
                          'assets/images/profile.png',

                          fit: BoxFit.cover,

                          errorBuilder:
                              (context, error, stackTrace) {
                            return const Center(
                              child: Text(
                                'PUT PHOTO HERE',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),

                  // =================================
                  // EDUCATION
                  // =================================

                  sectionTitle(
                    'EDUCATIONAL BACKGROUND',
                  ),

                  education(
                    'Elementary',
                    'Caloocan Central Elementary School',
                    '2018',
                  ),

                  education(
                    'High School',
                    'Caloocan High School',
                    '2022',
                  ),

                  education(
                    'Senior High School',
                    'System Plus Computer College',
                    '2023',
                  ),

                  education(
                    'College',
                    '2nd Year College',
                    '2025 - 2026',
                  ),

                  // =================================
                  // SKILLS
                  // =================================

                  sectionTitle('SPECIAL SKILLS'),

                  skill('Communication Skills'),
                  skill('Multitasking'),
                  skill('Good Attitude'),
                  skill('Socialize'),
                  skill('Fast Learner and Willing to Learn'),
                  skill('Food Safety and Hygiene'),
                  skill('Empathy'),

                  const SizedBox(height: 5),

                  const Text(
                    'Programming Skills:',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  skill('HTML'),
                  skill('CSS'),
                  skill('Java'),
                  skill('Python'),
                  skill('Flutter'),
                  skill('Dart'),

                  // =================================
                  // EXPERIENCE
                  // =================================

                  sectionTitle(
                    'EMPLOYMENT RECORD',
                  ),

                  experience(
                    'Service Crew',
                    'Eatery Vendor',
                    '2019 - 2023',
                    [
                      'Wash the dishes',
                      'Assist the customer',
                      'Serving food to the customer',
                    ],
                  ),

                  experience(
                    'Reseller',
                    'Reseller',
                    'Experience',
                    [
                      'Communicate with customers',
                      'Promote products',
                      'Assist customers with orders',
                    ],
                  ),

                  // =================================
                  // CERTIFICATION
                  // =================================

                  const SizedBox(height: 15),

                  const Text(
                    'I hereby certify that the above information '
                    'is true and correct to the best of my '
                    'knowledge and belief.',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),

                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
