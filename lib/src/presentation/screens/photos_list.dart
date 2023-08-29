import 'package:clean_architecture_tutorial/src/res/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PhotosListScreen extends StatelessWidget {
  const PhotosListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Wallpapers by Pexels",
        style: TextStyle(
          color: AppColors.white,
        ),
      )),
      body: Container(
        color: AppColors.black,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              cursorColor: AppColors.searchCursor,
              style: const TextStyle(color: AppColors.searchTxt),
              decoration: InputDecoration(
                fillColor: AppColors.white,
                filled: true,
                isDense: true,
                suffixIcon: const Icon(Icons.search, size: 25),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.white),
                  borderRadius: BorderRadius.circular(6),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.white),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Flexible(
              fit: FlexFit.loose,
              child: MasonryGridView.count(
                crossAxisCount: 4,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    width: 50,
                    color: AppColors.white,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
