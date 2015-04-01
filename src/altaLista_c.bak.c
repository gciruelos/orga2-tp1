#include "altaLista.h"
#include "stdlib.h"


/** Funciones de estudiante **/

estudiante *estudianteCrear( char *nombre, char *grupo, unsigned int edad ){
  estudiante * e = malloc(sizeof(estudiante));

  e->nombre = string_copiar(nombre);
  e->grupo = string_copiar(grupo);
  e->edad = edad;

  return e;
}

void estudianteBorrar( estudiante *e ){
  free(e->nombre);
  free(e->grupo);
  free(e);
}

bool menorEstudiante( estudiante *e1, estudiante *e2 ){
  if(string_menor(e1->nombre, e2->nombre))
    return true;
  else if(string_iguales(e1->nombre, e2->nombre)){
    if( e1->edad <= e2->edad) return true;
    else return false;
  }
  else return false;
}

void estudianteConFormato( estudiante *e, tipoFuncionModificarString f ){
  f(e->nombre);
  f(e->grupo);
}

void estudianteImprimir( estudiante *e, FILE *file ){
  fprintf(file, "%s\n\t%s\n\t%d\n", e->nombre, e->grupo, e->edad);
}


/** Funciones de altaLista y nodo **/
nodo *nodoCrear(void *dato){
  nodo * n = malloc(sizeof(nodo));

  n->anterior = NULL;
  n->siguiente = NULL;
  n->dato = dato;

  return n;
}

void nodoBorrar(nodo *n, tipoFuncionBorrarDato f){
  f(n->dato);
  free(n);
}

altaLista *altaListaCrear(void){
 altaLista * lista = malloc(sizeof(altaLista));
 lista->primero = NULL;
 lista->ultimo  = NULL;
 
 return lista;
}

void altaListaBorrar(altaLista *l, tipoFuncionBorrarDato f){
  nodo *nodoActual = l->primero, *nodoSiguiente;
  
  while(nodoActual != NULL){
    nodoSiguiente = nodoActual->siguiente;
    nodoBorrar(nodoActual, f);
    nodoActual = nodoSiguiente;
  }
  free(l);
}

void altaListaImprimir(altaLista *l, char *archivo, tipoFuncionImprimirDato f){
  FILE * file = fopen(archivo, "a");

  nodo * nodoActual = l->primero;
  if(nodoActual == NULL){
    fprintf(file, "<vacia>\n");
  }
  while(nodoActual != NULL){
    f(nodoActual->dato, file);
    nodoActual = nodoActual->siguiente;
  }
  fclose(file);
}




/** Funciones Avanzadas **/
float edadMedia(altaLista *l){
  int suma = 0;
  int largo = 0;

  nodo * nodoActual = l->primero;
  while(nodoActual != NULL){
    suma += ((estudiante *) (nodoActual->dato))->edad;
    largo++;
    nodoActual = nodoActual->siguiente;
  }

  return ((float) suma)/largo;
}

void insertarOrdenado(altaLista *l, void *dato, tipoFuncionCompararDato f){
  nodo *nodoActual = l->primero, *nodoAnterior;
  while(nodoActual != NULL && !f(dato, nodoActual->dato)){
    nodoActual = nodoActual->siguiente;
  }

  if(nodoActual == NULL){
    insertarAtras(l, dato);
  }
  else{ //dato va antes de nodoActual
    nodo * nuevo = nodoCrear(dato);
    nuevo->siguiente = nodoActual;
 
    nodoAnterior = nodoActual->anterior;
    
    if(nodoAnterior == NULL){//nodoActual es el primero
      l->primero = nuevo;
      nuevo->anterior = NULL;
      nodoActual->anterior = nuevo;
    }
    else{
      nuevo->anterior = nodoAnterior;
      nodoAnterior->siguiente = nuevo;
      nodoActual->anterior = nuevo;
    }
  }
}


void filtrarAltaLista( altaLista *l, tipoFuncionCompararDato f, void *datoCmp ){
  nodo *nodoActual = l->primero, *nodoSiguiente, *nodoAnterior;
  while(nodoActual != NULL){
    nodoSiguiente = nodoActual->siguiente; 
    nodoAnterior = nodoActual->anterior;
    
    

    if(!f(nodoActual->dato, datoCmp)){//tengo que borrarlo 
      if(nodoAnterior == NULL && nodoSiguiente == NULL){
        l->primero = NULL;
        l->ultimo = NULL;
        nodoBorrar(nodoActual, (tipoFuncionBorrarDato) estudianteBorrar);
      }
      else if(nodoAnterior == NULL){//es el primero
        l->primero = nodoSiguiente;
        nodoSiguiente->anterior = NULL;
        nodoBorrar(nodoActual, (tipoFuncionBorrarDato) estudianteBorrar);
      }
      else if(nodoSiguiente == NULL){//es el ultimo
        l->ultimo = nodoAnterior;
        nodoAnterior->siguiente = NULL;
        nodoBorrar(nodoActual, (tipoFuncionBorrarDato) estudianteBorrar);
      }
      else{
        nodoAnterior->siguiente = nodoSiguiente;
        nodoSiguiente->anterior = nodoAnterior;
        nodoBorrar(nodoActual, (tipoFuncionBorrarDato) estudianteBorrar);
      }
    }
    nodoActual = nodoSiguiente;
  }
}

/** Funciones auxiliares sugeridas **/

unsigned char string_longitud(char *s){
  int i = 0, l = 0;

  while(s[i] != 0){
    l++;
    i++;
  }
  return l;
}


char *string_copiar(char *s){
  int l = string_longitud(s);
  char * s2 = malloc(l+1);

  int i = 0;
  while(*(s+i)){ 
    *(s2+i) = *(s+i); 
    i++;
  }
  *(s2+i) = '\0';

  return s2;
}

bool string_menor(char *s1, char *s2){
  if(string_iguales(s1, s2)) return false;

  int i = 0;
  while(s1[i] == s2[i]){
    i++;
  }
  if(s1[i] < s2[i]) return true;
  else return false;
}


/** Funciones Auxiliares ya implementadas en C **/

bool string_iguales( char *s1, char *s2 ){
   int i = 0;
   while( s1[i] == s2[i] ){
      if( s1[i] == 0 || s2[i] == 0 )
         break;
      i++;
   }
   if( s1[i] == 0 && s2[i] == 0 )
      return true;
   else
      return false;
}

void insertarAtras( altaLista *l, void *dato ){
	nodo *nuevoNodo = nodoCrear( dato );
    nodo *ultimoNodo = l->ultimo;
    if( ultimoNodo == NULL )
        l->primero = nuevoNodo;
    else
        ultimoNodo->siguiente = nuevoNodo;
    nuevoNodo->anterior = l->ultimo;
    l->ultimo = nuevoNodo;
}

