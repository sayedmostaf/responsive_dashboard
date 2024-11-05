class TransctionModel {
  final String date, title, amount;
  final bool isWithdrawal;
  const TransctionModel({
    required this.date,
    required this.title,
    required this.amount,
    required this.isWithdrawal,
  });
}
