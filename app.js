let funciones = require('./funcionesDeTareass');

switch (process.argv[2]) {
    case 'listar':
      console.log(funciones.leer());           
      break;
    case 'buscarAuto':
        console.log(funciones.buscarAuto(process.argv[3]));        
        break;
    case 'vender':
          console.log(funciones.venderAuto(process.argv[3]));           
          break;
    case 'PorVender':
            console.log(funciones.autosParaLaVenta());           
            break;
    case 'nuevos':
            console.log(funciones.autosNuevos());           
            break;
    
    
    case 'crear':
       console.log(funciones.crear({titulo: process.argv[3], estado: 'pendiente' }));     
      break;
   
    

    case 'eliminar':
        console.log(funciones.eliminar(process.argv[3]));           
        break;

    

    case undefined:
        console.log('Atencion - Tienes que pasar una acción');
      break;    
    default:
        
        console.log('No entiendo que quieres hacer');    
  }