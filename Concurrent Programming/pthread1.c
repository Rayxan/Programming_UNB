//Exercício usando contador aula: (Disciplina de Programação Concorrente 2020/1- Processos)
#include<stdio.h>
#include<stdlib.h>
#include<pthread.h>
#include<unistd.h>

#define N 2

int contador = 0;

void * pthread_func(void * arg){
    for(int i=0;i<5;i++)
        contador++;
    
    int id = *((int *) arg);
    printf("Criou um pthread com id = %d \n", id);
    pthread_exit(0);
}

int main(){
    pthread_t a[N];
    printf("Meu id: %lu\n", pthread_self());

    int i;
    int * id;

    for(i=0;i<N;i++){
        id = (int *) malloc(sizeof(int));
        *id = i;
        pthread_create(&a[i], NULL, pthread_func, (void *) (id));
    }

    for(i=0; i<N; i++){
        pthread_join(a[i], NULL);
    }
    
    printf("Contador: %d\n", contador);
    printf("TERMINANDO\n");

    return 0;
}
//gcc thread1.c -o thread1 -pthread
