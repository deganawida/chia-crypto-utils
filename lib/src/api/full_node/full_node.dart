import 'package:chia_crypto_utils/chia_crypto_utils.dart';

abstract class FullNode {
  const FullNode(this.baseURL);

  final String baseURL;

  Future<CoinRecordsResponse> getCoinRecordsByPuzzleHashes(
    List<Puzzlehash> puzzlehashes, {
    int? startHeight,
    int? endHeight,
    bool includeSpentCoins = false,
  });

  Future<ChiaBaseResponse> pushTransaction(SpendBundle spendBundle);

  Future<CoinRecordResponse> getCoinByName(Bytes coinId);

  Future<CoinRecordsResponse> getCoinsByNames(
    List<Bytes> coinIds, {
    int? startHeight,
    int? endHeight,
    bool includeSpentCoins = false,
  });

  Future<CoinSpendResponse> getPuzzleAndSolution(Bytes coinId, int height);

  Future<BlockchainStateResponse> getBlockchainState();
}
