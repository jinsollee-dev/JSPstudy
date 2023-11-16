package model1.member;

import common.JDBCConnect;
import common.MySQLConnectPool;

public class MemberDAO extends JDBCConnect {
    public MemberDAO() {
        super();
    }

    public MemberDTO getMemberDTO(String uid, String upass) {
        MemberDTO dto = new MemberDTO();
        String query = "select * from tbl_member where user_id=? and user_pass=?";
        try {
            pstmt = conn.prepareStatement(query);
            pstmt.setString(1, uid);
            pstmt.setString(2, upass);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                dto.setId(rs.getString("user_id"));
                dto.setPass(rs.getString("user_pass"));
                dto.setName(rs.getString("user_name"));
                dto.setRegidate(rs.getDate("regidate"));

            }
        } catch (Exception ex) {

        }
        return dto;

    }

    public int insertMember(MemberDTO dto){
        int iResult =-1;

        String sql = "insert into tbl_member (user_name, user_id, user_pass) values (?,?,?)";
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, dto.getName());
            pstmt.setString(2, dto.getId());
            pstmt.setString(3,dto.getPass());
            iResult = pstmt.executeUpdate();

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return iResult;
    }

}
