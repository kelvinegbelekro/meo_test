import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:logger/web.dart';
import 'package:meo_test_app/app/data/model/channels_model.dart';
import 'package:meo_test_app/app/data/model/programs_model.dart';
import 'package:meo_test_app/app/presentation/providers/channels_provider.dart';
import 'package:meo_test_app/core/constants/env_constants.dart';
import 'package:meo_test_app/core/widgets/countdown_widget.dart';
import 'package:meo_test_app/core/widgets/custom_time_widget.dart';
import 'package:meo_test_app/core/widgets/recently_view_widget.dart';
import 'package:provider/provider.dart';

class ProgramView extends StatelessWidget {
  const ProgramView({
    this.programModel,
    this.channelName,
    this.imageUrl,
    this.channel,
    super.key,
  });

  final String? channelName;
  final String? imageUrl;
  final ChannelModel? channel;
  final ProgramModel? programModel;

  @override
  Widget build(BuildContext context) {
    final recentlyViewedPrograms =
        Provider.of<ChannelsProvider>(context).recentlyViewedPrograms;

    // Define date and time formats
    DateFormat dateFormat = DateFormat.yMd(); // Date format

    // Format dates and times
    String formattedStartDate =
        dateFormat.format(programModel!.startDate); // Format start date
    String formattedEndDate =
        dateFormat.format(programModel!.endDate); // Format end date

    // Calculate duration between start and end time
    Duration duration =
        programModel!.endDate.difference(programModel!.startDate);

    // Get the time remaining in hours as an integer
    int hoursRemaining = duration.inHours;
    Logger().d('Time Remaining: $hoursRemaining Hour(s)');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          channel?.title ?? "Error",
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Image.network(
            kImageUrl,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
          Text(
            programModel?.title ?? " No Value",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              programModel?.synopsis ?? " No Synopsis",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTimeWidget(
              formattedStartDate: formattedStartDate,
              formattedEndDate: formattedEndDate),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Time Remaining',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          CountdownTimer(hour: hoursRemaining),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Recently Viewed Programs',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          RecentlyViewedPrograms(
            recentlyViewedPrograms: recentlyViewedPrograms,
          ),
        ],
      ),
    );
  }
}
