import 'package:flutter/material.dart';
import 'package:meo_test_app/app/data/model/channels_model.dart';
import 'package:meo_test_app/core/constants/env_constants.dart';

class RecentlyViewedPrograms extends StatelessWidget {
  final List<ChannelModel> recentlyViewedPrograms;

  const RecentlyViewedPrograms({
    required this.recentlyViewedPrograms,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        if (recentlyViewedPrograms.isNotEmpty)
          SizedBox(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recentlyViewedPrograms.length,
              itemBuilder: (context, index) {
                final viewedProgram = recentlyViewedPrograms[index];
                return Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 120,
                  child: Column(
                    children: [
                      Expanded(
                          child: Image.network(kImageUrl,
                              height: 100, fit: BoxFit.cover)),
                      const SizedBox(height: 4),
                      Text(viewedProgram.title,
                          overflow: TextOverflow.ellipsis),
                    ],
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}
