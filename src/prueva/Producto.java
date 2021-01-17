package prueva;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_productos")
public class Producto implements Serializable {

    @Id
    @GeneratedValue(strategy=IDENTITY)
    private int id_producto;
    private int id_categoria;
    private int id_marca;
    private String modelo;
    private int existencias;
    private String descripcion;
    private String codigo_barras;
    private String detalles_adicionales;
    
    @ManyToOne
    private Categoria categoria;

    public Producto() {
    }

    public Producto(int id_categoria, int id_marca, String modelo, int existencias, String descripcion, String codigo_barras, String detalles_adicionales) {
        this.id_categoria = id_categoria;
        this.id_marca = id_marca;
        this.modelo = modelo;
        this.existencias = existencias;
        this.descripcion = descripcion;
        this.codigo_barras = codigo_barras;
        this.detalles_adicionales = detalles_adicionales;
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public int getId_categoria() {
        return id_categoria;
    }

    public void setId_categoria(int id_categoria) {
        this.id_categoria = id_categoria;
    }

    public int getId_marca() {
        return id_marca;
    }

    public void setId_marca(int id_marca) {
        this.id_marca = id_marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public int getExistencias() {
        return existencias;
    }

    public void setExistencias(int existencias) {
        this.existencias = existencias;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getCodigo_barras() {
        return codigo_barras;
    }

    public void setCodigo_barras(String codigo_barras) {
        this.codigo_barras = codigo_barras;
    }

    public String getDetalles_adicionales() {
        return detalles_adicionales;
    }

    public void setDetalles_adicionales(String detalles_adicionales) {
        this.detalles_adicionales = detalles_adicionales;
    }

}
