package model.client;


import connection.BddObject;
import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.Date;
import connection.BddObject;
import connection.Column;
import etu2070.annotation.Setter;
import etu2070.framework.FileUpload;
import java.util.Vector;

public class Client{

    String name;
    String firstname;
    int age;

    public String getName() {
        return name;
    }
    public String getFirstname() {
        return firstname;
    }
    public int getAge() {
        return age;
    }
    public void setName(String name) {
        this.name = name;
    }
    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }
    public void setAge(int age) {
        this.age = age;
    }

    public Client()throws Exception{    
    }

    public Client[] getList()throws Exception{
        Client[] cls=new Client[3];
        cls[0] = new Client();
        cls[0].setName("Arena");
        cls[0].setFirstname("Gracia");
        cls[0].setAge(17);

        cls[1] = new Client();
        cls[1].setName("Koloina");
        cls[1].setFirstname("Mihajatiana");
        cls[1].setAge(19);

        cls[2] = new Client();
        cls[2].setName("Angoty");
        cls[2].setFirstname("Fitia");
        cls[2].setAge(17);
        return cls;
    }
}