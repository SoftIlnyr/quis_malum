package ru.kpfu.itis.Timofeeva.mvc.services.IMPL;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.kpfu.itis.Timofeeva.mvc.entities.Doctor;
import ru.kpfu.itis.Timofeeva.mvc.entities.User;
import ru.kpfu.itis.Timofeeva.mvc.repositories.DoctorRepository;
import ru.kpfu.itis.Timofeeva.mvc.services.INTERFACES.DoctorService;

/**
 * Created by softi on 26.06.2016.
 */
@Service
@Transactional
public class DoctorServiceIMPL implements DoctorService {

    @Autowired
    DoctorRepository doctorRepository;

    @Override
    public Doctor addDoctor(Doctor doctor) {
        doctorRepository.save(doctor);
        return doctor;
    }

    @Override
    public Doctor findDoctor(User user) {
        return doctorRepository.findByUser(user);
    }

    @Override
    public void remove(Doctor doctor) {
        doctorRepository.delete(doctor);
    }
}
