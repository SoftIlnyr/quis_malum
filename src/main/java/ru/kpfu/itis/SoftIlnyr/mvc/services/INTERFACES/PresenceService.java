package ru.kpfu.itis.SoftIlnyr.mvc.services.INTERFACES;

import org.springframework.stereotype.Service;
import ru.kpfu.itis.SoftIlnyr.mvc.entities.Presence;

import java.util.List;

/**
 * Created by softi on 27.04.2016.
 */
public interface PresenceService {

    List<Presence> findAll();

    void addPresence(Presence presence);

    void update(Presence presence);
}
