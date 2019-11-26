import br.edu.unifil.agenda.model.Group;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;

public class Main {

    public static void main(String[] args) {
        Group group = new Group("teste3");

        EntityManagerFactory emf =
                Persistence.createEntityManagerFactory("jpa-lab3-jsp");

        EntityManager em = emf.createEntityManager();

        em.getTransaction().begin();
        em.persist(group);
        em.getTransaction().commit();

    }
}
