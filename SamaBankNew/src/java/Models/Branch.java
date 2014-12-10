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
public class Branch {

    int branchId;
    String branchName;

    public int getBranchId() {
        return branchId;
    }

    public void setBranchId(int branchId) {
        this.branchId = branchId;
    }

    public String getBranchName() {
        return branchName;
    }

    public void setBranchName(String branchName) {
        this.branchName = branchName;
    }

    public static List getAllBranchId() {
        Branch b = null;
        List<Branch> list = null;
        Connection con = ConnectionAgent.getConnection();
        final String GET_ALL_BRANCH_SQL = "SELECT * FROM BRANCH";
        try {
            PreparedStatement psm = con.prepareStatement(GET_ALL_BRANCH_SQL);
            ResultSet rs = psm.executeQuery();
            while (rs.next()) {
                b = new Branch();
                if (list == null) {
                    list = new ArrayList<>();
                }
                b.setBranchId(rs.getInt("BRANCHID"));
                b.setBranchName(rs.getString("branchname"));
                list.add(b);
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return list;
    }
}
