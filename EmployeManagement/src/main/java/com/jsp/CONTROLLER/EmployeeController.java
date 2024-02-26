package com.jsp.CONTROLLER;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.DAO.EmployeeDAO;
import com.jsp.DTO.Employee;

@Controller
public class EmployeeController {
	@Autowired
	EmployeeDAO employedao;

	@RequestMapping("/add")
	public ModelAndView saveEmployee() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("employee", new Employee());
		mv.setViewName("addEmployee.jsp");
		return mv;
	}

	@RequestMapping("/save")
	public ModelAndView createEmployee(@ModelAttribute Employee employee) {
		employedao.saveEmployee(employee);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index.jsp");
		return mv;

	}

	
	
	
	
	// search page input
	@RequestMapping("/search")
	public ModelAndView search(@ModelAttribute Employee employee) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("employee", new Employee());
		mv.setViewName("search.jsp");
		return mv;

	}

	// getting the search input
	@RequestMapping("/view")
	public ModelAndView getsearch(@ModelAttribute Employee employee) {
		ModelAndView mv = new ModelAndView();
		Employee emp = employedao.getEmployeeById(employee.getId());
		mv.addObject("employee", emp);
		mv.setViewName("display.jsp");
		return mv;

	}

	
	
	
	
	
	// delete page input
	@RequestMapping("/delete")
	public ModelAndView delete(@ModelAttribute Employee employee) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("employee", new Employee());
		mv.setViewName("delete.jsp");
		return mv;

	}

	// delete the input given
	@RequestMapping("/remove")
	public ModelAndView deleted(@ModelAttribute Employee employee) {
		employedao.deleteEmployeeById(employee.getId());
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index.jsp");
		return mv;

	}

	
	
	
	
	
	
	
	
	
	// displaying the all employees details
	@RequestMapping("/display")
	public ModelAndView displayEmployees() {
		ModelAndView mv = new ModelAndView();
		List<Employee> allEmployees = employedao.getAllEmployees();
		mv.addObject("employees", allEmployees);
		mv.setViewName("allemployees.jsp");
		return mv;
	}

	
	
	
	
	
	
	
	
	
	
	// update
	// delete page input
	@RequestMapping("/update")
	public ModelAndView update(@ModelAttribute Employee employee) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("employee", new Employee());
		mv.setViewName("update.jsp");
		return mv;

	}


	// update the input given
	@RequestMapping("/edit")
	public ModelAndView updareName(@ModelAttribute Employee employee) {
		employedao.update(employee);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index.jsp");
		return mv;

	}

}
