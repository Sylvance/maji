class Transaction {
  final int senderId;
  final int recipientId;
  final int id;
  final int balance;
  final String note;

  Transaction({this.senderId, this.recipientId, this.id, this.balance, this.note});

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      senderId: json['senderId'],
      recipientId: json['recipientId'],
      id: json['id'],
      balance: json['balance'],
      note: json['note'],
    );
  }
}
