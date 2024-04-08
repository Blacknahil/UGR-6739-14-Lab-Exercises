import 'package:flutter/material.dart';

class CourseApp extends StatefulWidget {
  @override
  State<CourseApp> createState() => _CourseAppState();
}

class _CourseAppState extends State<CourseApp> {
  Course? _selectedCourse;

  void _tabHandler(Course course) {
    setState(() {
      _selectedCourse = course;
    });
  }

  List<Course> courses = [
    Course(
        code: "SITE-001",
        title: "Introduction to mobile programming",
        description: "Computer Organization,Architecture,programming"),
    Course(
        code: "SITE-1101",
        title: "Introduction to Artifical Intelligence",
        description:
            "machine learning, deep learing and trying to make computers think like a human does.")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(
        pages: [
          MaterialPage(
            key: const ValueKey('CoursesListScreen'),
            child: CoursesListScreen(
              courses: courses,
              onTapped: _tabHandler,
            ),
          ),
          if (_selectedCourse != null)
            MaterialPage(
                key: ValueKey(_selectedCourse),
                child: CourseDetailsScreen(
                  course: _selectedCourse!,
                ))
        ],
        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return false;
          }
          setState(() {
            _selectedCourse = null;
          });
          return true;
        },
      ),
    );
  }
}

class Course {
  String code;
  String title;
  String description;
  Course({
    required this.code,
    required this.title,
    this.description = "",
  });
}

class CoursesListScreen extends StatelessWidget {
  const CoursesListScreen({required this.courses, required this.onTapped});
  final List<Course> courses;
  final ValueChanged<Course> onTapped;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Courses List"),
        ),
        body: ListView(
          children: [
            for (var course in courses)
              ListTile(
                title: Text(course.title),
                subtitle: Text(course.code),
                onTap: () => onTapped(course),
              )
          ],
        ));
  }
}

class CourseDetailsScreen extends StatelessWidget {
  final Course course;
  const CourseDetailsScreen({required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(course.title),
        ),
        body: Center(
          child: Column(
            children: [
              Text(course.title),
              Text(course.code),
              Text(course.description),
            ],
          ),
        ));
  }
}
