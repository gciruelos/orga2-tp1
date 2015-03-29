#include "altaLista.h"
#include <stdio.h>
#include "stdlib.h"

void f( char* s ){}
void g( char *s ){ if( s[0] != 0 ) s[0] = 'X'; }

int main (void){
	/* Crear un estudiante y borrarlo */
    //string_copiar, string_longitud, string_menor
    char h1[] = "Paul Simon";
    char * h2 = string_copiar(h1);
    h1[2] = 'o';
    printf("%s ~ %s\n", h1, h2);
    printf("Longitud: %d\n", string_longitud(h1));
    printf(string_menor(h1, h2)? "%s < %s\n" : "%s >= %s\n", h1, h2);
  
    //estudianteCrear
    estudiante * miEstudiante1 = estudianteCrear(h2, "Simon & Garfunkel", 57);
    free(h2);
    estudiante * miEstudiante2 = estudianteCrear("Gonzalo Ciruelos", "Grupo 1", 20);
    printf( "Nombre: %s\nGrupo: %s\nEdad: %d\n", miEstudiante1->nombre, miEstudiante1->grupo, miEstudiante1->edad ); 
    //menorEstudiante
    if( menorEstudiante( miEstudiante1, miEstudiante2 ) )
      printf( "TRUE\n" ); else printf( "FALSE\n" );
    //estudianteImprimir
    estudianteImprimir(miEstudiante2, stdout);

    //estudianteConFormato
    estudianteImprimir(miEstudiante2, stdout);
    estudianteConFormato(miEstudiante2, f);
    estudianteImprimir(miEstudiante2, stdout);
    estudianteConFormato(miEstudiante2, g);
    estudianteImprimir(miEstudiante2, stdout);
   
    //estudianteBorrar
    estudianteBorrar(miEstudiante1);
    estudianteBorrar(miEstudiante2);
  

  // COMPLETAR AQUI EL CODIGO
	return 0;
}
