package prueva;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Principal {

    public static void main(String[] args) {
//        SessionFactory miFac = new Configuration().configure("./prueva/hibernate.conf.xml").
//                addAnnotatedClass(Producto.class).
//                addAnnotatedClass(Categoria.class).
//                buildSessionFactory();
//        Session session = miFac.openSession();
//        session.beginTransaction();
//
//        Producto product = session.get(Producto.class, 1);
//        System.out.println(product.getModelo());
//        //session.save(product);
//        session.getTransaction().commit();
numerosPares();
    }

    public static void numerosPares() {
        for (int numero = 1; numero <= 100; numero++) {
            if (numero % 2 == 0)System.out.print(numero + ",");   
        }
    }

}
