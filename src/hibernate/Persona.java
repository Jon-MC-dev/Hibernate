package hibernate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Persona")
public class Persona {

    @Id
    @Column(name = "idPersona")
    private int idPersona;
    @Column(name = "Nombre")
    private String Nombre;
    @Column(name = "ApellidoM")
    private String ApellidoM;
    @Column(name = "ApellidoP")
    private String ApellidoP;

    public Persona() {
    }

    public Persona(int idPersona, String Nombre, String ApellidoM, String ApellidoP) {
        this.idPersona = idPersona;
        this.Nombre = Nombre;
        this.ApellidoM = ApellidoM;
        this.ApellidoP = ApellidoP;
    }

    public int getIdPersona() {
        return idPersona;
    }

    public void setIdPersona(int idPersona) {
        this.idPersona = idPersona;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellidoM() {
        return ApellidoM;
    }

    public void setApellidoM(String ApellidoM) {
        this.ApellidoM = ApellidoM;
    }

    public String getApellidoP() {
        return ApellidoP;
    }

    public void setApellidoP(String ApellidoP) {
        this.ApellidoP = ApellidoP;
    }

}
