package com.yaman.serviceImplementation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yaman.model.Appointment;
import com.yaman.repository.AppointmentRepository;
import com.yaman.service.AppointmentService;

@Service
@Transactional
public class AppointmentServiceImpl implements AppointmentService {

	@Autowired
	AppointmentRepository apptRepository;
	
	@Override
	public void saveAppointment(Appointment appointment) {
		
		apptRepository.save(appointment);
		
		
	}
	
	
	@Override
	public List<Appointment> findAllAppointment() {
		
		return (List<Appointment>) apptRepository.findAll();
	}

	@Override
	public List<Appointment> findByDesc(String description) {
		
		return (List<Appointment>) apptRepository.findByAppointmentDesc(description);
	}

	

	

}
