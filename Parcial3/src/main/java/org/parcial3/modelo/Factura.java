package org.parcial3.modelo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Factura {
    private int folio;
    private String descripcion;
    private Date fecha;
    private Cliente cliente;
    private ItemFactura[] items;
    private int indiceItems;
    public static final int MAX_ITEMS = 12;
    private static int ultimoFolio;

    public Factura(String descripcion, Cliente cliente) {
        this.descripcion = descripcion;
        this.cliente = cliente;
        this.items = new ItemFactura[12];
        this.folio = ++ultimoFolio;
        this.fecha = new Date();
    }

    public void addItemFactura(ItemFactura item) {
        if (this.indiceItems < 12) {
            this.items[this.indiceItems++] = item;
        }

    }

    public float calcularTotal() {
        float total = 0.0F;
        ItemFactura[] var5;
        int var4 = (var5 = this.items).length;

        for(int var3 = 0; var3 < var4; ++var3) {
            ItemFactura item = var5[var3];
            if (item != null) {
                total += item.calcularImporte();
            }
        }

        return total;
    }

    public String generarDetalle() {
        StringBuilder sb = new StringBuilder("Factura N : ");
        sb.append(this.folio).append("\nCliente: ").append(this.cliente.getNombre()).append("\t NRC: ").append(this.cliente.getNrc()).append("\n Descripcion ").append(this.descripcion).append("\n");
        SimpleDateFormat df = new SimpleDateFormat("dd 'de' MMMM, yyyy");
        sb.append("Fecha Emision: ").append(df.format(this.fecha)).append("\n").append("\n#\tNombre\t$\tCant.\tTotal\n");
        ItemFactura[] var6;
        int var5 = (var6 = this.items).length;

        for(int var4 = 0; var4 < var5; ++var4) {
            ItemFactura item = var6[var4];
            if (item != null) {
                sb.append(item.getProducto().getCodigo()).append("\t").append(item.getProducto().getNombre()).append("\t").append(item.getProducto().getPrecio()).append("\t").append(item.getCantidad()).append("\t").append(item.calcularImporte()).append("\n");
            }
        }

        sb.append("\n Total:").append(this.calcularTotal());
        return sb.toString();
    }

    public int getFolio() {
        return this.folio;
    }

    public void setFolio(int folio) {
        this.folio = folio;
    }

    public String getDescripcion() {
        return this.descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Date getFecha() {
        return this.fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Cliente getCliente() {
        return this.cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public ItemFactura[] getItems() {
        return this.items;
    }

    public void setItems(ItemFactura[] items) {
        this.items = items;
    }

    public int getIndiceItems() {
        return this.indiceItems;
    }

    public void setIndiceItems(int indiceItems) {
        this.indiceItems = indiceItems;
    }

    public static int getUltimoFolio() {
        return ultimoFolio;
    }

    public static void setUltimoFolio(int ultimoFolio) {
        Factura.ultimoFolio = ultimoFolio;
    }

    public static int getMaxItems() {
        return 12;
    }
}
