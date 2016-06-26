package ru.kpfu.itis.Timofeeva.mvc.services.IMPL;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.kpfu.itis.Timofeeva.mvc.entities.Blood;
import ru.kpfu.itis.Timofeeva.mvc.repositories.BloodRepository;
import ru.kpfu.itis.Timofeeva.mvc.services.INTERFACES.BloodService;

import java.util.List;

/**
 * Created by softi on 26.06.2016.
 */
@Service
@Transactional
public class BloodServiceIMPL implements BloodService {

    @Autowired
    BloodRepository bloodRepository;

    @Override
    public Blood addBlood(Blood blood) {
        bloodRepository.save(blood);
        return blood;
    }

    @Override
    public List<Blood> findAll() {
        return bloodRepository.findAll();
    }
}
