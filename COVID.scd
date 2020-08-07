/*
Sonificación cifras COVID-19 en México (marzo-junio 2020)
Mariana Vázquez Esponda
*/

//======================================================
(
s.boot;

// Abre el archivo con las cifras llamado "COVID.csv" (el archivo CSV debe estar en la misma carpeta que este para que el siguiente comando funcione correctamente)
~path = thisProcess.nowExecutingPath.dirname +/+"COVID.csv";

x = CSVFileReader.read(~path,true).postcs;
)

// El primer renglón contiene los nombres de las columnas
x[0];

// Quitamos el primer renglón de los títulos
x = x[1..x.size-1];

//El renglón 32 tiene las cifras nacionales que quitaré para tener mayores contrastes entre los estados y que no se dispare la última nota
x[32];

//voltea la lista
x = x[33..x.size-33];

x[0];

// Quitamos el primer renglón de nacional
x = x[1..x.size-1];

//la primera fila de la lista es ahora Zacatecas [0] y la última Aguascalientes [31]
x[0];
x[31];

//===================================================================
// Traducción del CSV a una lista de arreglos y preparación de datos
//===================================================================
/*
columna 0 =  numeración de los estados
columna 1 = población total de los estados
columna 2 = nombre de los estados
No vamos a tomar estas 3 columnas para sonoriarse ni las columnas correspondientes a enero y febrero porque se vuelve muy largo y en estos días no hay tanto movimiento.
Vamos a tomar a partir de la columna 52 que corresponde al 1 de marzo y de allí hasta la 171 correspondiente al 30 de junio.
*/

(
//Marzo
~mar1= x.collect({arg val;
	 val[52].asFloat});
// Normalizar datos, ajustar rangos y establecer la regla de mapeo
~normmar1 = ~mar1.normalize.linlin(0, 1, 36, 119);

~mar2= x.collect({arg val;
	 val[53].asFloat});
~normmar2 = ~mar2.normalize.linlin(0, 1, 36, 119);

~mar3= x.collect({arg val;
	 val[54].asFloat});
~normmar3 = ~mar3.normalize.linlin(0, 1, 36, 119);

~mar4= x.collect({arg val;
	 val[55].asFloat});
~normmar4 = ~mar4.normalize.linlin(0, 1, 36, 119);

~mar5= x.collect({arg val;
	 val[56].asFloat});
~normmar5 = ~mar5.normalize.linlin(0, 1, 36, 119);

~mar6= x.collect({arg val;
	 val[57].asFloat});
~normmar6 = ~mar6.normalize.linlin(0, 1, 36, 119);

~mar7= x.collect({arg val;
	 val[58].asFloat});
~normmar7 = ~mar7.normalize.linlin(0, 1, 36, 119);

~mar8= x.collect({arg val;
	 val[59].asFloat});
~normmar8 = ~mar8.normalize.linlin(0, 1, 36, 119);

~mar9= x.collect({arg val;
	 val[60].asFloat});
~normmar9 = ~mar9.normalize.linlin(0, 1, 36, 119);

~mar10= x.collect({arg val;
	 val[61].asFloat});
~normmar10 = ~mar10.normalize.linlin(0, 1, 36, 119);

~mar11= x.collect({arg val;
	 val[62].asFloat});
~normmar11 = ~mar11.normalize.linlin(0,1,36,119);

~mar12= x.collect({arg val;
	 val[63].asFloat});
~normmar12 = ~mar12.normalize.linlin(0,1,36,119);

~mar13= x.collect({arg val;
	 val[64].asFloat});
~normmar13 = ~mar13.normalize.linlin(0, 1, 36, 119);

~mar14= x.collect({arg val;
	 val[65].asFloat});
~normmar14 = ~mar14.normalize.linlin(0, 1, 36, 119);

~mar15= x.collect({arg val;
	 val[66].asFloat});
~normmar15 = ~mar15.normalize.linlin(0, 1, 36, 119);

~mar16= x.collect({arg val;
	 val[67].asFloat});
~normmar16 = ~mar16.normalize.linlin(0, 1, 36, 119);

~mar17= x.collect({arg val;
	 val[68].asFloat});
~normmar17 = ~mar17.normalize.linlin(0, 1, 36, 119);

~mar18= x.collect({arg val;
	 val[69].asFloat});
~normmar18 = ~mar18.normalize.linlin(0, 1, 36, 119);

~mar19= x.collect({arg val;
	 val[70].asFloat});
~normmar19 = ~mar19.normalize.linlin(0, 1, 36, 119);

~mar20= x.collect({arg val;
	 val[71].asFloat});
~normmar20 = ~mar20.normalize.linlin(0, 1, 36, 119);

~mar21= x.collect({arg val;
	 val[72].asFloat});
~normmar21 = ~mar21.normalize.linlin(0, 1, 36, 119);

~mar22= x.collect({arg val;
	 val[73].asFloat});
~normmar22 = ~mar22.normalize.linlin(0, 1, 36, 119);

~mar23= x.collect({arg val;
	 val[74].asFloat});
~normmar23 = ~mar23.normalize.linlin(0, 1, 36, 119);

~mar24= x.collect({arg val;
	 val[75].asFloat});
~normmar24 = ~mar24.normalize.linlin(0, 1, 36, 119);

~mar25= x.collect({arg val;
	 val[76].asFloat});
~normmar25 = ~mar25.normalize.linlin(0, 1, 36, 119);

~mar26= x.collect({arg val;
	 val[77].asFloat});
~normmar26 = ~mar26.normalize.linlin(0, 1, 36, 119);

~mar27= x.collect({arg val;
	 val[78].asFloat});
~normmar27 = ~mar27.normalize.linlin(0, 1, 36, 119);

~mar28= x.collect({arg val;
	 val[79].asFloat});
~normmar28 = ~mar28.normalize.linlin(0, 1, 36, 119);

~mar29= x.collect({arg val;
	 val[80].asFloat});
~normmar29 = ~mar29.normalize.linlin(0, 1, 36, 119);

~mar30= x.collect({arg val;
	 val[81].asFloat});
~normmar30 = ~mar30.normalize.linlin(0, 1, 36, 119);

~mar31= x.collect({arg val;
	 val[82].asFloat});
~normmar31 = ~mar31.normalize.linlin(0, 1, 36, 119);

//Abril
~abr1= x.collect({arg val;
	 val[83].asFloat});
~normabr1 = ~abr1.normalize.linlin(0, 1, 36, 119);

~abr2= x.collect({arg val;
	 val[84].asFloat});
~normabr2 = ~abr2.normalize.linlin(0, 1, 36, 119);

~abr3= x.collect({arg val;
	 val[85].asFloat});
~normabr3 = ~abr3.normalize.linlin(0, 1, 36, 119);

~abr4= x.collect({arg val;
	 val[86].asFloat});
~normabr4 = ~abr4.normalize.linlin(0, 1, 36, 119);

~abr5= x.collect({arg val;
	 val[87].asFloat});
~normabr5 = ~abr5.normalize.linlin(0, 1, 36, 119);

~abr6= x.collect({arg val;
	 val[88].asFloat});
~normabr6 = ~abr6.normalize.linlin(0, 1, 36, 119);

~abr7= x.collect({arg val;
	 val[89].asFloat});
~normabr7 = ~abr7.normalize.linlin(0, 1, 36, 119);

~abr8= x.collect({arg val;
	 val[90].asFloat});
~normabr8 = ~abr8.normalize.linlin(0, 1, 36, 119);

~abr9= x.collect({arg val;
	 val[91].asFloat});
~normabr9 = ~abr9.normalize.linlin(0, 1, 36, 119);

~abr10= x.collect({arg val;
	 val[92].asFloat});
~normabr10 = ~abr10.normalize.linlin(0, 1, 36, 119);

~abr11= x.collect({arg val;
	 val[93].asFloat});
~normabr11 = ~abr11.normalize.linlin(0, 1, 36, 119);

~abr12= x.collect({arg val;
	 val[94].asFloat});
~normabr12 = ~abr12.normalize.linlin(0, 1, 36, 119);

~abr13= x.collect({arg val;
	 val[95].asFloat});
~normabr13 = ~abr13.normalize.linlin(0, 1, 36, 119);

~abr14= x.collect({arg val;
	 val[96].asFloat});
~normabr14 = ~abr14.normalize.linlin(0, 1, 36, 119);

~abr15= x.collect({arg val;
	 val[97].asFloat});
~normabr15 = ~abr15.normalize.linlin(0, 1, 36, 119);

~abr16= x.collect({arg val;
	 val[98].asFloat});
~normabr16 = ~abr16.normalize.linlin(0, 1, 36, 119);

~abr17= x.collect({arg val;
	 val[99].asFloat});
~normabr17 = ~abr17.normalize.linlin(0, 1, 36, 119);

~abr18= x.collect({arg val;
	 val[100].asFloat});
~normabr18 = ~abr18.normalize.linlin(0, 1, 36, 119);

~abr19= x.collect({arg val;
	 val[101].asFloat});
~normabr19 = ~abr19.normalize.linlin(0, 1, 36, 119);

~abr20= x.collect({arg val;
	 val[102].asFloat});
~normabr20 = ~abr20.normalize.linlin(0, 1, 36, 119);

~abr21= x.collect({arg val;
	 val[103].asFloat});
~normabr21 = ~abr21.normalize.linlin(0, 1, 36, 119);

~abr22= x.collect({arg val;
	 val[104].asFloat});
~normabr22 = ~abr22.normalize.linlin(0, 1, 36, 119);

~abr23= x.collect({arg val;
	 val[105].asFloat});
~normabr23 = ~abr23.normalize.linlin(0, 1, 36, 119);

~abr24= x.collect({arg val;
	 val[106].asFloat});
~normabr24 = ~abr24.normalize.linlin(0, 1, 36, 119);

~abr25= x.collect({arg val;
	 val[107].asFloat});
~normabr25 = ~abr25.normalize.linlin(0, 1, 36, 119);

~abr26= x.collect({arg val;
	 val[108].asFloat});
~normabr26 = ~abr26.normalize.linlin(0, 1, 36, 119);

~abr27= x.collect({arg val;
	 val[109].asFloat});
~normabr27 = ~abr27.normalize.linlin(0, 1, 36, 119);

~abr28= x.collect({arg val;
	 val[110].asFloat});
~normabr28 = ~abr28.normalize.linlin(0, 1, 36, 119);

~abr29= x.collect({arg val;
	 val[111].asFloat});
~normabr29 = ~abr29.normalize.linlin(0, 1, 36, 119);

~abr30= x.collect({arg val;
	 val[112].asFloat});
~normabr30 = ~abr30.normalize.linlin(0, 1, 36, 119);

//Mayo
~may1= x.collect({arg val;
	 val[113].asFloat});
~normmay1 = ~may1.normalize.linlin(0, 1, 36, 119);

~may2= x.collect({arg val;
	 val[114].asFloat});
~normmay2 = ~may2.normalize.linlin(0, 1, 36, 119);

~may3= x.collect({arg val;
	 val[115].asFloat});
~normmay3 = ~may3.normalize.linlin(0, 1, 36, 119);

~may4= x.collect({arg val;
	 val[116].asFloat});
~normmay4 = ~may4.normalize.linlin(0, 1, 36, 119);

~may5= x.collect({arg val;
	 val[117].asFloat});
~normmay5 = ~may5.normalize.linlin(0, 1, 36, 119);

~may6= x.collect({arg val;
	 val[118].asFloat});
~normmay6 = ~may6.normalize.linlin(0, 1, 36, 119);

~may7= x.collect({arg val;
	 val[119].asFloat});
~normmay7 = ~may7.normalize.linlin(0, 1, 36, 119);

~may8= x.collect({arg val;
	 val[120].asFloat});
~normmay8 = ~may8.normalize.linlin(0, 1, 36, 119);

~may9= x.collect({arg val;
	 val[121].asFloat});
~normmay9 = ~may9.normalize.linlin(0, 1, 36, 119);

~may10= x.collect({arg val;
	 val[122].asFloat});
~normmay10 = ~may10.normalize.linlin(0, 1, 36, 119);

~may11= x.collect({arg val;
	 val[123].asFloat});
~normmay11 = ~may11.normalize.linlin(0, 1, 36, 119);

~may12= x.collect({arg val;
	 val[124].asFloat});
~normmay12 = ~may12.normalize.linlin(0, 1, 36, 119);

~may13= x.collect({arg val;
	 val[125].asFloat});
~normmay13 = ~may13.normalize.linlin(0, 1, 36, 119);

~may14= x.collect({arg val;
	 val[126].asFloat});
~normmay14 = ~may14.normalize.linlin(0, 1, 36, 119);

~may15= x.collect({arg val;
	 val[127].asFloat});
~normmay15 = ~may15.normalize.linlin(0, 1, 36, 119);

~may16= x.collect({arg val;
	 val[128].asFloat});
~normmay16 = ~may16.normalize.linlin(0, 1, 36, 119);

~may17= x.collect({arg val;
	 val[129].asFloat});
~normmay17 = ~may17.normalize.linlin(0, 1, 36, 119);

~may18= x.collect({arg val;
	 val[130].asFloat});
~normmay18 = ~may18.normalize.linlin(0, 1, 36, 119);

~may19= x.collect({arg val;
	 val[131].asFloat});
~normmay19 = ~may19.normalize.linlin(0, 1, 36, 119);

~may20= x.collect({arg val;
	 val[132].asFloat});
~normmay20 = ~may20.normalize.linlin(0, 1, 36, 119);

~may21= x.collect({arg val;
	 val[133].asFloat});
~normmay21 = ~may21.normalize.linlin(0, 1, 36, 119);

~may22= x.collect({arg val;
	 val[134].asFloat});
~normmay22 = ~may22.normalize.linlin(0, 1, 36, 119);

~may23= x.collect({arg val;
	 val[135].asFloat});
~normmay23 = ~may23.normalize.linlin(0, 1, 36, 119);

~may24= x.collect({arg val;
	 val[136].asFloat});
~normmay24 = ~may24.normalize.linlin(0, 1, 36, 119);

~may25= x.collect({arg val;
	 val[137].asFloat});
~normmay25 = ~may25.normalize.linlin(0, 1, 36, 119);

~may26= x.collect({arg val;
	 val[138].asFloat});
~normmay26 = ~may26.normalize.linlin(0, 1, 36, 119);

~may27= x.collect({arg val;
	 val[139].asFloat});
~normmay27 = ~may27.normalize.linlin(0, 1, 36, 119);

~may28= x.collect({arg val;
	 val[140].asFloat});
~normmay28 = ~may28.normalize.linlin(0, 1, 36, 119);

~may29= x.collect({arg val;
	 val[141].asFloat});
~normmay29 = ~may29.normalize.linlin(0, 1, 36, 119);

~may30= x.collect({arg val;
	 val[142].asFloat});
~normmay30 = ~may30.normalize.linlin(0, 1, 36, 119);

~may31= x.collect({arg val;
	 val[143].asFloat});
~normmay31 = ~may31.normalize.linlin(0, 1, 36, 119);

//Junio
~jun1= x.collect({arg val;
	 val[144].asFloat});
~normjun1 = ~jun1.normalize.linlin(0, 1, 36, 119);

~jun2= x.collect({arg val;
	 val[145].asFloat});
~normjun2 = ~jun2.normalize.linlin(0, 1, 36, 119);

~jun3= x.collect({arg val;
	 val[146].asFloat});
~normjun3 = ~jun3.normalize.linlin(0, 1, 36, 119);

~jun4= x.collect({arg val;
	 val[147].asFloat});
~normjun4 = ~jun4.normalize.linlin(0, 1, 36, 119);

~jun5= x.collect({arg val;
	 val[148].asFloat});
~normjun5 = ~jun5.normalize.linlin(0, 1, 36, 119);

~jun6= x.collect({arg val;
	 val[149].asFloat});
~normjun6 = ~jun6.normalize.linlin(0, 1, 36, 119);

~jun7= x.collect({arg val;
	 val[150].asFloat});
~normjun7 = ~jun7.normalize.linlin(0, 1, 36, 119);

~jun8= x.collect({arg val;
	 val[151].asFloat});
~normjun8 = ~jun8.normalize.linlin(0, 1, 36, 119);

~jun9= x.collect({arg val;
	 val[152].asFloat});
~normjun9 = ~jun9.normalize.linlin(0, 1, 36, 119);

~jun10= x.collect({arg val;
	 val[153].asFloat});
~normjun10 = ~jun10.normalize.linlin(0, 1, 36, 119);

~jun11= x.collect({arg val;
	 val[154].asFloat});
~normjun11 = ~jun11.normalize.linlin(0, 1, 36, 119);

~jun12= x.collect({arg val;
	val[155].asFloat});
~normjun12 = ~jun12.normalize.linlin(0, 1, 36, 119);

~jun13= x.collect({arg val;
	 val[156].asFloat});
~normjun13 = ~jun13.normalize.linlin(0, 1, 36, 119);

~jun14= x.collect({arg val;
	 val[157].asFloat});
~normjun14 = ~jun14.normalize.linlin(0, 1, 36, 119);

~jun15= x.collect({arg val;
	 val[158].asFloat});
~normjun15 = ~jun15.normalize.linlin(0, 1, 36, 119);

~jun16= x.collect({arg val;
	 val[159].asFloat});
~normjun16 = ~jun16.normalize.linlin(0, 1, 36, 119);

~jun17= x.collect({arg val;
	 val[160].asFloat});
~normjun17 = ~jun17.normalize.linlin(0, 1, 36, 119);

~jun18= x.collect({arg val;
	 val[161].asFloat});
~normjun18 = ~jun18.normalize.linlin(0, 1, 36, 119);

~jun19= x.collect({arg val;
	 val[162].asFloat});
~normjun19 = ~jun19.normalize.linlin(0, 1, 36, 119);

~jun20= x.collect({arg val;
	 val[163].asFloat});
~normjun20 = ~jun20.normalize.linlin(0, 1, 36, 119);

~jun21= x.collect({arg val;
	 val[164].asFloat});
~normjun21 = ~jun21.normalize.linlin(0, 1, 36, 119);

~jun22= x.collect({arg val;
	 val[165].asFloat});
~normjun22 = ~jun22.normalize.linlin(0, 1, 36, 119);

~jun23= x.collect({arg val;
	 val[166].asFloat});
~normjun23 = ~jun23.normalize.linlin(0, 1, 36, 119);

~jun24= x.collect({arg val;
	 val[167].asFloat});
~normjun24 = ~jun24.normalize.linlin(0, 1, 36, 119);

~jun25= x.collect({arg val;
	 val[168].asFloat});
~normjun25 = ~jun25.normalize.linlin(0, 1, 36, 119);

~jun26= x.collect({arg val;
	 val[169].asFloat});
~normjun26 = ~jun26.normalize.linlin(0, 1, 36, 119);

~jun27= x.collect({arg val;
	 val[170].asFloat});
~normjun27 = ~jun27.normalize.linlin(0, 1, 36, 119);

~jun28= x.collect({arg val;
	 val[171].asFloat});
~normjun28 = ~jun28.normalize.linlin(0, 1, 36, 119);

~jun29= x.collect({arg val;
	 val[172].asFloat});
~normjun29 = ~jun29.normalize.linlin(0, 1, 36, 119);

~jun30= x.collect({arg val;
	 val[173].asFloat});
~normjun30 = ~jun30.normalize.linlin(0, 1, 36, 119);
)

//Arreglo con todos los días uno tras otro
~completa = ~normmar1++~normmar2++~normmar3++~normmar4++~normmar5++~normmar6++~normmar7++~normmar8++~normmar9++~normmar10++~normmar11++~normmar12++~normmar13++~normmar14++~normmar15++~normmar16++~normmar17++~normmar18++~normmar19++~normmar20++~normmar21++~normmar22++~normmar23++~normmar24++~normmar25++~normmar26++~normmar27++~normmar28++~normmar29++~normmar30++~normmar31++~normabr1++~normabr2++~normabr3++~normabr4++~normabr5++~normabr6++~normabr7++~normabr8++~normabr9++~normabr10++~normabr11++~normabr12++~normabr13++~normabr14++~normabr15++~normabr16++~normabr17++~normabr18++~normabr19++~normabr20++~normabr21++~normabr22++~normabr23++~normabr24++~normabr25++~normabr26++~normabr27++~normabr28++~normabr29++~normabr30++~normmay1++~normmay2++~normmay3++~normmay4++~normmay5++~normmay6++~normmay7++~normmay8++~normmay9++~normmay10++~normmay11++~normmay12++~normmay13++~normmay14++~normmay15++~normmay16++~normmay17++~normmay18++~normmay19++~normmay20++~normmay21++~normmay22++~normmay23++~normmay24++~normmay25++~normmay26++~normmay27++~normmay28++~normmay29++~normmay30++~normmay31++~normjun1++~normjun2++~normjun3++~normjun4++~normjun5++~normjun6++~normjun7++~normjun8++~normjun9++~normjun10++~normjun11++~normjun12++~normjun13++~normjun14++~normjun15++~normjun16++~normjun17++~normjun18++~normjun19++~normjun20++~normjun21++~normjun22++~normjun23++~normjun24++~normjun25++~normjun26++~normjun27++~normjun28++~normjun29++~normjun30

//======================================================
// Sonificación
//======================================================

(
Pdef(\final,
	Pbind(
		\midinote, Pseq(~completa, 1).poll,
		\dur, 0.1,
		\amp, 1,
)));



//Polifonía 1ª nota de cada día
(
~polifonia = [~normmar1,~normmar2,~normmar3,~normmar4,~normmar5,~normmar6,~normmar7,~normmar8,~normmar9,~normmar10,~normmar11,~normmar12,~normmar13,~normmar14,~normmar15,~normmar16,~normmar17,~normmar18,~normmar19,~normmar20,~normmar21,~normmar22,~normmar23,~normmar24,~normmar25,~normmar26,~normmar27,~normmar28,~normmar29,~normmar30,~normmar31,~normabr1,~normabr2,~normabr3,~normabr4,~normabr5,~normabr6,~normabr7,~normabr8,~normabr9,~normabr10,~normabr11,~normabr12,~normabr13,~normabr14,~normabr15,~normabr16,~normabr17,~normabr18,~normabr19,~normabr20,~normabr21,~normabr22,~normabr23,~normabr24,~normabr25,~normabr26,~normabr27,~normabr28,~normabr29,~normabr30,~normmay1,~normmay2,~normmay3,~normmay4,~normmay5,~normmay6,~normmay7,~normmay8,~normmay9,~normmay10,~normmay11,~normmay12,~normmay13,~normmay14,~normmay15,~normmay16,~normmay17,~normmay18,~normmay19,~normmay20,~normmay21,~normmay22,~normmay23,~normmay24,~normmay25,~normmay26,~normmay27,~normmay28,~normmay29,~normmay30,~normmay31,~normjun1,~normjun2,~normjun3,~normjun4,~normjun5,~normjun6,~normjun7,~normjun8,~normjun9,~normjun10,~normjun11,~normjun12,~normjun13,~normjun14,~normjun15,~normjun16,~normjun17,~normjun18,~normjun19,~normjun20,~normjun21,~normjun22,~normjun23,~normjun24,~normjun25,~normjun26,~normjun27,~normjun28,~normjun29,~normjun30]
)

(
Pdef(\poli,
	Pbind(
	\midinote, Pseq(~polifonia, 1).poll,
	\dur, 0.2,
	\amp,0.1,
)));

//Interfaz gráfica para facilitar la reproducción de los Pdefs
PdefAllGui(2);


//MVE 2020
