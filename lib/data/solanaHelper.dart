// ignore_for_file: unused_local_variable

import 'package:solana/solana.dart';
import 'package:solana/dto.dart';

class SolanaHelper {
  final RpcClient rpcClient = RpcClient("https://api.mainnet-beta.solana.com");

  Future<String> getTx(String signature) async {
    Map<String, dynamic> map = new Map<String, dynamic>();
    TransactionDetails transactionDetails =
        await rpcClient.getTransaction(signature) ??
            TransactionDetails(slot: 0, transaction: Transaction.fromJson(map));
    print(transactionDetails.transaction.signatures);
    return "";
  }
}
