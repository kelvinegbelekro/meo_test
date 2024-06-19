import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/web.dart';
import 'package:meo_test_app/app/data/client/api_client.dart';
import 'package:meo_test_app/app/data/model/channels_model.dart';
import 'package:meo_test_app/app/data/model/programs_model.dart';
import 'package:meo_test_app/core/constants/env_constants.dart';
import 'package:meo_test_app/core/network_info.dart';

abstract class RemoteDataSource {
  Future<List<ChannelModel>> getChannels();

  Future<ProgramModel> getPrograms({
    required String callLetter,
  });
}

@LazySingleton(as: RemoteDataSource)
class RemoteDataSourceImpl implements RemoteDataSource {
  RemoteDataSourceImpl({
    required this.networkInfo,
    required this.dio,
  }) : super() {
    dio.interceptors.add(
      RetryInterceptor(
        dio: dio,
        logPrint: print,
        retryDelays: const [
          Duration(seconds: 1), // wait 1 sec before first retry
          Duration(seconds: 2), // wait 2 sec before second retry
          Duration(seconds: 3), // wait 3 sec before third retry
        ],
      ),
    );
    client = ApiClient(
      dio,
      baseUrl: baseUrl,
    );
  }

  final NetworkInfo networkInfo;
  final Dio dio;
  late final ApiClient client;

  @override
  Future<List<ChannelModel>> getChannels() async {
    try {
      if (await networkInfo.isConnected) {
        final response = await client.getChannels();
        final data = response.data;

        final List<dynamic> channelsJson =
            data['value']; // Extract the list of channels from 'value'
        final mappedData = channelsJson
            .map<ChannelModel>(
                (json) => ChannelModel.fromJson(json as Map<String, dynamic>))
            .toList();

        Logger().d("Mapped Response ==> $mappedData");
        return mappedData;
      } else {
        Logger().e("No Internet");
        return [];
      }
    } catch (error) {
      Logger().e("Error occurred: ${error.runtimeType} - ${error.toString()}");
      rethrow; // Optional: rethrow the error if you want it to propagate
    }
  }

  @override
  Future<ProgramModel> getPrograms({required String callLetter}) async {
    try {
      if (await networkInfo.isConnected) {
        final response = await client.getPrograms(filter: callLetter);
        final data = response.data;
        Logger().d("Porgram Response $data");
        final program = data['value'][1];
        Logger().d("Mapped Program $program");

        final mapData = ProgramModel.fromJson(program as Map<String, dynamic>);
        Logger().d("Final Program $mapData");
        return mapData;
      } else {
        Logger().e("No Internet");
      }
    } catch (error) {
      Logger().e("Error occurred: ${error.runtimeType} - ${error.toString()}");
    }
    throw UnimplementedError();
  }
}
