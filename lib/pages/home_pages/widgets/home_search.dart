import 'package:flutter/material.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: 
      const TextField(
        decoration: InputDecoration(
          hintText: "Search key...",
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 247, 228, 228), // Màu đường viền
              width: 0.5, // Độ dày đường viền
              style: BorderStyle.solid, // Kiểu đường viền
            ),
          ),
          suffixIcon: Icon(Icons.search, color: Colors.grey,),
        ),
        
      ),
    );
  }
}