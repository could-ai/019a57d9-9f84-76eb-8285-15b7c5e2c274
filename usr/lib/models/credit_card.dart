class CreditCard {
  final String cardName;
  final String bankName;
  final String cardType;
  final String cardNumber;
  final String expiryDate;
  final String cvv;
  final List<String> benefits;
  final List<String> tags;
  final double annualFee;

  CreditCard({
    required this.cardName,
    required this.bankName,
    required this.cardType,
    required this.cardNumber,
    required this.expiryDate,
    required this.cvv,
    required this.benefits,
    required this.tags,
    required this.annualFee,
  });
}
