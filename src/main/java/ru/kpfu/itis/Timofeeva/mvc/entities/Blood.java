package ru.kpfu.itis.Timofeeva.mvc.entities;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by softi on 26.06.2016.
 */
@Entity
@Table(name = "blood_info", schema = "public", catalog = "quis_malum")
public class Blood {
    private int id;
    private Patient user;
    private Date date;
    private float sugar_level;
    private String description;

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "user_id_secuence")
    @SequenceGenerator(name = "user_id_secuence", sequenceName = "users_id_seq", allocationSize = 1)
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @ManyToOne(targetEntity = Patient.class)
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    public Patient getUser() {
        return user;
    }

    public void setUser(Patient user) {
        this.user = user;
    }

    @Basic
    @Column(name = "date")
    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Basic
    @Column(name = "sugar_level")
    public float getSugar_level() {
        return sugar_level;
    }

    public void setSugar_level(float sugar_level) {
        this.sugar_level = sugar_level;
    }

    @Basic
    @Column(name = "description")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
