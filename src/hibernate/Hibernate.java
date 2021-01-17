package hibernate;

import com.github.javafaker.Faker;
import java.util.Scanner;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Hibernate {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        SessionFactory miFac = new Configuration().configure("./hibernate/hibernate.conf.xml").addAnnotatedClass(Persona.class).buildSessionFactory();
        Session session = miFac.openSession();
        try {
            crear(100_000, session);
        } finally {
            miFac.close();
        }
    }

    public static void crear(int cantidad, Session session) {
        int index = 1;
        int id = 0;
        try {
            id = (int) session.createQuery("SELECT MAX(P.idPersona) AS idPersona FROM Persona P").uniqueResult();
        } catch (java.lang.NullPointerException err) {
            System.out.println("El primer id sera 0");
        }
        Faker faker = new Faker();
        Persona persona;
        session.beginTransaction();

        while (index <= cantidad) {
            id ++;
            String nombre = faker.name().name();
            String appa = faker.name().firstName();
            String apma = faker.name().lastName();
            
            persona = new Persona(id, nombre, appa, apma);
            session.save(persona);
            System.out.println("Registro insertado con id = " + id);
            index++;
        }
        session.getTransaction().commit();

        session.close();

    }

}
