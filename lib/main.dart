import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                fetchData();
              }, child: const Text("patch Data"))
            ],
          ),
        ),
      ),
    );
  }
}
void fetchData() async{
  var dio = Dio();
  var response = await dio.patch("https://jsonplaceholder.typicode.com/posts/1");
  var response2 = await dio.patch("https://jsonplaceholder.typicode.com/posts/1",
      data: {'title':'I love india'});
  print(response.data);
  print(response2.data);
}