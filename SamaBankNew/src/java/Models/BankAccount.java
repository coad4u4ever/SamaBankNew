package Models;

import Utilities.ConnectionAgent;
import java.io.Serializable;
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
public class BankAccount implements Serializable {

    private String id;
    private long accountId;
    private String password;
    private String fname;
    private String lname;
    private double balance;
    private int accountType;
    private int branchId;
    private static long NEXT_ID;

    static {
        NEXT_ID = getNewAccountId();
    }

    // <editor-fold defaultstate="collapsed" desc="getter & setter & toString mothod">
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public long getAccountId() {
        return accountId;
    }

    public void setAccountId(long accountId) {
        this.accountId = accountId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public int getAccountType() {
        return accountType;
    }

    public void setAccountType(int accountType) {
        this.accountType = accountType;
    }

    public int getBranchId() {
        return branchId;
    }

    public void setBranchId(int branchId) {
        this.branchId = branchId;
    }

    @Override
    public String toString() {
        return "BankAccount{" + "id=" + id + ", accountId=" + accountId + ", password=" + password + ", fname=" + fname + ", lname=" + lname + ", balance=" + balance + ", accountType=" + accountType + ", branchId=" + branchId + '}';
    }

    // </editor-fold>
    // 
    private static void getBankAccount(ResultSet rs, BankAccount ba) throws SQLException {
        ba.setId(rs.getString("id"));
        ba.setAccountId(rs.getLong("accountid"));
        ba.setPassword(rs.getString("password"));
        ba.setFname(rs.getString("fname"));
        ba.setLname(rs.getString("lname"));
        ba.setBalance(rs.getDouble("balance"));
        ba.setAccountType(rs.getInt("accounttype"));
        ba.setBranchId(rs.getInt("branchid"));
    }

    public static BankAccount findAccountByID(String test) {
        BankAccount ba = null;
        Connection con = ConnectionAgent.getConnection();
        final String FIND_BY_ID_SQL = "SELECT * FROM BANKACCOUNT WHERE ID = ?";
        try {
            PreparedStatement psm = con.prepareStatement(FIND_BY_ID_SQL);
            psm.setString(1, test);
            ResultSet rs = psm.executeQuery();
            if (rs.next()) {
                ba = new BankAccount();
                getBankAccount(rs, ba);
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return ba;
    }

    public static double getBalanceByAccountID(long accid) {
        double balance = 0.0;
        Connection con = ConnectionAgent.getConnection();
        final String FIND_BALANCE_BY_ACCOUNT_ID_SQL = "SELECT BALANCE FROM BANKACCOUNT WHERE ACCOUNTID = ?";
        try {
            PreparedStatement psm = con.prepareStatement(FIND_BALANCE_BY_ACCOUNT_ID_SQL);
            psm.setLong(1, accid);
            ResultSet rs = psm.executeQuery();
            if (rs.next()) {
                balance = rs.getDouble(1);
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
            return -1;
        }
        return balance;
    }

    public static BankAccount findAccountByAccountID(long test) {
        BankAccount ba = null;
        Connection con = ConnectionAgent.getConnection();
        final String FIND_BY_ACCOUNT_ID_SQL = "SELECT * FROM BANKACCOUNT WHERE ACCOUNTID = ?";
        try {
            PreparedStatement psm = con.prepareStatement(FIND_BY_ACCOUNT_ID_SQL);
            psm.setLong(1, test);
            ResultSet rs = psm.executeQuery();
            if (rs.next()) {
                ba = new BankAccount();
                getBankAccount(rs, ba);
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return ba;
    }

    private static long getNewAccountId() {
        try {
            Connection con = ConnectionAgent.getConnection();
            final String GET_NEW_ACCOUNTID_SQL = "SELECT MAX(ACCOUNTID) FROM BANKACCOUNT";
            ResultSet rs = con.createStatement().executeQuery(GET_NEW_ACCOUNTID_SQL);
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

    public boolean save() {
        final String INSERT_NEWACCOUNT_SQL = "INSERT INTO BANKACCOUNT(ID,ACCOUNTID,PASSWORD,FNAME,LNAME,BALANCE,ACCOUNTTYPE,BRANCHID) VALUES(?,?,?,?,?,?,?,?)";
        try {
            Connection con = ConnectionAgent.getConnection();
            PreparedStatement psm = con.prepareStatement(INSERT_NEWACCOUNT_SQL);
            this.accountId = NEXT_ID++;
            psm.setString(1, this.id);
            psm.setLong(2, this.accountId);
            psm.setString(3, this.password);
            psm.setString(4, this.fname);
            psm.setString(5, this.lname);
            psm.setDouble(6, this.balance);
            psm.setInt(7, this.accountType);
            psm.setInt(8, this.branchId);
            int done = psm.executeUpdate();
            return done > 0;
        } catch (SQLException ex) {
            System.out.println(ex);
            return false;
        }
    }

    public boolean update() { // Can UPDATE ONLY ID, PASSWORD, First Name, Last Name, Branch ID 
        final String UPDATE_ACCOUNT_SQL = "UPDATE BANKACCOUNT SET ID=?,PASSWORD=?,FNAME=?,LNAME=?,BRANCHID=? WHERE ACCOUNTID = ?";
        try {
            Connection con = ConnectionAgent.getConnection();
            PreparedStatement psm = con.prepareStatement(UPDATE_ACCOUNT_SQL);
            psm.setString(1, this.id);
            psm.setString(2, this.password);
            psm.setString(3, this.fname);
            psm.setString(4, this.lname);
            psm.setInt(5, this.branchId);
            psm.setLong(6, this.accountId);
            int done = psm.executeUpdate();
            return done > 0;
        } catch (SQLException ex) {
            System.out.println(ex);
            return false;
        }
    }

    public boolean deposite(double money) {
        //final String GET_OLD_MONEY_SQL = "SELECT BALANCE FROM BANKACCOUNT WHERE ACCOUNTID = ?";
        final String DEPOSITE_MONEY_SQL = "UPDATE BANKACCOUNT SET BALANCE = ? WHERE ACCOUNTID = ?";
        double oldMoney = getBalanceByAccountID(this.accountId);
        try {
            Connection con = ConnectionAgent.getConnection();
            PreparedStatement psm = con.prepareStatement(DEPOSITE_MONEY_SQL);
            psm.setDouble(1, oldMoney + money);
            psm.setLong(2, this.accountId);
            int done = psm.executeUpdate();
            Transaction.createTransaction(this.accountId, "DEPO", money);
            return done > 0;
        } catch (SQLException ex) {
            System.out.println(ex);
            return false;
        }
    }

    public boolean withdraw(double money) {
        //final String GET_OLD_MONEY_SQL = "SELECT BALANCE FROM BANKACCOUNT WHERE ACCOUNTID = ?";
        final String WITHDRAW_SQL = "UPDATE BANKACCOUNT SET BALANCE = ? WHERE ACCOUNTID = ?";

        double oldMoney = getBalanceByAccountID(this.accountId);
        if (money > oldMoney) {
            return false;
        } else {
            try {
                Connection con = ConnectionAgent.getConnection();
                PreparedStatement psm = con.prepareStatement(WITHDRAW_SQL);
                psm.setDouble(1, oldMoney - money);
                psm.setLong(2, this.accountId);
                int done = psm.executeUpdate();
                Transaction.createTransaction(this.accountId, "WIDR", money);
                return done > 0;
            } catch (SQLException ex) {
                System.out.println(ex);
                return false;
            }
        }
    }

    public boolean transfer(long accountIdDestination, double money) {
        Connection con = ConnectionAgent.getConnection();
        BankAccount ba = BankAccount.findAccountByAccountID(accountIdDestination);
        if (withdraw(money) && ba.deposite(money)) {
            Transaction.createTransaction(this.accountId, "OFER", money);
            Transaction.createTransaction(accountIdDestination, "RECR", money);
            return true;
        } else {
            return false;
        }
    }

    public static List getAllAccount() {
        BankAccount ba = null;
        List<BankAccount> list = null;
        Connection con = ConnectionAgent.getConnection();
        final String GET_ALL_SQL = "SELECT * FROM BANKACCOUNT";
        try {
            PreparedStatement psm = con.prepareStatement(GET_ALL_SQL);
            ResultSet rs = psm.executeQuery();
            while (rs.next()) {
                ba = new BankAccount();
                if (list == null) {
                    list = new ArrayList<>();
                }
                getBankAccount(rs, ba);
                list.add(ba);
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return list;
    }
}
