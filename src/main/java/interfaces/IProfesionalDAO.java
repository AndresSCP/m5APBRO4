package interfaces;
import clases.Profesional; 

import java.util.List;


public interface IProfesionalDAO {
    public void agregarProfesional(Profesional profesional);
    public void actualizarProfesional(Profesional profesional);
    public void eliminarProfesional(int id);
    public Profesional obtenerProfesionalPorId(int id);
    public List<Profesional> obtenerTodosLosProfesionales();
}