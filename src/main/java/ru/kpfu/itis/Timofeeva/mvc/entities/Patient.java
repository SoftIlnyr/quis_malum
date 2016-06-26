package ru.kpfu.itis.Timofeeva.mvc.entities;

import javax.persistence.*;
import java.util.List;

/**
 * Created by softi on 26.06.2016.
 */
@Entity
@Table(name = "patients", schema = "public", catalog = "quis_malum")
public class Patient {
    private int id;
    private User user;
    private Doctor doctor;
    List<Blood> bloodList;

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "patient_id_secuence")
    @SequenceGenerator(name = "patient_id_secuence", sequenceName = "patients_id_seq", allocationSize = 1)
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @ManyToOne(targetEntity = Doctor.class)
    @JoinColumn(name = "doctor_id", referencedColumnName = "id")
    public Doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }

    @OneToOne(targetEntity = User.class)
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @OneToMany(targetEntity = Blood.class, mappedBy = "user", fetch = FetchType.EAGER, cascade = CascadeType.REMOVE)
    public List<Blood> getBloodList() {
        return bloodList;
    }

    public void setBloodList(List<Blood> bloodList) {
        this.bloodList = bloodList;
    }

    @Override
    public String toString() {
        return "Patient{" +
                "user=" + user +
                ", doctor=" + doctor +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Patient patient = (Patient) o;

        if (user != null ? !user.equals(patient.user) : patient.user != null) return false;
        return doctor != null ? doctor.equals(patient.doctor) : patient.doctor == null;

    }

    @Override
    public int hashCode() {
        int result = user != null ? user.hashCode() : 0;
        result = 31 * result + (doctor != null ? doctor.hashCode() : 0);
        return result;
    }
}
