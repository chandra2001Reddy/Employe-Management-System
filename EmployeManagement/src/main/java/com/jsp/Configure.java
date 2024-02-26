package com.jsp;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;


@Configuration
@ComponentScan(basePackages = "com.jsp")
public class Configure {
	@Bean  //used to specify that one object is created
	public EntityManager getEntityMagager() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dev");
		return emf.createEntityManager();
	}
	
	@Bean
	public EntityTransaction getEntityTransaction() {
		EntityManager em = getEntityMagager();
		return em.getTransaction();
	}
}
