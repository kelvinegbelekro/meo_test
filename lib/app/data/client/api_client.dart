// ignore_for_file: strict_raw_type

import 'package:dio/dio.dart';
import 'package:meo_test_app/core/constants/env_constants.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(
    Dio dio, {
    String baseUrl,
  }) = _ApiClient;

  @GET(channelsUrl)
  Future<HttpResponse> getChannels();

  // @GET()
  // Future<HttpResponse> getPrograms({
  //   @Path('callLetter') required String callLetter,
  // });
  @GET(programsUrl)
  Future<HttpResponse> getPrograms({
    @Query('UserAgent') String userAgent = 'AND',
    @Query(r'$filter') required String filter,
    @Query(r'$orderby') String orderby = 'StartDate asc',
  });
}
