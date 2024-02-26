package com.jsp.DAO;



import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Id;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.DTO.Employee;

@Repository
public class EmployeeDAO {
	@Autowired
	EntityManager em;

	@Autowired
	EntityTransaction et;

	public void saveEmployee(Employee employee) {
		et.begin();
		em.persist(employee);
		et.commit();
	}

	public Employee getEmployeeById(int id) {
		Employee e = em.find(Employee.class, id);
		return e;
	}
	
	public void deleteEmployeeById(int id) {
		
		et.begin();
		em.remove(getEmployeeById(id));
		et.commit();
	}
	
	 public List<Employee> getAllEmployees() {
	        Query query = em.createQuery("select e from Employee e");
	        List<Employee> emp = query.getResultList();
	        return emp;
	    }
	 
	 
	 
	 public void rename(int id, String name) {
		    Employee e = em.find(Employee.class, id);

		    Query query = em.createQuery("update Employee e set e.name = :name where e.id = :id");
		    query.setParameter("name", name);
		    query.setParameter("id", id);

		    et.begin();
		    query.executeUpdate();
		    et.commit();
		}

	 
	 public void update(Employee emp) {
		
		 et.begin();
		 em.merge(emp);
		 et.commit();
	 }
	 
	 

	 
	 
	 
}