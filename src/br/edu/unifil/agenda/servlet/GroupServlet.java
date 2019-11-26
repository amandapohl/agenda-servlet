package br.edu.unifil.agenda.servlet;

import br.edu.unifil.agenda.model.Group;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class GroupServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        EntityManagerFactory emf =
                Persistence.createEntityManagerFactory("jpa-lab3-jsp");

        EntityManager em = emf.createEntityManager();

        if((req.getParameter("action") != null)&&(req.getParameter("action").toLowerCase().equals("edit"))){

            Group group = em.find(Group.class, Long.parseLong(req.getParameter("id")));

            req.setAttribute("group", group);

            RequestDispatcher rd =
                    req.getRequestDispatcher("/WEB-INF/pages/groups/edit.jsp");

            em.close();
            emf.close();

            rd.forward(req, resp);

        }

        List<Group> groups = em.createNamedQuery("Groups.getAll", Group.class).getResultList();

        req.setAttribute("groups", groups);

        RequestDispatcher rd =
                req.getRequestDispatcher("/WEB-INF/pages/groups/index.jsp");

        em.close();
        emf.close();

        rd.forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        EntityManagerFactory emf =
                Persistence.createEntityManagerFactory("jpa-lab3-jsp");

        EntityManager em = emf.createEntityManager();

        String action = req.getParameter("action");

        if(action == null){
            Group group = new Group(req.getParameter("description"));

            em.getTransaction().begin();
            em.persist(group);
            em.getTransaction().commit();

        }else if(action.toUpperCase().equals("DELETE")){
            Group group = em.find(Group.class, Long.parseLong(req.getParameter("id")));

            em.getTransaction().begin();
            em.remove(group);
            em.getTransaction().commit();

        }else if (action.toUpperCase().equals("PUT")){
            Group group = em.find(Group.class, Long.parseLong(req.getParameter("id")));

            em.getTransaction().begin();
            group.setDescription(req.getParameter("description"));
            em.getTransaction().commit();

        }

        em.close();
        emf.close();

        resp.sendRedirect("/groups");
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        EntityManagerFactory emf =
                Persistence.createEntityManagerFactory("jpa-lab3-jsp");

        EntityManager em = emf.createEntityManager();

        Group group = em.find(Group.class, req.getParameter("id"));

        em.getTransaction().commit();
        group.setDescription(req.getParameter("description"));
        em.getTransaction().begin();

        em.close();
        emf.close();

    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        EntityManagerFactory emf =
                Persistence.createEntityManagerFactory("jpa-lab3-jsp");

        EntityManager em = emf.createEntityManager();

        Group group = em.find(Group.class, req.getParameter("id"));

        em.getTransaction().commit();
        em.remove(group);
        em.getTransaction().begin();

        em.close();
        emf.close();

//        resp.sendRedirect("/groups");
    }
}
