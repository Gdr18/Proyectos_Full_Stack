import moment from 'moment';


const comentarios = ['Excelente elección!', 'No se arrepentirá', 'Perfecto!', 'Aham', 'Está riquísimo', 'Qué delicia!', 'Muy bien'];

//Variables Comida y Cena
const principalesComida = {
    'pollo asado': 7.5,
    'chuletas de cerdo': 8,
    'chuletas de cordero': 14,
    'lomo adobado': 7,
    'entrecot': 12
};

const acompañamientosComida = {
    'patatas fritas': 2,
    'patata asada': 2.5,
    'ensalada': 2.5,
    'croquetas': 2,
    'huevo frito': 2
};

//Variables Desayuno
const principalesDesayuno = {
    'tostadas francesas': 8,
    'cereales': 6,
    'salchichas': 7.5,
    'tortitas': 7
};

const acompañamientosDesayuno = {
    'zumo': 3,
    'yogurt': 2,
    'fruta': 2.5
};

//Condicional Horarios
if(moment().format('HH') >= 7 && moment().format('HH') < 11) {
    menu(principalesDesayuno, acompañamientosDesayuno);
} else if (moment().format('HH') >= 12 && moment().format('HH') < 16) {
    menu(principalesComida, acompañamientosComida);
} else if (moment().format('HH') >= 19 && moment().format('HH') < 23) {
    for(var valores in principalesComida) {
        principalesComida[valores] += 2;
    };

    for(var valores in acompañamientosComida) {
        acompañamientosComida[valores] += 1;
    };
    
    menu(principalesComida, acompañamientosComida);
} else {
    alert('Ahora mismo nuestro restaurante está cerrado. Le/s esperaremos encantad@s en cualquiera de nuestros horarios:\nDesayunos:\n   7:00 - 11:00\nComidas:\n   12:00 - 16:00\nCenas:\n   19:00 - 23:00')
};

//Función Madre
function menu(principales, acompañamientos) {
    let total = 0;
    let counter = 0;

    //Principal
    function principalFuncion() {
        const eleccionPrincipal = prompt(`Bienvenid@/s a Bottega Dinner! Introduzca un plato principal de los siguientes: ${Object.keys(principales).join(', ')}.\nPara salir del menú pulse 'Cancelar'.`);
        
        if (eleccionPrincipal === null) {       
            return alert(`Le estaremos esperando! ${String.fromCodePoint(128522)}`)
        } else if (principales[eleccionPrincipal.toLowerCase()] !== undefined) {
            alert(comentarios[Math.floor(Math.random() * comentarios.length)]);
            alert(`El precio es ${principales[eleccionPrincipal.toLowerCase()]}€`);
            total += principales[eleccionPrincipal.toLowerCase()];
            return acompañamientoFuncion();
        } else {
            alert('Parece que ha habido un error de escritura... Vuelva a intentarlo.')
            return principalFuncion();
        };
    };

    //Acompañamientos
    function acompañamientoFuncion() {
        const eleccionAcompañamiento = prompt(`Esta es la lista de los acompañamientos: ${Object.keys(acompañamientos).join(', ')}.\nIntroduzca el acompañamiento que desee.\nPara salir del menú pulse 'Cancelar'.`);
        
        if (eleccionAcompañamiento === null) {
            return alert(`Le estaremos esperando! ${String.fromCodePoint(128522)}`)
        } else if (acompañamientos[eleccionAcompañamiento.toLowerCase()] !== undefined) {
            alert(comentarios[Math.floor(Math.random() * comentarios.length)]);
            alert(`El precio del acompañamiento es ${acompañamientos[eleccionAcompañamiento.toLowerCase()]}€`);
            total += acompañamientos[eleccionAcompañamiento.toLowerCase()];
            counter += 1;
            counter < 2 ? preguntaAcompañamientos() : alert(`El total es ${total}€. Gracias por su visita! ${String.fromCodePoint(128522)}`);
        } else {
            alert('Parece que ha habido un error de escritura... Vuelva a intentarlo.')
            return acompañamientoFuncion();
        };
    };

    //Pregunta Acompañamientos
    function preguntaAcompañamientos() {
        const confirmAcompañamientos = confirm('Va a querer algún acompañamiento más?');

        confirmAcompañamientos === true ? acompañamientoFuncion() : alert(`El total es ${total}€. Gracias por su visita! ${String.fromCodePoint(128522)}`);
    };


    return principalFuncion()
};