package com.nhoclahola.study_05_servlet_jpa.configurations;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class JPAConfig
{
    public static EntityManager getEntityManager()
    {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("dataSource");
        return factory.createEntityManager();
    }
}
