import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_repository/features/post/manager/post_bloc.dart';
import 'package:hive_repository/features/post/manager/post_state.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("Post"),
      ),
      body: BlocBuilder<PostBloc, PostState>(
        builder: (context, state) {
          return switch (state.status) {
            PostStatus.error => Text("Xato ma'lumot kelmadi"),
            PostStatus.loading => Center(
                child: CircularProgressIndicator(),
              ),
            PostStatus.idle => Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 20,
                      mainAxisExtent: 200,
                      mainAxisSpacing: 25,
                      crossAxisCount: 2),
                  itemCount: state.post.length,
                  itemBuilder: (context, index) => Container(
                    width: 200,
                    height: 200,
                    padding: EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 10,
                      children: [
                        Text(
                          state.post[index].body,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black26,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          state.post[index].title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ),
          };
        },
      ),
    );
  }
}
