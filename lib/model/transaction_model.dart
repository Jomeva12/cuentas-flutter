class TransaccionModel{
 final double monto;
 final TransactionType type;
 final String  description;


  TransaccionModel(this.monto, this.type, this.description);



}
enum TransactionType{ entrada,salida}