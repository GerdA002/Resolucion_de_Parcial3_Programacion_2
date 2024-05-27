<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Crear Factura</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<div class="min-h-screen flex items-center justify-center w-full">
  <section class="bg-white dark:bg-gray-900">
    <div class="py-8 px-4 mx-auto max-w-2xl lg:py-16">
      <h2 class="mb-4 text-xl font-bold text-gray-900 dark:text-white">Generar Factura</h2>
      <form id="formulariofactura" action="MostrarFactura.jsp" method="post">
        <div class="grid gap-4 sm:grid-cols-2 sm:gap-6">
          <div class="sm:col-span-2">
            <label for="nombre" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Nombre del Cliente:</label>
            <input type="text" name="nombre" id="nombre" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" placeholder="Escriba el nombre del cliente" required="">
          </div>
          <div class="sm:col-span-2">
            <label for="nrc" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">NRC:</label>
            <input type="text" name="nrc" id="nrc" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" placeholder="Escriba el NRC" required="">
          </div>
          <div class="sm:col-span-2">
             <label for="descripcion" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Descripcion de la Factura</label>
             <input type="text" name="descripcion" id="descripcion"  class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-primary-500 focus:border-primary-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" placeholder="Your description here">

          </div>

          <div id="productos">
            <div class="producto">
                <div class="sm:col-span-2">
                    <label for="nombreproducto" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Nombre del Producto:</label>
                    <input type="text" name="nombreproducto" id="nombreproducto" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" placeholder="Escriba el nombre del producto" required="">
                </div>
                <div class="w-full">
                     <label for="precio" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Precio del Producto:</label>
                    <input type="text" name="precio" id="precio" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" placeholder="Ingrese el precio del producto" required="">
                </div>
                <div class="w-full">
                    <label for="cantidad" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Cantidad:</label>
                    <input type="text" name="cantidad" id="cantidad" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" placeholder="Cantidad del producto" required="">
                </div>
            </div>
          </div>
        </div>
        <button type="button" id="agregarpruducto" class="mt-4 sm:mt-6 text-sm font-medium text-center text-white bg-primary-700 rounded-lg focus:ring-4 focus:ring-primary-200 dark:focus:ring-primary-900 hover:bg-primary-800">
            Agregar Nuevo Producto
        </button>
        <button type="submit" id="crearFactura" class="inline-flex items-center px-5 py-2.5 mt-4 sm:mt-6 text-sm font-medium text-center text-white bg-primary-700 rounded-lg focus:ring-4 focus:ring-primary-200 dark:focus:ring-primary-900 hover:bg-primary-800">
         Crear Factura
        </button>
      </form>
    </div>
  </section>
    <br/>
</div>
<script>
    let productconta=1;

    document.getElementById("agregarpruducto").addEventListener("click",function (){7
        //clonando el primer producto
        const primerProducto=document.querySelector(".producto");
        const nuevoProducto=primerProducto.cloneNode(true);

        //modificando los elementos clonados
        nuevoProducto.querySelectorAll("input").forEach(input =>{
            const nuevoNombre=input.getAttribute("nombre")+"_"+productconta;
            const nuevoid=input.getAttribute("id")+"_"+productconta;
            input.setAttribute("nombre",nuevoNombre);
            input.setAttribute("id",nuevoid);
        })
        productconta++;

        document.getElementById("productos").appendChild(nuevoProducto)

    })
</script>
</body>
</html>