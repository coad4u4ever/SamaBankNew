package Models;

import Utilities.ConnectionAgent;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author coad4u4ever
 */
public class Transaction {

    private long transactionNo;
    private long accountId;
    private String date;
    private String code;
    private double amount;
    private double balance;
    private static long NEXT_TRANSACTION_NO;

    // <editor-fold defaultstate="collapsed" desc="getter & setter & toString mothod">
    public long getTransactionNo() {
        return transactionNo;
    }

    public void setTransactionNo(long transactionNo) {
        this.transactionNo = transactionNo;
    }

    public long getAccountId() {
        return accountId;
    }

    public void setAccountId(long accountId) {
        this.accountId = accountId;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    @Override
    public String toString() {
        return "Transaction{" + "transactionNo=" + transactionNo + ", accountId=" + accountId + ", date=" + date + ", code=" + code + ", amount=" + amount + ", balance=" + balance + '}';
    }

    // </editor-fold>
    static {
        NEXT_TRANSACTION_NO = getNewTransactionNO();
    }

    private static long getNewTransactionNO() {
        try {
            Connection con = ConnectionAgent.getConnection();
            final String GET_NEW_TRANSACTION_NO_SQL = "SELECT MAX(transactionno) FROM TRANSACTION";
            ResultSet rs = con.createStatement().executeQuery(GET_NEW_TRANSACTION_NO_SQL);
            if (rs.next()) {
                return rs.getLong(1) + 1;
            } else {
                return 0;
            }
        } catch (SQLException ex) {
            System.out.println(ex);
            return -1;
        }
    }

    public static boolean createTransaction(Long accid, String code, Double amount) {
        final String INSERT_NEW_TRANSACTION_SQL = "INSERT INTO TRANSACTION(TRANSACTIONNO,ACCOUNTID,DATE,CODE,AMOUNT,BALANCE) VALUES(?,?,?,?,?,?)";
        String currentDateAndTime = Utilities.DateMaker.dateAndTimeMaking();
        try {
            Connection con = ConnectionAgent.getConnection();
            PreparedStatement psm = con.prepareStatement(INSERT_NEW_TRANSACTION_SQL);

            psm.setLong(1, NEXT_TRANSACTION_NO++);
            psm.setLong(2, accid);
            psm.setString(3, currentDateAndTime);
            psm.setString(4, code);
            psm.setDouble(5, amount);
            psm.setDouble(6, BankAccount.getBalanceByAccountID(accid));
            int done = psm.executeUpdate();
            return done > 0;
        } catch (SQLException ex) {
            System.out.println(ex);
            return false;
        }
    }

    public static Transaction findTransactionByTransactionNO(long transactionNo) {
        Transaction tran = null;
        Connection con = ConnectionAgent.getConnection();
        final String FIND_TRANSACTION_BY_NO_SQL = "SELECT * FROM TRANSACTION WHERE transactionno = ?";
        try {
            PreparedStatement psm = con.prepareStatement(FIND_TRANSACTION_BY_NO_SQL);
            psm.setLong(1, transactionNo);
            ResultSet rs = psm.executeQuery();
            if (rs.next()) {
                tran = new Transaction();
                getTransaction(rs, tran);
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return tran;
    }

    public static List findAllTransactionByBankAccountID(long accid) {
        List<Transaction> trans = null;
        Transaction tran = null;
        Connection con = ConnectionAgent.getConnection();
        final String FIND_TRANSACTION_BY_NO_SQL = "SELECT * FROM TRANSACTION WHERE accountid = ? ORDER BY date DESC";
        try {
            PreparedStatement psm = con.prepareStatement(FIND_TRANSACTION_BY_NO_SQL);
            psm.setLong(1, accid);
            ResultSet rs = psm.executeQuery();
            while (rs.next()) {
                if (trans == null) {
                    trans = new ArrayList<>();
                }
                tran = new Transaction();
                getTransaction(rs, tran);
                trans.add(tran);
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return trans;
    }

    private static void getTransaction(ResultSet rs, Transaction tran) throws SQLException {
        tran.setTransactionNo(rs.getLong("transactionno"));
        tran.setAccountId(rs.getLong("accountid"));
        tran.setDate(rs.getString("date"));
        tran.setCode(rs.getString("code"));
        tran.setAmount(rs.getDouble("amount"));
        tran.setBalance(rs.getDouble("balance"));
    }

}
