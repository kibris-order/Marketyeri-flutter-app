
import 'package:algolia/algolia.dart';

class AlgoliaService {
  static const Algolia algolia = Algolia.init(
    applicationId: "latency",
      apiKey: "927c3fe76d4b52c5a2912973f35a3077");
}