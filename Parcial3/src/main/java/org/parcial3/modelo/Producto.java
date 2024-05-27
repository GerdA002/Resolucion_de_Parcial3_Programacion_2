package org.parcial3.modelo;

public class Producto {
    private int codigo;
    private String nombre;
    private float precio;
    private static int ultimocodigo;

    public Producto() {
        this.codigo = ++ultimocodigo;
    }

    public int getCodigo() {
        return this.codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return this.nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public float getPrecio() {
        return this.precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public static int getUltimocodigo() {
        return ultimocodigo;
    }

    public static void setUltimocodigo(int ultimocodigo) {
        Producto.ultimocodigo = ultimocodigo;
    }
}
