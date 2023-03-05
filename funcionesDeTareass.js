//const fs=require('fs');
let autos = require('./autos');
let archivo={
    autos:autos,    
    leer:function () { 
        //return JSON.parse(autos);//JSON --> objeto literal
        return JSON.stringify(autos);// objeto literal -->JSON           
    },
    buscarAuto:function (a) {        
        let x=autos.filter(autos => { return autos.patente === a; } );
        if (x.length>0)
        return JSON.stringify(x);
        else 
        return null;
        },
    
    venderAuto:function(a){
        let k=this.buscarAuto(a);
        k.vendido=!0;
        return k;
    }, 

    
    
    /*venderAuto:function (a) {
            let k=autos;        
            for (var i = 0; i < k.length; i++) {
                if(k[i].patente===a && k[i]=== false){                    
                        k[i].vendido = true;                    
                } else{
                    return "el auto fue vendido antes";
                }           
               }        
              fs.writeFileSync(__dirname +'/tareas.json', JSON.stringify(k));
            return k;     
             
        }, */         
                   
    autosParaLaVenta:function (autos) {
      
            return autos = this.autos.filter(autos => { return autos.vendido === false; })
                      },
                  
    autosNuevos: function(){
                        let k=this.autosParaLaVenta(autos);
                        return autos = k.filter(autos => { return autos.km <100; })
                   },           
    
    autos0KM:function(){
        let a0KM=[];
           let k=this.autosParaLaVenta(autos);
           for(i=0;i<k.length;i++){
                if(k[i].km<100 && k[i].vendido===false){
                        a0KM.push(k[i]);
                       
                }
           }
           return a0KM;
    },
    
}


module.exports = archivo;



//funcionan en play ground

/* buscarAuto: function (patente) {
                        for (let i = 0; i < autos.length; i++) {
                                if (autos[i].patente === patente) {
                                        return autos[i]
                                }else{
                                        return null;
                        }
                    }
                },*/


/*venderAuto:function (a) {
                    let k=this.buscarAuto(a);        
                    k.vendido = true;
                    return k;
            },  */




            /*const autos=require("./autos");
            let concesionaria={
               autos:autos,
            
               buscarAuto:function(patente){for(let auto of autos){if(auto.patente==patente){return auto}}return null},
               
               venderAuto:function(patente){auto=this.buscarAuto(patente);auto.vendido=!0},
               
               autosParaLaVenta:function(){let autoParaVender=autos.filter(function(auto){return auto.vendido==!1});return autoParaVender},
            
               autos0KM:function(){let autoCeroKM=this.autosParaLaVenta().filter((auto)=>{return auto.km<100});return autoCeroKM},
               
               listaDeVentas:function(){let precios=[];autos.forEach(function(auto){if(auto.vendido==!0){return precios.push(auto.precio)}});return precios},
               
               totalDeVentas:function(){let sumatoria=this.listaDeVentas().reduce(function(acum,num){return acum+num},0);return sumatoria},
               
               puedeComprar:function(auto,persona){return((auto.precio/auto.cuotas)<persona.capacidadDePagoEnCuotas&&auto.precio<persona.capacidadDePagoTotal)},
               
               autosQuePuedeComprar(persona){autosQPuede=autos.filter((auto)=>this.puedeComprar(auto,persona));return autosQPuede}}*/