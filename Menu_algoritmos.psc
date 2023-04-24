Funcion años_meses_dias (dias)
	Definir año,meses,dia Como Entero;
	Definir resultado1, resultado2, resultado3, resultado4 como real;
	resultado1 = dias mod 365;
	Si resultado1 = 0 Entonces
		año = dias / 365;
	SiNo
		resultado2 = dias - resultado1;
		año = resultado2 / 365; 
	Fin Si
	resultado3 = resultado1 mod 30;
	Si resultado3 = 0 Entonces
		meses = resultado1 / 30;
	SiNo
		resultado4 = resultado1 - resultado3;
		meses = resultado4 / 30;
	Fin Si
	dia = resultado3;
	Escribir "En ", dias, " dias", " hay ", año, " años, ", meses, " meses y ", dia, " dias";
	Esperar Tecla;
	Limpiar Pantalla;
Fin Funcion

Funcion  año_bisiesto ( año)
	Si (año mod 4 = 0 y año mod 100 <> 0) o (año mod 100 = 0 y año mod 400 = 0) Entonces
		Escribir "El año ", año, " es bisiesto";
	SiNo
		Escribir "El año ", año, " no es bisiesto";
	Fin Si
	Esperar Tecla;
	Limpiar Pantalla;
Fin Funcion

Funcion  cuadro_asteriscos ( num )
	Definir i, j Como Entero;
	Para i <- 1 Hasta num Con Paso 1 Hacer
		Escribir "*" Sin Saltar;
		Para j <- 1 Hasta num - 1 Con Paso 1 Hacer
			Si j < num -1 Entonces
				Escribir "*" Sin Saltar;
			SiNo
				Escribir "*";
			Fin Si
		Fin Para
	Fin Para
	Esperar Tecla;
	Limpiar Pantalla;
Fin Funcion

Funcion numero_caracteres ()
	Definir letra, palabra como texto;
	Definir i, cont, cant Como Entero;
	cont = 0;
	Escribir "Escriba una palabra o nombre";
	Leer palabra;
	cant = Longitud(palabra);
	Para i <- 0 Hasta cant - 1 Con Paso 1 Hacer
		cont = cont + 1;
	Fin Para
	Escribir "La cantidad de letras fue de: ", cont;
	Esperar Tecla;
	Limpiar Pantalla;
Fin Funcion

Funcion convertir_pesos ( peso)
	Definir conversion, moneda Como Real;
	Repetir
		Escribir "Elija la moneda a la cual desea convertir sus pesos:";
		Escribir "Opcion 1: Dolar a 4600";
		Escribir "Opcion 2: Euro a 5000";
		Escribir "Opcion 3: Libra a 5700";
		Escribir "Si desea salir dijite (0)";
		Leer moneda;
		Segun moneda Hacer
			1:
				conversion = peso / 4600;
				Escribir "Sus ", peso, " pesos, equivalen a ", redon(conversion), " en dolares";
			2:
				conversion = peso / 5000;
				Escribir "Sus ", peso, " pesos, equivalen a ", redon(conversion), " en euros";
			3:
				conversion = peso / 5700;
				Escribir "Sus ", peso, " pesos, equivalen a ", redon(conversion), " en libras";
			De Otro Modo:
				Escribir "Opcion no valida";
		Fin Segun
		Esperar Tecla;
		Limpiar Pantalla;
	Hasta Que moneda = 0;
Fin Funcion

Funcion tablas_multiplicar ( )
	Definir variable_3, i Como Real;
	Escribir "Dijite el numero a ver las tablas de multiplicar: ";
	Leer variable_3;
	Para i = 1 Hasta 15 Con Paso 1 Hacer
		Escribir variable_3 , "  Multiplicado por: " , i "  Es igual a:  " , variable_3 * i ;
	Fin Para
	Esperar Tecla;
	Limpiar Pantalla;
Fin Funcion

Funcion  notas_3_estudiantes ( )
	Definir nombre, apellido, edad Como Caracter;
	Definir nota como real;
	Definir j, k Como Entero;
	Escribir "Estudiantes del curso de Principios de Programacion";
	Para k <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "Dijite el nombre del estudiante :";
		leer nombre;
		Para j <- 1 Hasta 1 Con Paso 1 Hacer
			Escribir "Dijite el apellido: ";
			Leer apellido;
			Escribir "Dijite la edad: ";
			Leer edad;
			Escribir "Dijite la nota separado por (.): ";
			Leer nota;
			Escribir "El estudiante: " , nombre," " , apellido " tiene " , edad, " años, y su nota es: ", nota;
		Fin Para
		Esperar Tecla;
		Limpiar Pantalla;
	Fin Para
	Limpiar Pantalla;
Fin Funcion

Funcion dia_de_la_semana ( )
	Definir variable_2 Como Entero;
	Escribir "Dijite un numero entero entre 1 y 7: ";
	Leer variable_2;
	Segun variable_2 Hacer
		1:
			Escribir "Su numero corresponde al dia Lunes";
		2:
			Escribir "Su numero corresponde al dia Martes";
		3:
			Escribir "Su numero corresponde al dia Miercoles";
		4:
			Escribir "Su numero corresponde al dia Jueves";
		5:
			Escribir "Su numero corresponde al dia Viernes";
		6:
			Escribir "Su numero corresponde al dia Sabado";
		7:
			Escribir "Su numero corresponde al dia Domingo";
		De Otro Modo:
			Escribir "Numero no corresponde.";
	Fin Segun
	Esperar Tecla;
	Limpiar Pantalla;
Fin Funcion

Funcion partidos_colombia ( )
	Definir variable_1 Como Real;
	variable_1 <- (6*90);
	variable_1 <- variable_1/60;
	Escribir 'Colombia en 6 patidos jugo un total de: ',variable_1,' Horas.';
	Esperar Tecla;
	Limpiar Pantalla;
Fin Funcion

Funcion  intercambio_valores ( )
	Definir variable_1, variable_2, variable_3 Como Real;
	Escribir 'Dijiste las dos variables o numeros A y B: ';
	Leer variable_1,variable_2;
	Escribir 'La variable A es: ',variable_1,' Y la variable B es: ',variable_2;
	variable_3 <- variable_2;
	variable_2 <- variable_1;
	variable_1 <- variable_3;
	Escribir 'Al intercambiar las variables quedan: ';
	Escribir 'La variable A es: ',variable_1,' Y la variable B es: ',variable_2;
	Esperar Tecla;
	Limpiar Pantalla;
Fin Funcion

Algoritmo Menu_algoritmos
	Definir num, año Como Entero;
	Escribir "Menu de diferentes algoritmos by: Juan Esteban Bedoya";
	Definir Opcion_1 Como Entero;
	Repetir
		Escribir "Que opcion del menu desea ejecutar? ";
		Escribir "Opcion 1: Intercambio de valores";
		Escribir "Opcion 2: Horas de juego de Colombia en 6 partidos";
		Escribir "Opcion 3: Dia de la semana segun numero";
		Escribir "Opcion 4: Datos de 3 estudiantes";
		Escribir "Opcion 5: Tablas de multiplicar";
		Escribir "Opcion 6: Caracteres de una palabra";
		Escribir "Opcion 7: Convertidor monedas";
		Escribir "Opcion 8: Cuadro de Asteriscos";
		Escribir "Opcion 9: Año bisiesto";
		Escribir "Opcion 10: Años, meses y dias";
		Escribir "Opcion 0: Salir";
		Leer Opcion_1;
		Limpiar Pantalla;
		Segun Opcion_1 Hacer
			1:
				intercambio_valores;
			2:
				partidos_colombia;
			3:
				dia_de_la_semana;
			4:
				notas_3_estudiantes;
			5:
				tablas_multiplicar;
			6:
				numero_caracteres;
			7:
				Definir pesos Como Real;
				Escribir "Cuantos pesos desea convertir, sin puntos (.) ni comas (,):";
				Leer pesos;
				convertir_pesos(pesos) ;
			8:
				Escribir "Dijite un numero entero";
				Leer num;
				cuadro_asteriscos(num);
			9:
				Escribir "Dijite el año que desea validad";
				Leer año;
				año_bisiesto(año);
			10:
				Definir dias Como Real;
				Escribir "Dijite los dias";
				Leer dias;
				años_meses_dias(dias);
			De Otro Modo:
				Escribir "Opcion no valida";
		Fin Segun
	Hasta Que Opcion_1 = 0;
FinAlgoritmo
