/* METODO RESUMEN */ 

function montoPagar () {

    event.preventDefault();

let cantidad = parseInt(document.getElementById("input-cantidad").value);
let categoria = document.getElementById("select-tickets").value;

const valor = 200;
valorTotal = 0;

    if (cantidad > 0 && categoria > 0 && categoria <= 4) {

        /* CATEGORIA 1 - ESTUDIANTE */
        if (categoria == 1) {
            valorEntrada = valor * 0.2;
            valorTotal = valorEntrada * cantidad;

        /* CATEGORIA 2 - TRAINEE */    
        }else if (categoria == 2) {
            valorEntrada = valor * 0.5;
            valorTotal = valorEntrada * cantidad;
        
        /* CATEGORIA 3 - JUNIOR */    
        }else if (categoria == 3) {
            valorEntrada = valor * 0.85;
            valorTotal = valorEntrada * cantidad;

         /* CATEGORIA 4 - GENERAL */    
        
        } else if (categoria == 4) {
            valorEntrada = valor;
            valorTotal = valorEntrada * cantidad;
        }   

        } else {

                /*ALERTA ERROR DE LIBRERIA SWEETALERT2 */
                swal.fire({
                icon: 'error', 
                title: 'Atención!!!',
                text: 'Indique la cantidad y/o la categoria de las entradas.',
                width: '300px'
                });
            }  
    
    document.getElementById("input-total-pagar").value='Monto total a pagar: $' + valorTotal;
}

/* METODO BORRAR */

function borrar () {
    form.reset();
}