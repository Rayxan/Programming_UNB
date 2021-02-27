#include <locale.h>
#include <ctype.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <conio.h>
#include <time.h>

//DECLARAÇÃO DE STRUCT
struct list {
	int id, dia, mes, ano, progresso;
	float nota;
	char descr[100], materia[100];
};
//===============================================================================================

//DECLARAÇÃO DE FUNÇÕES
int leValidaOpcMenu();
char leValidaOpcCase();
char leValidaOpcCase2();
int leValidaID();
int leValidaDia();
int leValidaMes();
float leValidaNota();
void leValidaDescr(char *descr);
void leValidaMat(char *materia);
int leValidaProg();
int validaData(struct list dados[], int cont);
void listarAtividades (int cont, struct list dadosCrud[]);
void alteraEstado (int cont, struct list dados[]);
void apresentaResumo (int cont, struct list dados[]);
void recomendaAtividade(struct list dados[], int cont);
//===============================================================================================

//MENU
int leValidaOpcMenu() {
	int opc;
	printf ("\t\t\t-------TO DO LIST-------\n");
	printf ("\t\t\t1 - Adicionar Atividade\n");
	printf ("\t\t\t2 - Listar Atividades\n");
	printf ("\t\t\t3 - Alterar Estado de Atividade\n");
	printf ("\t\t\t4 - Apresenta Resumo\n");
	printf ("\t\t\t0 - Finalizar\n");
	do {
		printf ("\t\t\tDigite a opção de escolha: ");
		scanf ("%d", &opc);
		if (opc<0||opc>5) {
			printf ("\t\t\tOpção inválida!\n");
		}
	}	while (opc<0||opc>5);
	return opc;
}
//==========================================================================================

//ADICIONAR ATIVIDADE
char leValidaOpcCase() {
	char opc;
	do {
		printf ("Pressione 's' para nova atividade ou 'm' para voltar ao menu: ");
		opc = getche();
		opc = tolower (opc);
		if (opc!='s'&&opc!='m') {
			printf ("\nOpção inválida!\n");
		}
	} while (opc!='s'&&opc!='m');
	return opc;
}

char leValidaOpcCase2() {
	char opc;
	do {
		printf ("Pressione 'm' para voltar ao menu: ");
		opc = getche();
		opc = tolower (opc);
		if (opc!='m') {
			printf ("\nOpção inválida!\n");
		}
	} while (opc!='m');
	return opc;
}

int leValidaID() {
	int id;
	do {
		printf ("Digite um código para esta atividade (permitido código até 100): ");
		scanf ("%d", &id);
		if (id>100||id<=0) {
			printf ("Código inválido!\n");
		}
	}	while (id>100||id<=0);
	return id;
}

int leValidaDia() {
	int dia;
	do {
		printf ("Digite o dia (máximo até 31): ");
		scanf ("%d", &dia);
		if (dia>31||dia<=0) {
			printf ("Dia inválido!\n");
		}
	} while (dia>31||dia<=0);
	return dia;
}

int leValidaMes() {
	int mes;
	do {
		printf ("Digite o mês (máximo até 12): ");
		scanf ("%d", &mes);
		if (mes>12||mes<=0) {
			printf ("Mês inválido!\n");
		}
	} while (mes>12||mes<=0);
	return mes;
}

float leValidaNota() {
	float nota;
	do {
		printf ("Digite a pontuação dessa atividade: ");
		scanf ("%f", &nota);
		if (nota>10||nota<0) {
			printf ("Pontuação inválida!\n");
			printf ("Digite a pontuação dessa atividade: ");
			scanf ("%f", &nota);
		}
	} while (nota>10||nota<0);
	return nota;
}

void leValidaDescr(char *descr) {
	do {
		printf ("Digite uma descrição para essa atividade: ");
		fflush(stdin);
		gets (descr);
		if (strcmp(descr,"")==0) {
			printf ("Descrição inválida!\n");
		}
	} while (strcmp(descr,"")==0);
}

void leValidaMat(char *materia) {
	do {
		printf ("Digite a disciplina dessa atividade: ");
		fflush(stdin);
		gets (materia);
		if (strcmp(materia,"")==0) {
			printf ("Disciplina inválida!\n");
		}
	} while (strcmp(materia,"")==0);
}

int validaData(struct list dados[], int cont) {
	int i, flag=0;
	for (i=0; i<=cont; i++) {
		if ((dados[i].dia>30&&dados[i].mes==4)||(dados[i].dia>30&&dados[i].mes==6)||(dados[i].dia>30&&dados[i].mes==9)||(dados[i].dia>30&&dados[i].mes==11)) {
			printf ("Data inválida!\n");
			flag=1;
		} else 	if (dados[i].dia>29&&dados[i].mes==2) {
			printf ("Data inválida!\n");
			flag=1;
		}
	}
	return flag;
}
//==================================================================================================

//LISTAR ATIVIDADES
void listarAtividades (int cont, struct list dadosCrud[]) {
	int cod, i, flag=0;
	printf ("Digite o código da atividade para uma pesquisa específica ou digite '0' para listar todas: ");
	scanf ("%d", &cod);
	for (i=0; i<cont; i++) {
		if (cod==dadosCrud[i].id) {
			printf ("========================================================================================\n");
			printf ("Código da atividade: %d\n", dadosCrud[i].id);
			printf ("Descrição da ativid0ade: %s\n", dadosCrud[i].descr);
			printf ("Disciplina da atividade: %s\n", dadosCrud[i].materia);
			printf ("Data de entrega da atividade: %d/%d/%d\n", dadosCrud[i].dia, dadosCrud[i].mes, dadosCrud[i].ano);
			printf ("Pontuação da atividade: %.2f\n", dadosCrud[i].nota);
			if (dadosCrud[i].progresso==0) {
				printf ("Estado da atividade: Não iniciada.\n");
			} else if (dadosCrud[i].progresso==1) {
				printf ("Estado da atividade: Iniciada.\n");
			} else {
				printf ("Estado da atividade: Finalizada.\n");
			}
			printf ("========================================================================================\n");
			flag=1;
		} else if (cod==0) {
			printf ("========================================================================================\n");
			printf ("Código da atividade: %d\n", dadosCrud[i].id);
			printf ("Descrição da atividade: %s\n", dadosCrud[i].descr);
			printf ("Disciplina da atividade: %s\n", dadosCrud[i].materia);
			printf ("Data de entrega da atividade: %d/%d/%d\n", dadosCrud[i].dia, dadosCrud[i].mes, dadosCrud[i].ano);
			printf ("Pontuação da atividade: %.2f\n", dadosCrud[i].nota);
			if (dadosCrud[i].progresso==0) {
				printf ("Estado da atividade: Não iniciada.\n");
			} else if (dadosCrud[i].progresso==1) {
				printf ("Estado da atividade: Iniciada.\n");
			} else {
				printf ("Estado da atividade: Finalizada.\n");
			}
			printf ("========================================================================================\n");
			flag=1;
		}
	}
	if (flag=0) {
		printf ("Código não encontrado!\n");
	}
}
//==================================================================================================

//FUNÇÃO ESPECÍFICA DO CONTEXTO DE DADOS
void alteraEstado (int cont, struct list dados[]) {
	int cod, i, atv, flag=0;
	printf ("Digite o código da atividade que deseja alterar o estado: ");
	scanf ("%d", &cod);
	for (i=0; i<cont; i++) {
		if (cod==dados[i].id) {
			printf ("Digite '1' para 'Atividade iniciada.' ou '2' para 'Atividade finalizada.': ");
			scanf ("%d", &atv);
			switch (atv) {
				case 1:
					dados[i].progresso=1;
					printf ("Estado da atividade %d alterado para 'Atividade iniciada.\n'", dados[i].id);
					flag=1;
					break;
				case 2:
					dados[i].progresso=2;
					printf ("Estado da atividade %d alterado para 'Atividade finalizada.\n'", dados[i].id);
					flag=1;
					break;
			}
		}
	}
	if (flag==0) {
		printf ("Código não encontrado.\n");
	}
}

void apresentaResumo (int cont, struct list dados[]) {
	int i, contNI=0, contIn=0, contFi=0;
	for (i=0; i<cont; i++) {
		if (dados[i].progresso==0) {
			contNI++;
		} else if (dados[i].progresso==1) {
			contIn++;
		} else {
			contFi++;
		}
	}

	printf ("Você possui %d atividades não iniciadas, %d atividades iniciadas e %d atividades finalizadas.\n", contNI, contIn, contFi);
}

void recomendaAtividade(struct list dados[], int cont) {
	int dia, mes, ano=2020, i, cod, menorMes, menorDia;
	menorDia=dados[0].dia;
	menorMes=dados[0].mes;
	cod=0;
	for (i=1; i<cont; i++) {
		if (dados[i].dia<=menorDia) {
			menorDia=dados[i].dia;
			cod=i;
		}
	}
	for (i=1; i<cont; i++) {
		if (dados[i].mes<=menorMes) {
			menorMes=dados[i].mes;
			cod=i;
		}
	}
	printf ("Recomenda-se iniciar a Atividade %d, pois sua data de entrega está mais próxima (%d/%d/%d).\n", dados[cod].id, menorDia, menorMes, ano);
	//printf ("%d, %d, %d", dia, mes, ano);
}
//==================================================================================================

//PRINCIPAL
main () {
	setlocale(LC_ALL, "");
	struct list dados[3];
	int escMenu, cont=0, flag;
	char escCase;
	do {
		system ("cls");
		escMenu=leValidaOpcMenu();
		switch (escMenu) {
			case 1:
				do {
					system("cls");
					printf ("\t\t\tADICIONAR ATIVIDADE\n\n");
					dados[cont].id=leValidaID();
					leValidaDescr(dados[cont].descr);
					leValidaMat(dados[cont].materia);
					printf ("Digite a data de entrega: \n");
					do {
						dados[cont].dia=leValidaDia();
						dados[cont].mes=leValidaMes();
						flag= validaData(dados, cont);
					} while (flag==1);
					dados[cont].ano=2020;
					dados[cont].nota=leValidaNota();
					dados[cont].progresso=0;
					escCase = leValidaOpcCase();
					cont++;
				} while (escCase=='s'&&cont<3);
				break;
			case 2:
				do {
					system ("cls");
					printf ("\t\t\tLISTAR ATIVIDADES\n\n");
					listarAtividades (cont, dados);
					escCase = leValidaOpcCase();
				} while (escCase=='s');
				break;
			case 3:
				do {
					system ("cls");
					printf ("\t\t\tALTERAR ESTADO DE ATIVIDADE\n\n");
					alteraEstado (cont, dados);
					escCase = leValidaOpcCase();
				} while (escCase=='s');
				break;
			case 4:
				do {
					system ("cls");
					printf ("\t\t\tAPRESENTA RESUMO\n\n");
					apresentaResumo (cont, dados);
					recomendaAtividade(dados, cont);
					escCase = leValidaOpcCase2();
				} while (escCase!='m');
		}
	} while (escCase=='m');
}