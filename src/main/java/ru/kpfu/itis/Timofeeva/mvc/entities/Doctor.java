package ru.kpfu.itis.Timofeeva.mvc.entities;

import javax.persistence.*;
import java.util.List;

/**
 * Created by softi on 26.06.2016.
 */
@Entity
@Table(name = "doctors", schema = "public", catalog = "quis_malum")
public class Doctor {
    private int id;
    private User user;
    private List<Patient> patients;

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "doctor_id_secuence")
    @SequenceGenerator(name = "doctor_id_secuence", sequenceName = "doctorss_id_seq", allocationSize = 1)
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @OneToOne(targetEntity = User.class)
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @OneToMany(targetEntity = Patient.class, mappedBy = "doctor", fetch = FetchType.EAGER, cascade = CascadeType.REMOVE)
    public List<Patient> getPatients() {
        return patients;
    }

    public void setPatients(List<Patient> patients) {
        this.patients = patients;
    }
}
