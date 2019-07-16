package demo.spring.security.dao;

public interface loginDAO {

    //kiem tra user co ton tai
    public boolean checklogin(String user, String pass);

    //lay id cua user
    public int getId(String user);

    //kiem tra quyen admin
    public boolean isadmin(String user);

}
