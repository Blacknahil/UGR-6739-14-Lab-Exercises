import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => PostProvider(),
      child: MyApp(),
    ),
  );
}

class Post {
  final int id;
  final int userId;
  final String title;
  final bool completed;

  Post({
    required this.id,
    required this.userId,
    required this.title,
    required this.completed,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      completed: json['completed'],
    );
  }
}

class PostProvider with ChangeNotifier {
  List<Post> _posts = [];
  bool _isLoading = false;
  bool _hasError = false;
  String _errorMessage = '';

  List<Post> get posts => _posts;
  bool get isLoading => _isLoading;
  bool get hasError => _hasError;
  String get errorMessage => _errorMessage;

  Future<void> fetchPosts() async {
    _isLoading = true;
    notifyListeners();

    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

      if (response.statusCode == 200) {
        List<dynamic> body = jsonDecode(response.body);
        _posts = body.map((dynamic item) => Post.fromJson(item)).toList();
      } else {
        _hasError = true;
        _errorMessage = 'Failed to load posts';
      }
    } catch (e) {
      _hasError = true;
      _errorMessage = 'An error occurred: $e';
    }

    _isLoading = false;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Posts'),
        ),
        body: Consumer<PostProvider>(
          builder: (context, postProvider, _) {
            if (postProvider.isLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (postProvider.hasError) {
              return Center(
                child: Text(postProvider.errorMessage),
              );
            } else {
              return ListView.builder(
                itemCount: postProvider.posts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(postProvider.posts[index].title),
                    subtitle:
                        Text(postProvider.posts[index].completed.toString()),
                  );
                },
              );
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Provider.of<PostProvider>(context, listen: false).fetchPosts();
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
