import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoader extends StatelessWidget {
  const ShimmerLoader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Simulating 10 shimmer loading items
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[700]!,
          highlightColor: Colors.grey[500]!,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80.0,
              color: Colors.grey[700],
            ),
          ),
        );
      },
    );
  }
}
