package ru.kpfu.itis.Timofeeva.mvc.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.kpfu.itis.Timofeeva.mvc.entities.Patient;
import ru.kpfu.itis.Timofeeva.mvc.entities.User;

/**
 * Created by softi on 26.06.2016.
 */
public interface PatientRepository extends JpaRepository<Patient, Integer> {
    public Patient findByUser(User user);
}
