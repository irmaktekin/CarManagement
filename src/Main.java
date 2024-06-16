import business.UserManager;
import core.DB;
import core.Helper;
import entity.User;
import view.AdminView;
import view.LoginView;

import javax.swing.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Main {
    public static void main(String[] args) {
        Helper.setTheme();
        //UserManager userManager = new UserManager();

        LoginView loginView = new LoginView();
        //AdminView adminView = new AdminView(userManager.findByLogin("admin","1234"));

    }

}