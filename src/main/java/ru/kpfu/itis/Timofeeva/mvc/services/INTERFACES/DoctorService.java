package ru.kpfu.itis.Timofeeva.mvc.services.INTERFACES;

import ru.kpfu.itis.Timofeeva.mvc.entities.Doctor;
import ru.kpfu.itis.Timofeeva.mvc.entities.User;

/**
 * Created by softi on 26.06.2016.
 */
public interface DoctorService {
    Doctor addDoctor(Doctor doctor);

    Doctor findDoctor(User user);

    void remove(Doctor doctor);
}
