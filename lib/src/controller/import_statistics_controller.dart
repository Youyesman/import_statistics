import 'package:covid_statistics/src/model/import_statistics.dart';
import 'package:covid_statistics/src/repository/import_statistics_repository.dart';
import 'package:get/get.dart';

class ImportStatisticsController extends GetxController {
  late ImportStatisticsRepository _importStatisticsRepository;
  Rx<ImportStatisticsModel> importStatistic = ImportStatisticsModel().obs;

  @override
  void onInit() {
    super.onInit();
    _importStatisticsRepository = ImportStatisticsRepository();
    fetchImportState();
  }

  void fetchImportState() async {
    var result = await _importStatisticsRepository.fetchImportStatistics();
    if (result != null) {
      importStatistic(result);
    }
  }
}

