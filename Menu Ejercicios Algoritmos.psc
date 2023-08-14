//Funciones
Funcion cont<-contarcar(cadenar, espacios)
	Definir cont, cant,i Como Entero;
	cant=0;
	Si espacios="s" Entonces
		cont=Longitud(cadenar);
	SiNo
		Si espacios="n" Entonces
			Para i=1 Hasta Longitud(cadenar) Con Paso 1 Hacer
				Si Subcadena(cadenar,i,i)<>" " Entonces
					cant=cant+1;
				FinSi
			Fin Para
			cont=cant;
		FinSi
	FinSi	
FinFuncion

Funcion pal<-verPal(palabra)
	Definir pal, arbalap Como Caracter;
	Definir i Como Entero;
	arbalap="";
	Para i=Longitud(palabra) Hasta 0 Con Paso -1 Hacer
		arbalap=arbalap+Subcadena(palabra,i,i);
	Fin Para	
	Si palabra=arbalap Entonces
		pal="Es Palíndromo";
	SiNo
		pal="No es Palíndromo";
	FinSi
FinFuncion

Funcion cambio<-cambioMoneda(pesos,divisa)
	Definir moneda, resto, fraccion Como Real;
	Definir cambio, substringfraccion, substringmoneda, nmoneda, nmonedap, nfraccion, nfraccionp Como Caracter;
	Si divisa=1 Entonces
		moneda=3840;
		nmoneda="dolar";
		nmonedap="dolares";
		nfraccion="centavo";
		nfraccionp="centavos";
	FinSi
	Si divisa=2 Entonces
		moneda=4516;
		nmoneda="euro";
		nmonedap="euros";
		nfraccion="céntimo";
		nfraccionp="céntimos";
	FinSi
	Si divisa=3 Entonces
		moneda=4967;
		nmoneda="libra";
		nmonedap="libras";
		nfraccion="penique";
		nfraccionp="peniques";
	FinSi
	resto=pesos%moneda;
	fraccion=(resto/moneda)*100;
	Si trunc(pesos/moneda)>1 Entonces
		substringmoneda=ConvertirATexto(trunc(pesos/moneda))+" "+nmonedap;
	SiNo
		Si trunc(pesos/moneda)=0 Entonces
			substringmoneda="";
		SiNo
			substringmoneda=ConvertirATexto(trunc(pesos/moneda))+" "+nmoneda;
		Fin Si		
	Fin Si
	Si trunc(fraccion)>1 Entonces
		Si trunc(pesos/moneda)=0 Entonces
			substringfraccion=ConvertirATexto(trunc(fraccion))+" "+nfraccionp;
		SiNo
			substringfraccion=" con "+ConvertirATexto(trunc(fraccion))+" "+nfraccionp;
		Fin Si
		
	SiNo
		Si trunc(fraccion)=0 Entonces
			substringfraccion="";
		SiNo
			substringfraccion=" con "+ConvertirATexto(trunc(fraccion))+" "+nfraccion;
		Fin Si		
	Fin Si		
	cambio = "$" + ConvertirATexto(pesos) + " COP = " + substringmoneda + substringfraccion;
FinFuncion


//--Fin Funciones
Algoritmo Ejercicios
	//Ejercicios realizados por Byron Villarreal	
	//Definición de variables
	Definir A, B, op, num, tnum, mults, edad, estudiantes, i, c, numa, ia, j, numar, ir, jr, año, cdias, años, meses, dias, mdias, divisa Como Entero;		
	Definir pausa, dia, nombre, apellido, mitexto, Line,cc, ccaracter, Linea, aster, asterr, palabra, espacios, palabromo Como Caracter;	
	Definir nota, pesos Como Real;
	//**********************
	//Inicialización de variables
	op=0;	
	edad=0;	
	mitexto="";
	aster="";
	asterr="";
	Line="*6323227272232L*7223227272232L*2322232223222322322L*7272722322412L*6372542322214L*23272222232322223L*7722222372232L*6822222372232L";	
	//**********************
	Mientras op<>14 Hacer	
		Escribir("***** Ejercicios *****");
		Escribir("1.Intercambiar valores de A y B");
		Escribir("2.Horas jugadas");
		Escribir("3.Días de la semana");
		Escribir("4.Datos 3 estudiantes");
		Escribir("5.Tablas de multiplicar");
		Escribir("6.Cuadrado asteríscos");
		Escribir("7.Recuadro asteríscos");
		Escribir("8.Bisiesto");
		Escribir("9.Años,Meses,días");
		Escribir("10.Contar Caractéres");
		Escribir("11.Palíndromo");
		Escribir("12.Convertir Pesos a:");
		Escribir("13.Acera de");
		Escribir("14.Salir");
		Escribir ("Ingrese número del ejercicio: ");
		Leer op;
		Segun op Hacer
			1:
				Escribir("*** Ejercicio 1 Intercambio de valores ***");
				Escribir("Ingrese valor de A y B: ");
				Leer A, B;
				A=A+B;
				B=A-B;
				A=A-B;
				Escribir("El valor de A ahora es: "),A;
				Escribir("El valor de B ahora es: "),B;
				Escribir("Presione Enter para continuar...");
			2:
				Escribir("*** Ejercicio 2 Horas jugadas ***");
				Escribir("Colombia en los 6 partidos jugados suma un total de 9 Hrs, por que: ");
				Escribir("un partido dura 90 m Entonces: 6x90=540m ");
				Escribir ("1 h tiene 60 minutos entonces 540m/60m=9");
				Escribir("Presione Enter para continuar...");
			3:
				Escribir("*** Ejercicio 3 Días de la semana ***");
				Escribir("Ingrese número: ");
				Leer num;
				Si num>0 y num<=7 Entonces
					Si num=1 Entonces
						dia="Lunes";
					SiNo
						Si num=2 Entonces
							dia="Martes";
						SiNo
							Si num=3 Entonces
								dia="Miercoles";
							SiNo
								Si num=4 Entonces
									dia="Jueves";
								SiNo
									Si num=5 Entonces
										dia="Viernes";
									SiNo
										Si num=6 Entonces
											dia="Sabado";
										SiNo
											Si num=7 Entonces
												dia="Domingo";
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
					Escribir dia;
				SiNo
					Escribir("No corresponde a un día de la semana, ingrese número entre 1 y 7");
				FinSi
				Escribir("Presione Enter para continuar...");
			4:
				Escribir("*** Ejercicio 4 Datos Estudiantes ***");
				estudiantes=0;
				Repetir
					Escribir("Favor ingrese datos estudiantes: Nombre, Apellido, edad y nota: ");
					Leer nombre, apellido, edad, nota;
					estudiantes=estudiantes + 1;
				Hasta Que estudiantes>=3;
				Escribir("Presione Enter para continuar...");
			5:
				Escribir("*** Ejercicio 5 Tablas de Multiplicar ***");
				mults=1;
				Escribir("Ingrese tabla del : ");
				Leer tnum;
				Repetir
					Escribir tnum, ("x"), mults, ("="), mults*tnum;
					mults=mults+1;
				Hasta Que mults>15				
				Escribir("Presione Enter para continuar...");
			6:
				Escribir("*** Ejercicio 6 Cuadro asteriscos ***");
				aster="";
				Escribir("Ingrese número de asteriscos: ");
				Leer numa;
				Para ia=1 Hasta numa Con Paso 1 Hacer
					Para j=1 Hasta numa Con Paso 1 Hacer
						aster=aster+"*";
					Fin Para
					Escribir aster;
					aster="";
				Fin Para
				Escribir aster;
				Escribir("Presione Enter para continuar...");
			7:
				Escribir("*** Ejercicio 7 Recuadro asteriscos ***");
				asterr="";
				Escribir("Ingrese número de asteriscos: ");
				Leer numar;
				Para ir=1 Hasta numar Con Paso 1 Hacer
					Para jr=1 Hasta numar Con Paso 1 Hacer
						Si ir=1 o ir=numar o jr=1 o jr=numar Entonces
							asterr=asterr+"*";
						SiNo
							asterr=asterr+" ";
						FinSi			
					Fin Para
					Escribir asterr;
					asterr="";
				Fin Para
				Escribir asterr;
				Escribir("Presione Enter para continuar...");
			8:
				Escribir("*** Ejercicio 8 Bisiesto ***");
				Escribir("Ingrese año: ");
				Leer año;
				Si (año%100=0 y año%400=0) o (año%100<>0 y año%4=0) Entonces
					Escribir("El año "),año, (" es Bisiesto");
				SiNo
					Escribir("El año "),año, (" No es Bisiesto");
				FinSi	
				Escribir("Presione Enter para continuar...");
			9:
				Escribir("*** Ejercicio 9 Años, meses, días ***");
				Escribir("Ingrese cantidad de días: ");
				Leer cdias;
				mdias=cdias%365;
				años=(cdias-mdias)/365;
				meses=(mdias-(mdias%30))/30;
				dias=cdias-((años*365)+(meses*30));
				Escribir cdias, " dias ","son: ",años, " años ", meses, " meses ", dias, " dias"; 
				Escribir("Presione Enter para continuar...");
			10:
				Escribir("*** Ejercicio 10 Conteo de caracteres ***");
				espacios="";
				Escribir("Ingrese cadena: ");
				Leer palabra;
				Mientras espacios<>"s" y espacios<>"n" Hacer	
					Escribir("Desea incluír en el conteo espacios en blanco?..s/n: ");
					Leer espacios;
				Fin Mientras
				Escribir contarcar(palabra,espacios);	
				Escribir("Presione Enter para continuar...");
			11:
				Escribir("*** Ejercicio 11 Palindromo ***");
				Escribir("Ingrese cadena: ");
				Leer palabromo;	
				Escribir verPal(palabromo);	
				Escribir("Presione Enter para continuar...");
			12:
				Escribir("*** Ejercicio 12 Cambio de moneda ***");
				divisa=0;
				Escribir("Ingrese pesos COP: ");
				Leer pesos;
				Escribir("*** Tipos de Divisa ***");
				Escribir("1.Dolar ($3840)");
				Escribir("2.Euro ($4516)");
				Escribir("3.Libra ($4967)");
				Mientras divisa<1 o divisa>3 Hacer	
					Escribir("Ingrese opción para el cambio: ");
					Leer divisa;
				Fin Mientras	
				Escribir cambioMoneda(pesos,divisa);	
				Escribir("Presione Enter para continuar...");
			13:
				Escribir("*** Ejercicio 13 Acerca de ***")
				i=-1
				Linea=""
				ccaracter="";
				Mientras i<Longitud(Line) Hacer
					i=i+1;
					cc=Subcadena(Line,i,i);
					Si cc<>"L" Entonces		
						Si cc=" " o cc="*" Entonces
							ccaracter=cc;
						SiNo
							c=1;
							Repetir
								Linea=Linea+ccaracter;
								c=c+1;
							Hasta Que c>ConvertirANumero(cc)
							Si ccaracter=" " Entonces
								ccaracter="*";
							SiNo
								Si ccaracter="*" Entonces
									ccaracter=" ";
								FinSi
							FinSi			
						FinSi
					SiNo
						Escribir Linea;
						Linea="";
					FinSi
				Fin Mientras	
				Escribir("Presione Enter para continuar...");
			De Otro Modo:
				Si op<>14 Entonces			
					Escribir("Opción inexistente, favor digite ejercicios que esten dentro del menú");
				FinSi
		Fin Segun
		Si op<>14 Entonces
			leer pausa;
		FinSi		
	FinMientras
FinAlgoritmo
