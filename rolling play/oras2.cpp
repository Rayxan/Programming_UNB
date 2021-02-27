#include<bits/stdc++.h>
int main () {
	int mat[50][20], i, j, m, somaLin=0, somaCol=0, contLin=0, contCol=0, lin[3], col[3], flag[3], flag2=0;
	srand(time(NULL));
	for (i=0; i<3; i++) { //Gera os elementos da matriz
		for (j=0; j<3; j++) {
			mat[i][j]=rand()%10;
			flag[j]=j; //Vetor auxiliar de comparação para o somátorio das colunas
		}
	}

	for (i=0; i<3; i++) {//Apresenta a matriz
		for (j=0; j<3; j++) {
			printf ("%d ", mat[i][j]);
		}
		printf ("\n");
	}

	for (i=0; i<3; i++) {
		somaLin = 0;// reseta o somátorio para prosseguir com a proxima linha
		for (j=0; j<3; j++) {
			somaLin=somaLin+mat[i][j];//faz o somátorio de cada linha da matriz
			lin[contLin]=somaLin;//guarda o resultado do somátorio anterior em um vetor

		}
		contLin = contLin + 1;//altera o indice do vetor onde ficará guardado o resultado dos somatórios
	}
	
	do {
		for (i=0; i<3; i++) {
			for (j=0; j<3; j++) {
				if (j==flag[contCol]) { //Condição pra ele somar apenas quando o j possuir valor igual
					somaCol=somaCol+mat[i][j];
					col[contCol]=somaCol;
				}
			}
		}
		somaCol = 0; //resetar o somatório pra prosseguir pra proxima coluna
		contCol++;// pular para a proxima coluna
	} while (contCol<3); //Loop para pular as colunas
	
	for (i=0; i<3; i++) {
		printf ("%d ", lin[i]);// apresenta o somatório individual de cada linha
	}
	printf ("\n");
	for (i=0; i<3; i++) {
		printf ("%d ", col[i]);// apresenta o somatório individual de cada coluna
	}
    return 0;
}