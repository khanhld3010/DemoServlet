package org.example.usermanager.DAO;

import org.example.usermanager.model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserDAO {
    public void insertUser(User user) throws SQLException;

    public User selectUser(int id);

    public List<User> selectAllUsers();

    public boolean deleteUser(int id) throws SQLException;

    public boolean updateUser(User user) throws SQLException;

    public List<User> searchByCountry(String country) throws SQLException;

    User getUserById(int id) throws SQLException;

    void insertUserStore(User user) throws SQLException;

    void addUserTransaction(User user, List<Integer> permission);

    public void insertUpdateWithoutTransaction() throws SQLException;

    public void insertUpdateUseTransaction() throws SQLException;
}
