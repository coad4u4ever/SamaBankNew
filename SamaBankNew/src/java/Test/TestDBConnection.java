package Test;

import Models.BankAccount;
import Models.Transaction;
import java.util.List;
import java.util.function.Consumer;

/**
 *
 * @author coad4u4ever
 */
public class TestDBConnection {

    public static void main(String[] args) {
        /* 
         BankAccount ba = BankAccount.findAccountByAccountID(100200300);
         System.out.println(ba.toString());
         java.util.Date dt = new java.util.Date();
         java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
         String currentTime = sdf.format(dt);
         System.out.println(currentTime);    
         Transaction ta = Transaction.findTransactionByTransactionNO(100000001);
         System.out.println(ta.toString());
         System.out.println("//////");
         List ta2 = Transaction.findAllTransactionByBankAccountID(100200300);
         ta2.stream().forEach(new Consumer<Transaction>() {
         public void accept(Transaction t) {
         System.out.println(t.toString());
         }
         });      
         long t = 100200300;
         Transaction.createTransaction(t, "DEPO", 500.00);            
         */

        BankAccount ba = BankAccount.findAccountByAccountID(100200300);
        ba.transfer(100200301, 50);

    }

}
