Algoritmo SimuladorAlgoritmoTikTok
    Definir duracionVideo, tiempoVisto, likes, compartidos Como Real
    Definir retencion, puntajeFinal Como Real
    
    Escribir "Ingrese duración del video (segundos):"
    Leer duracionVideo
    Escribir "Ingrese tiempo que el usuario vio el video (segundos):"
	Leer tiempoVisto
    Escribir "Ingrese cantidad de Likes:"
	Leer likes
	Escribir "Ingrese cantidad de Compartidos:"
	Leer compartidos
	
	retencion = (tiempoVisto / duracionVideo) * 100
	
	puntajeFinal = (retencion * 0.5) + (likes * 2) + (compartidos * 8)
	
	Escribir "Puntaje alcanzado por el video: ", puntajeFinal
	
	Si puntajeFinal < 50 Entonces
		Escribir "========================================================================="
		Escribir "Decisión Algorítmica: [DETENER recomendación]         (Bajo rendimiento)."
		Escribir "========================================================================="
	Sino
		Si puntajeFinal >= 50 y puntajeFinal <= 74 Entonces
			Escribir "================================================================================="
			Escribir "Decisión Algorítmica: Recomendar a un lote de prueba pequeño (300-1.000 usuarios)"
			Escribir "=================================================================================="
		SiNo
			Si puntajeFinal >= 75 Entonces
				Escribir "========================================================================="
				Escribir "Decisión Algorítmica: [RECOMENDAR a 10.000 nuevos usuarios] (Feed Para Ti)."
				Escribir "========================================================================="
			FinSi
		FinSi
	FinSi
	
FinAlgoritmo