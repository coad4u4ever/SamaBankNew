package Test;

import Models.BankAccount;

/**
 *
 * @author coad4u4ever
 */
public class TestDBConnection {

    public static void main(String[] args) {
        BankAccount ba = BankAccount.findAccountByAccountID(100200300);
        
        System.out.println(ba.toString());
    }

}
