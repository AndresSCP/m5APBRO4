package clases;

public class Profesional extends Usuario {
    private int telefono;
    private String tituloProfesional;
    private String proyecto;
    
    public Profesional(Integer runUsuario, String nombreUsuario, String apellidoUsuario, 
                       String fechaNacimientoUsuario, int telefono, String tituloProfesional, String proyecto) {
        super(runUsuario, nombreUsuario, apellidoUsuario, fechaNacimientoUsuario);
        this.telefono = telefono;
        this.tituloProfesional = tituloProfesional;
        this.proyecto = proyecto;
    }
    
    public Profesional() {
        super();
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getTituloProfesional() {
        return tituloProfesional;
    }

    public void setTituloProfesional(String tituloProfesional) {
        this.tituloProfesional = tituloProfesional;
    }

    public String getProyecto() {
        return proyecto;
    }

    public void setProyecto(String proyecto) {
        this.proyecto = proyecto;
    }

    @Override
    public String toString() {
        return "Profesional{" +
                "id=" + this.getId() +
                ", runUsuario=" + this.getRunUsuario() +
                ", nombreUsuario='" + this.getNombreUsuario() + '\'' +
                ", apellidoUsuario='" + this.getApellidoUsuario() + '\'' +
                ", fechaNacimientoUsuario='" + this.getFechaNacimientoUsuario() + '\'' +
                ", idUsuario=" + this.getIdUsuario() +
                ", telefono=" + telefono +
                ", tituloProfesional='" + tituloProfesional + '\'' +
                ", proyecto='" + proyecto + '\'' +
                '}';
    }
}
