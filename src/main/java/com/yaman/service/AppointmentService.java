package com.yaman.service;

import java.util.List;

import com.yaman.model.Appointment;


public interface AppointmentService {
	
	void saveAppointment(Appointment appointment);
	
	List<Appointment> findAllAppointment();
	
	List<Appointment> findByDesc(String description);

}
