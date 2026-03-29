class CreateExpenseModel{

 final int accountId;
 final int expenseCategoryId;
 final DateTime date;
 final String dueDate;
 final String paymentMethod;
 final double amount;
 final double paidAmount;
 final String notes;
 final List<Document> documents;

CreateExpenseModel({

   required this.accountId,
   required this.expenseCategoryId,
   required this.date,
   required this.dueDate,
   required this.paymentMethod,
   required this.amount,
   required this.paidAmount,
   required this.notes,
   required this.documents,
});

Map<String, dynamic> toJson(){
  return{
    "accountId":accountId,
    "expenseCategoryId":expenseCategoryId,
    "date":date.toIso8601String(),
    "dueDate":dueDate,
    "paymentMethod":paymentMethod,
    "amount":amount,
    "paidAmount":paidAmount,
    "notes":notes,
  };
}
}
class Document{
  final int docId;
  final String document;

  Document({
    required this.docId,
    required this.document,
  });

Map<String, dynamic> toJson(){
  return{
    "docId":docId,
    "document":document,
  };
}
}
