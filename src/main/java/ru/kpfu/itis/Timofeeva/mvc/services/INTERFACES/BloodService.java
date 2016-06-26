package ru.kpfu.itis.Timofeeva.mvc.services.INTERFACES;

import ru.kpfu.itis.Timofeeva.mvc.entities.Blood;

import java.util.List;

/**
 * Created by softi on 26.06.2016.
 */
public interface BloodService {
    Blood addBlood(Blood blood);

    List<Blood> findAll();
}
