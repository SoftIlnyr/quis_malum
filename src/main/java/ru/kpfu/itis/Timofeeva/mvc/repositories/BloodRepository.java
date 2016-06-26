package ru.kpfu.itis.Timofeeva.mvc.repositories;

import org.hibernate.metamodel.source.annotations.JPADotNames;
import org.springframework.data.jpa.repository.JpaRepository;
import ru.kpfu.itis.Timofeeva.mvc.entities.Blood;

/**
 * Created by softi on 26.06.2016.
 */
public interface BloodRepository extends JpaRepository<Blood, Integer> {

}
