<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mostrar Factura</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        function mostrarFechaEmision(){
            var fecha= new Date();
            var opciones={year:"numeric",month:"long", day:"numeric"};
            var FechaFormateada=fecha.toLocaleDateString("es-ES",opciones);
            document.getElementById("fecha-emision").innerText=FechaFormateada;

            window.onload=mostrarFechaEmision;
        }
    </script>
</head>
<body>
<div class="min-h-screen flex items-center justify-center w-full">
    <section class="bg-white dark:bg-gray-900">
        <div class="py-8 px-4 mx-auto max-w-2xl lg:py-16">
            <h1 class="mb-4 text-xl font-bold text-gray-900 dark:text-white">Factura Comercial</h1>
            <h2 class="mb-4 text-xl font-bold text-gray-900 dark:text-white">Datos del Cliente:</h2>
            <p class="mb-2 text-sm font-medium text-gray-900 dark:text-white">Nombre del Cliente: ${param.nombre}</p>
            <p class="mb-2 text-sm font-medium text-gray-900 dark:text-white">NRC: ${param.nrc}</p>
            <p class="mb-2 text-sm font-medium text-gray-900 dark:text-white">Descripción de la Factura: ${param.descripcion}</p>

            <h2 class="mb-4 text-xl font-bold text-gray-900 dark:text-white">Productos:</h2>
            <table class="table-auto">
                <thead>
                <tr>
                    <th class="px-4 py-2 bg-gray-200 text-gray-900">Nombre del Producto</th>
                    <th class="px-4 py-2 bg-gray-200 text-gray-900">Precio</th>
                    <th class="px-4 py-2 bg-gray-200 text-gray-900">Cantidad</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="border px-4 py-2 text-white" >${param.nombreproducto}</td>
                    <td class="border px-4 py-2 text-white">${param.precio}</td>
                    <td class="border px-4 py-2 text-white">${param.cantidad}</td>

                </tr>
                </tbody>
            </table>
            <div class="mt-4">
                <p class="text-lg font-blod text-gray-900 dark:text-white">Total a Pagar:${param.precio*param.cantidad}</p>
                <p class="text-lg font-blod text-gray-900 dark:text-white">Fecha de Emisión:<span id="fecha-emison"></span> </p>
            </div>
        </div>
    </section>
</div>
</body>
</html>
