var marca = $.context.solicitud.cotizacion.marca;

if(marca == "Toyota" || marca == "Mitsubishi" || marca == "Ferrari") {
    $.context.solicitud.cotizacion.precio = "900";
} else {
    $.context.solicitud.cotizacion.precio = "500";
}