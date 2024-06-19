import 'package:flutter/material.dart';
import 'package:meo_test_app/app/presentation/providers/channels_provider.dart';
import 'package:meo_test_app/core/app_state.dart';
import 'package:meo_test_app/core/constants/env_constants.dart';
import 'package:meo_test_app/core/widgets/custom_card_widget.dart';
import 'package:meo_test_app/core/widgets/shimmer_loader_widget.dart';
import 'package:provider/provider.dart';

class ChannelsListView extends StatefulWidget {
  const ChannelsListView({super.key});

  @override
  State<ChannelsListView> createState() => _ChannelsListViewState();
}

class _ChannelsListViewState extends State<ChannelsListView> {
  @override
  void initState() {
    super.initState();
    // Fetch channels when widget is initialized
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ChannelsProvider>(context, listen: false).getChannels();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        title: const Text(
          "Meo Channel List",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Consumer<ChannelsProvider>(builder: (context, provider, child) {
        if (provider.state == AppState.busy) {
          return const ShimmerLoader();
        } else if (provider.channelModel == null) {
          return const Center(
            child: Text(
              "No channels available",
              style: TextStyle(color: Colors.white),
            ),
          );
        } else {
          return ListView.builder(
            itemCount: provider.channelModel!.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, int index) {
              final channel = provider.channelModel![index];
              return CustomChannelCard(
                channelModel: channel,
                imageUrl:
                    channel.imageUrl!.isEmpty ? kImageUrl : channel.imageUrl!,
                channelName: channel.callLetter,
                showingNext: 'Next Showing Event',
                showingNow: channel.title,
              );
            },
          );
        }
      }),
    );
  }
}
