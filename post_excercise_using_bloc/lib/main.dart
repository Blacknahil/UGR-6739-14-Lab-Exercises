import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => PostBloc(PostService()),
        child: PostListScreen(),
      ),
    );
  }
}

class Post {
  final int id;
  final int userId;
  final String title;
  final String body;

  Post({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      body: json['body'],
    );
  }
}

class PostService {
  Future<List<Post>> getPosts() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => Post.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}

class PostBloc extends Cubit<List<Post>> {
  final PostService postService;

  PostBloc(this.postService) : super([]);

  void fetchPosts() async {
    try {
      final posts = await postService.getPosts();
      emit(posts);
    } catch (e) {
      print(e);
    }
  }
}

class PostListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final postBloc = BlocProvider.of<PostBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      body: BlocBuilder<PostBloc, List<Post>>(
        builder: (context, posts) {
          if (posts.isEmpty) {
            postBloc.fetchPosts(); // Fetch posts when the list is empty
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return ListTile(
                  title: Text(post.title),
                  subtitle: Text(post.body),
                );
              },
            );
          }
        },
      ),
    );
  }
}
