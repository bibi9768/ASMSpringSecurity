package demo.spring.security.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import demo.spring.security.dao.loginDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import demo.spring.security.dao.dao;
import demo.spring.security.dao.registerDAO;
import demo.spring.security.model.content;
import demo.spring.security.model.member;

@Controller

public class BaseController {

	@Autowired
	private dao contentDAO;
	@Autowired
	private loginDAO loginDao;

	@RequestMapping(value = "/ajax")
	@ResponseBody
	public String loadAjax(){

		List<content> list = contentDAO.listEmployee();
		ObjectMapper mapper = new ObjectMapper();
		String ajaxResponse = "";
		try {
			ajaxResponse = mapper.writeValueAsString(list);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}

		return ajaxResponse;
	}
	@RequestMapping(value = "/viewajax")
	public String showView(){
		return "viewajax";
	}

	@RequestMapping(value = "/del/{id}",method = RequestMethod.GET)
	@ResponseBody
	public String showView(@PathVariable String id){
		contentDAO.deleteEmployee(Integer.valueOf(id));
		List<String> list=new ArrayList<String>();
		list.add("success:true");

		ObjectMapper mapper = new ObjectMapper();
		String ajaxResponse = "";
		try {
			ajaxResponse = mapper.writeValueAsString(list);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return ajaxResponse;
		//return "hihi";
	}



	@RequestMapping(value = { "/login", "/" })
	public String login(Model model) {

		model.addAttribute("data",new member());
		return "login";
	}

	@RequestMapping(value = "passlogin",method = RequestMethod.POST)
	public String passlogin(Model model, @ModelAttribute("data") member mb, HttpSession session)
	{
		if(loginDao.checklogin(mb.getUsername(),mb.getPassword())){
			session.setAttribute("userid",loginDao.getId(mb.getUsername()));
			if(loginDao.isadmin(mb.getUsername())){
				session.setAttribute("list","list1");
				return "list1";
			}
			else {
				session.setAttribute("list","list");
				return "list";
			}


		}

		//add param báo lỗi
		//...

		return "redirect:login"; //tải lại trang login và báo lỗi

	}
	@RequestMapping("/list1")
	public String show() {
		return "list1";
	}

	@RequestMapping("/admin")
	public String admin() {
		return "admin";
	}

	@RequestMapping("/user")
	public String user() {
		return "user";
	}


	@Autowired
	private registerDAO registerdao;

	@RequestMapping("/dangky")
	public String register(Model model) {
		model.addAttribute("memberdata", new member());
		return "dangky";

	}

	@RequestMapping(value ="/saveUser", method=RequestMethod.POST)
	public String passregister(Model model,@ModelAttribute("memberdata") member mb) {

		registerdao.addmember(mb);
		return "dangky";

	}



	@RequestMapping("/logout")
	public String logout(final Model model,HttpSession session) {


		model.addAttribute("message", "Logged out!");
		session.removeAttribute("userid");
		return "redirect:login";
	}



	@RequestMapping(value = "/list")
	public String showview(Model model)
	{
		/*
		 * List<content> list = contentDAO.listEmployee(); for (content emp : list) {
		 * System.out.println("Emp No " + emp.getContentID()); }
		 * model.addAttribute("contents", list);
		 */
		return "list";
	}
	@RequestMapping(value = "/update")
	public String update(Model model,HttpServletRequest request)
	{
		int id=Integer.parseInt(request.getParameter("id"));
		content ct=contentDAO.getEmployee(id);
		model.addAttribute("contentdata", ct);
		return "update";
	}
	@RequestMapping(value="/updatecontent", method=RequestMethod.POST)
	public String updateEmployee(@ModelAttribute("contentdata")content ct, BindingResult result){
		System.out.println("add content");
		contentDAO.updateEmployee(ct);
		return "redirect:/list";
	}

	@RequestMapping(value = "/delete")
	public String deleteEmployee(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		contentDAO.deleteEmployee(id);
		return "redirect:/list";
	}

	@RequestMapping(value = "/create",method = RequestMethod.GET)
	public String addContent(Model model)
	{
		model.addAttribute("contentdata", new content());
		return "create";
	}

	@RequestMapping(value = "/addcontent",method =  RequestMethod.POST)
	public String andDataContent(Model model,@ModelAttribute("contentdata") content ct)
	{
		contentDAO.addEmployee(ct);
		model.addAttribute("success", true);
		return"redirect:create";
	}




}
