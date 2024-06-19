// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:meo_test_app/app/data/model/channels_model.dart';
import 'package:meo_test_app/app/presentation/pages/program_view.dart';
import 'package:meo_test_app/app/presentation/providers/channels_provider.dart';
import 'package:meo_test_app/app/presentation/providers/program_provider.dart';
import 'package:provider/provider.dart';

class CustomChannelCard extends StatelessWidget {
  const CustomChannelCard({
    required this.channelName,
    required this.imageUrl,
    required this.showingNext,
    required this.showingNow,
    required this.channelModel,
    this.onTap,
    super.key,
  });

  final String imageUrl;
  final String channelName;
  final String showingNow;
  final String showingNext;
  final ChannelModel channelModel;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        Provider.of<ChannelsProvider>(context, listen: false)
            .addViewedProgram(channelModel);
        final channelsProvider =
            Provider.of<ProgramProvider>(context, listen: false);
        final success = await channelsProvider
            .getProgram("CallLetter eq '${channelModel.callLetter}'");
        if (success) {
          Logger().d("Channels: ${channelsProvider.programModel}");
        } else {
          Logger().e("Failure: ${channelsProvider.failure}");
        }
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProgramView(
              programModel: channelsProvider.programModel,
              channelName: channelName,
              imageUrl: imageUrl,
              channel: channelModel,
            ),
          ),
        );
      },
      child: Card(
        elevation: 4, // Add elevation for a material shadow effect
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(12.0), // Optional: rounded corners
        ),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12.0)),
          child: Row(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align children to the top
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    bottomLeft: Radius.circular(12.0)),
                child: SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover, // Cover the entire box with the image
                  ),
                ),
              ),
              const SizedBox(
                  width: 12), // Optional: add space between image and text
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      channelName,
                      style: const TextStyle(fontSize: 15),
                    ),
                    const SizedBox(
                        height: 20), // Optional: add space between texts
                    Text(
                      showingNow,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      showingNext,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
