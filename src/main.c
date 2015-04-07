#include "altaLista.h"
#include <stdio.h>
#include "stdlib.h"


void imprimirDerecho(altaLista * l){
  nodo * nodoActual = l->primero;
  printf("-----ESTUDIANTE_IMPRIMIR-----\n");
  while(nodoActual != NULL){
    estudianteImprimir(nodoActual->dato, stdout);
    nodoActual = nodoActual->siguiente;
  }
}



void f( char* s ){s[0] = s[0];}
void g( char *s ){ if( s[0] != 0 ) s[0] = 'X'; }

int main (void){
  // 1) string_copiar, string_longitud, string_menor
  char h1[] = "Paul Simon";
  char * h2 = string_copiar(h1);
  h1[2] = 'o';
  printf("%s ~ %s\n", h1, h2);
  printf("Longitud: %d\n", string_longitud(h1));
  printf(string_menor(h1, h2)? "%s < %s\n" : "%s >= %s\n", h1, h2);
  char x1[]="Agustina";
  char x2[]="Agustina";
  printf(string_menor(x1, x2)? "%s < %s\n" : "%s >= %s\n", x1, x2); 
  // estudianteCrear
  estudiante * miEstudiante1 = estudianteCrear(h2, "Simon & Garfunkel", 57);
  free(h2);
  estudiante * miEstudiante2 = estudianteCrear("Gonzalo Ciruelos", "Grupo 1", 20);
  printf( "Nombre: %s\nGrupo: %s\nEdad: %d\n", miEstudiante1->nombre, miEstudiante1->grupo, miEstudiante1->edad ); 
 // 3) menorEstudiante
  if( menorEstudiante( miEstudiante1, miEstudiante2 ) )
    printf( "TRUE\n" ); else printf( "FALSE\n" );
  // 2) estudianteImprimir
  estudianteImprimir(miEstudiante2, stdout);
  // 4)estudianteConFormato
  estudianteImprimir(miEstudiante2, stdout);
  estudianteConFormato(miEstudiante2, f);
  estudianteImprimir(miEstudiante2, stdout);
  estudianteConFormato(miEstudiante2, g);
  estudianteImprimir(miEstudiante2, stdout);
  //estudianteBorrar
  estudianteBorrar(miEstudiante1);
  estudianteBorrar(miEstudiante2);
  


  miEstudiante1 = estudianteCrear("Paul Simon", "Simon & Garfunkel", 57);
  // 5) Crear un nodo y borrarlo
  nodo *miNodo = nodoCrear( miEstudiante1);
  nodoBorrar( miNodo, (tipoFuncionBorrarDato)estudianteBorrar );


  // 6) Crear una altaLista vacia, imprimirla y borrarla
  altaLista *miAltaLista = altaListaCrear();
  altaListaImprimir( miAltaLista, "salida.txt", (tipoFuncionImprimirDato) estudianteImprimir);
  altaListaBorrar(miAltaLista, (tipoFuncionBorrarDato) estudianteBorrar);

  // 7) Crear una altaLista nueva, agregarle un estudiante, imprimirla y borrarla
  altaLista * miAltaLista7 = altaListaCrear();
  insertarAtras(miAltaLista7, estudianteCrear("leila", "entrania", 21));
  insertarAtras(miAltaLista7, estudianteCrear("Gonzalo", "miGrupo", 20));
  insertarAtras(miAltaLista7, estudianteCrear("viejo", "grupo2", 50));
  altaListaImprimir(miAltaLista7, "salida.txt", (tipoFuncionImprimirDato) estudianteImprimir);
  printf("Promedio edad: %f\n", edadMedia(miAltaLista7));
  altaListaBorrar(miAltaLista7, (tipoFuncionBorrarDato) estudianteBorrar);

  // 8) Calcular la edad media de los estudiantes 
  altaLista * miAltaLista8 = altaListaCrear();
  insertarAtras( miAltaLista8, estudianteCrear( "leila", "entrania", 21 ) );
  printf( "edadMedia = %2.5f\n", edadMedia( miAltaLista8) );
  insertarAtras( miAltaLista8, estudianteCrear( "leila2", "grupo2", 20 ) );
  insertarAtras( miAltaLista8, estudianteCrear( "leila3", "adfasdf",  19 ) );
  printf( "edadMedia = %2.5f\n", edadMedia( miAltaLista8 ) );
  altaListaBorrar(miAltaLista8, (tipoFuncionBorrarDato) estudianteBorrar);
  


  // 9) Insertar Ordenado
  altaLista * miAltaLista9 = altaListaCrear();
  insertarAtras(miAltaLista9, estudianteCrear("Gonzalo", "miGrupo", 20));
  insertarOrdenado(miAltaLista9, estudianteCrear("Gonzalo", "miGrupo", 19),  (tipoFuncionCompararDato) menorEstudiante);
  altaListaImprimir(miAltaLista9, "salida.txt", (tipoFuncionImprimirDato) estudianteImprimir);
  altaListaBorrar(miAltaLista9, (tipoFuncionBorrarDato) estudianteBorrar);



  // 10) Corroborar el invariante de la altaLista (FIGURA 4)
  altaLista * l = altaListaCrear();
  insertarAtras(l, estudianteCrear("Jose", "Vacio", 20));
  insertarAtras(l, estudianteCrear("Paula", "Asado", 21));
  estudiante *Leila = estudianteCrear( "Leila", "Entrania", 21 );
  insertarOrdenado( l, Leila, (tipoFuncionCompararDato)menorEstudiante );
  estudiante *Laura = estudianteCrear( "Laura", "Provoletta", 23 );
  imprimirDerecho(l);
  filtrarAltaLista( l, (tipoFuncionCompararDato)menorEstudiante, Laura ); 
  imprimirDerecho(l);
  estudianteBorrar( Laura );
  altaListaBorrar(l, (tipoFuncionBorrarDato) estudianteBorrar); 
 
  // 11) filtrarAltaLista
  altaLista * miAltaLista11 = altaListaCrear();
  estudiante *Leila2 = estudianteCrear( "leila", "entrania", 21 ) ;
  estudiante *Laura2 = estudianteCrear( "laura", "provoletta", 23 );
  insertarOrdenado( miAltaLista11, Leila2, (tipoFuncionCompararDato)menorEstudiante );
  filtrarAltaLista( miAltaLista11, (tipoFuncionCompararDato)menorEstudiante, Laura2 );
  imprimirDerecho(miAltaLista11);
  altaListaBorrar(miAltaLista11, (tipoFuncionBorrarDato) estudianteBorrar);
  estudianteBorrar(Laura2);
 
  
  return 0;
}
