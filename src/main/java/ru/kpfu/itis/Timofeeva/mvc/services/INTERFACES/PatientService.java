package ru.kpfu.itis.Timofeeva.mvc.services.INTERFACES;

import ru.kpfu.itis.Timofeeva.mvc.entities.Patient;
import ru.kpfu.itis.Timofeeva.mvc.entities.User;

/**
 * Created by softi on 26.06.2016.
 */
public interface PatientService {


    Patient addPatient(Patient patient);

    Patient findPatient(User user);

}
