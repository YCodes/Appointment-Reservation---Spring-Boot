package com.yaman.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.yaman.model.Appointment;
import com.yaman.service.AppointmentService;

@Controller
public class HomeController {
	
	
	@Autowired
	AppointmentService apptService;
	
	
	@SuppressWarnings("deprecation")
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String home(Model model){
		
		System.out.println("Home Page Requested");
		
		List<Appointment>appointments = apptService.findAllAppointment();
		model.addAttribute("appointments",appointments);

		
		model.addAttribute("appname", "Appointment Reservation");
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		model.addAttribute("todayDate",dateFormat.format(date).toString()); //2018-03-18
		int year = date.getYear()+1;
		date.setYear(year);
		model.addAttribute("futureDate", dateFormat.format(date));
		return "home";
	}
	
	@RequestMapping(value="/add", method= RequestMethod.POST)
	public String addAppointment(@Validated Appointment appointment, ModelMap model){
		System.out.println("Appointment Page Requested");
		
		apptService.saveAppointment(appointment);
		
		return "redirect:/";
	}
	
	@RequestMapping("/search")
	public void searchAppointment(HttpServletRequest request,HttpServletResponse response,Model model,
			@RequestParam("desc") String desc){	
		List<Appointment> appointments = new ArrayList<>();
		try{ 
			if(desc.equals("")|| desc==null)
			appointments =apptService.findAllAppointment();	
			else
				appointments = apptService.findByDesc(desc);
		}catch(Exception ex){
			ex.printStackTrace();
		}
		try {
			String json =  "" ; 
			json =new Gson().toJson(appointments);
			response.getWriter().write("{ \"data\":"   + json + " }");
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
	}

}
