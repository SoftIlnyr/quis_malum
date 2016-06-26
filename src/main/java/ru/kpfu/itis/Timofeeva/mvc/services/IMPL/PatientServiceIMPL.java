package ru.kpfu.itis.Timofeeva.mvc.services.IMPL;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.kpfu.itis.Timofeeva.mvc.entities.Patient;
import ru.kpfu.itis.Timofeeva.mvc.entities.User;
import ru.kpfu.itis.Timofeeva.mvc.repositories.PatientRepository;
import ru.kpfu.itis.Timofeeva.mvc.services.INTERFACES.PatientService;

/**
 * Created by softi on 26.06.2016.
 */
@Service
@Transactional
public class PatientServiceIMPL implements PatientService {
    @Autowired
    PatientRepository patientRepository;

    @Override
    public Patient addPatient(Patient patient) {
        patientRepository.save(patient);
        return patient;
    }

    @Override
    public Patient findPatient(User user) {
        return patientRepository.findByUser(user);
    }

}
