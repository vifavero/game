#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define tam 7 // alterar para definir o nível de dificuldade;
// ESTRUTURA quadradinho: temBomba 0 ou 1, estaaberta 0 ou 1, vizinhos 0 a 4;
typedef struct
{
    int temBomba;
    int estaaberta;
    int vizinhos;
} quadradinho;


// função de introducao do jogo
void introducao()
{
    char letra;
    system("cls");
    printf(
        "\n####################################################################################################\n"
        "####################################################################################################\n"
        "############            ####            ####              ####          ######          ############\n"
        "############      ####    ##      ####    ##      ##########      ####    ##      ####    ##########\n"
        "############      ####    ##      ####    ##      ##########      ##########      ##################\n"
        "############            ####            ####            ######          ######          ############\n"
        "############      ##########    ####      ##      ####################    ############    ##########\n"
        "############      ##########    ####      ##      ##########    ######    ##    ######    ##########\n"
        "############      ##########    ####      ##              ####          ######          ############\n"
        "####################################################################################################\n"
        "####################################################################################################\n"
        "##############          ####              ####          ####            ####              ##########\n"
        "############      ####    ######      ######      ####    ##      ####    ######      ##############\n"
        "############      ##############      ######      ####    ##      ####    ######      ##############\n"
        "##############          ########      ######              ##            ########      ##############\n"
        "######################    ######      ######      ####    ##    ####      ######      ##############\n"
        "##############          ########      ######      ####    ##    ####      ######      ##############\n"
        "####################################################################################################\n"
        "--------------------------------DIGITE QUALQUER LETRA PARA INICIAR----------------------------------------\n");
    scanf(" %c", &letra);

    system("cls");
    return;
}

// função que vai printar a história do game
void historia()
{
    char letra;
    system("cls");

    printf("                                                                                                    \n"
           "                                  VOCE INVADIU UM BANCO, E A SUA PRIMEIRA                          \n"
           "                          MISSAO EH RESOLVER O ENIGMA PARA DESARMAR O ALARME. CUIDADO!             \n"
           "                                                                                                   \n"
           "                                                                                                    \n"
           "                                                     _ _.-'`-._ _                                    \n"
           "                                                    ;'____$____'.;                                  \n"
           "                                         _________n.[____________].n_________                        \n"
           "                                        |-_ $ _--_--||==||==||==||--_--_ $_--|                      \n"
           "                                        |+++++++++++||..||..||..||+++++++++++|                      \n"
           "                                        |LI LI LI LI||LI||LI||LI||LI LI LI LI|                      \n"
           "                                        |.. .. .. ..||..||..||..||.. .. .. ..|                      \n"
           "                                        |LI LI LI LI||LI||LI||LI||LI LI LI LI|                      \n"
           "                                    ,,;;,;;;,;;;,;;;,;;;,;;;,;;;,;;,;;;,;;;,;;,,                    \n"
           "                                    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                  \n");

    printf("--------------------------------------- DIGITE s PARA CONTINUAR----------------------------------------\n");

    scanf(" %c", &letra);
    system("cls");
    return;
}


// inicializando a matriz para remover os lixos;
void inicializartabuleiro(int linha, int coluna, quadradinho tabuleiro[tam][tam])
{
    for (linha = 0; linha < tam; linha++)
    {
        for (coluna = 0; coluna < tam; coluna++)
        {
            // se for esta aberta == 1, tabuleiro fechado, se estabaerto == 0 enato tabuleiro aberto
            tabuleiro[linha][coluna].estaaberta = 0;
            tabuleiro[linha][coluna].temBomba = 0;
            tabuleiro[linha][coluna].vizinhos = 0;
        }
    }
    // declaracao das bombas
    tabuleiro[0][2].temBomba = 1;
    tabuleiro[0][6].temBomba = 1;
    tabuleiro[1][1].temBomba = 1;
    tabuleiro[1][4].temBomba = 1;
    tabuleiro[2][3].temBomba = 1;
    tabuleiro[3][2].temBomba = 1;
    tabuleiro[4][3].temBomba = 1;
    tabuleiro[5][1].temBomba = 1;
    tabuleiro[6][0].temBomba = 1;
    tabuleiro[6][5].temBomba = 1;
}


// função que dirá se um par de coordenadas será válido ou não; 1 é válido; 0 não é válido;
int coordenadaehvalida(int linha, int coluna, quadradinho tabuleiro[tam][tam])
{
    return (linha >= 0 && linha < tam && coluna >= 0 && coluna < tam);
}

// função que exibe a quantidade de erros na vizinhança
int qtderrosvizinhos(int linha, int coluna, quadradinho tabuleiro [tam][tam])
{
    int quantidade = 0;

    if (coordenadaehvalida(linha - 1, coluna, tabuleiro) && tabuleiro[linha - 1][coluna].temBomba == 1)
    {
        quantidade++;
    }
    if (coordenadaehvalida(linha + 1, coluna, tabuleiro) && tabuleiro[linha + 1][coluna].temBomba == 1)
    {
        quantidade++;
    }
    if (coordenadaehvalida(linha, coluna + 1, tabuleiro) && tabuleiro[linha][coluna + 1].temBomba == 1)
    {
        quantidade++;
    }
    if (coordenadaehvalida(linha, coluna - 1, tabuleiro) && tabuleiro[linha][coluna - 1].temBomba == 1)
    {
        quantidade++;
    }
    return quantidade;
}

// contando a quantidade de erros vizinhos
void contarerros(int linha, int coluna, quadradinho tabuleiro[tam][tam])
{
    for (linha = 0; linha < tam; linha++)
    {
        for (coluna = 0; coluna < tam; coluna++)
        {
            tabuleiro[linha][coluna].vizinhos = qtderrosvizinhos(linha, coluna, tabuleiro);
        }
    }
}

// função para abrir a coordenada digitada pelo usuário
void abrirquadrado(int linha, int coluna, quadradinho tabuleiro [tam][tam], int *casaAberta)
{
    // Verifica se a coordenada é válida e se o quadrado ainda não está aberto
    if (coordenadaehvalida(linha, coluna, tabuleiro) && tabuleiro[linha][coluna].estaaberta == 0)
    {
        // Marca o quadrado como aberto
        tabuleiro[linha][coluna].estaaberta = 1;
        // Incrementa o contador de casas abertas
        (*casaAberta) = *casaAberta + 1;

        // // Se não há bombas na vizinhança, abre os quadrados vizinhos
        if (tabuleiro[linha][coluna].vizinhos == 0)
        {
            abrirquadrado(linha - 1, coluna, tabuleiro, casaAberta); // Abre quadrado acima
            abrirquadrado(linha, coluna - 1, tabuleiro, casaAberta); // Abre quadrado à esquerda
        }
    }
}

// função para identificar se há um ganhador; 1-ganhou, 0-não ganhou
int ganhou(int linha, int coluna, quadradinho tabuleiro[tam][tam],int casaAberta)
{
    int cony = 0;
    for (linha = 0; linha < tam; linha++)
    {
        for (coluna = 0; coluna < tam; coluna++)
        {
            if (casaAberta == 39 && tabuleiro[linha][coluna].temBomba == 0)
            {
                cony = 1;
                return cony;
            }
        }
    }
    return cony;
}


// função para imprimir o jogo
void imprimir(int linha, int coluna, quadradinho tabuleiro[tam][tam])
{
    system("cls");
    printf("\n\n\t   ");
    for (coluna = 0; coluna < tam; coluna++)
    {
        printf("    %d ", coluna); // índices das colunas
    }
    printf("\n\t     -------------------------------------------\n");
    //num de casa abertas - caso queria ver adicione casaAberta como paramentro da funcao
    // printf("%d", casaAberta);

    for (linha = 0; linha < tam; linha++)
    {
        printf("\t%d    |", linha); // índices das linhas
        for (coluna = 0; coluna < tam; coluna++)
        {
            // se tabuleiro esta aberto e voce nao foi pego
            if (tabuleiro[linha][coluna].estaaberta == 1)
            {
                if (tabuleiro[linha][coluna].temBomba == 0)
                {
                    // Mapeia o número de bombas vizinhas para letras
                    char displayChar;
                    switch (tabuleiro[linha][coluna].vizinhos)
                    {
                    case 0:
                        displayChar = 'E';
                        break;
                    case 1:
                        displayChar = 'U';
                        break;
                    case 2:
                        displayChar = '!';
                        break;
                    case 3:
                        displayChar = 'T';
                        break;
                    case 4:
                        displayChar = 'Q';
                        break;
                    default:
                        displayChar = '?';
                        break;
                    }
                    printf("  %c  ", displayChar);
                }
            }
            else
            {
                printf("     ");
            }
            printf("|");
        }
        printf("\n\t     -------------------------------------------\n");
    }
}


// funcao da segunda parte - se voce nao foi pego, ou seja, se o alarme nao tocou
void continuacao()
{

    char letra;
    system("cls");
    printf("AGORA QUE VOCE ESTA NO BANCO, VOCE PRECISA DESCRIPTOGRAFAR A SENHA\nDO COMPUTADOR DA GERENTE PARA CONSEGUIR FAZER ALGUNS DEPOSITOS NA SUA CONTA.\n");
    printf("\n");

    printf("              t r 1 t 1 s        \n "
           "         ._________________.  \n "
           "         |.---------------.|  \n "
           "         ||               ||  \n "
           "         ||   -._ .-.     ||   \n"
           "          ||   -._| | |    ||  \n "
           "         ||   -._|-|-|    ||  \n "
           "         ||   -._|.-.|    ||  \n "
           "         ||_______________||  \n "
           "         /.-.-.-.-.-.-.-.- \\    \n"
           "         /.-.-.-.-.-.-.-.-.- \\   \n "
           "       /.-.-.-.-.-.-.-.-.-.- \\    \n"
           "       /______/_________\\____  \\   \n"
           "       \\_______________________/    \n");

    printf("----APERTE QUALQUER TECLA PARA CONTINUAR----\n");
    scanf(" %c", &letra);
    system("cls");

    char palavra[6] = "tetris"; // senha pré-definida
    char forca[10];
    char tentativa;
    int chances = 3;
    int letras, cont;
    int j = 0;

    // calula o tamanho da palavra e atribui a uma variavel
    letras = 6;
    // para todo o tamanho da palavra adiciona '_'
    for (int u = 0; u < letras; u++)
    {
        forca[u] = '_';
    }

    // condiçao para verificaçao - se chances for maior que zero ent esta aberta para receber tentativas
    while (chances > 0)
    {
        system("cls"); // testando se vai dar certo limpar o terminal;
        printf("\nVoce tem %d chances - a palavra tem %d letras\n", chances, letras - 1);
        printf("\nDIGITE AS LETRAS EM minusculo\n");
        printf("Observacao - Sua chance so eh gasta se erra a letra ou se a repete\n\n");
        for (int k = 0; k < letras; k++)
        {
            printf("%c ", forca[k]);
        }
        printf("\n\nDigite uma letra: ");
        scanf(" %c", &tentativa);

        cont = 0;
        for (int i = 0; i < letras; i++)
        {
            // se palavra no indice i for igual a tentativA
            // e se nao foi digitada entao entra no if
            if (palavra[i] == tentativa && forca[i] == '_')
            {
                forca[i] = tentativa;
                cont = 1;
                j = j + 1;
            }
        }

        // contagem das chances, se chances for == 0 ent vc foi preso
        if (cont == 0)
        {
            chances--;
        }

        // se j que esta sendo alterada no if apenas se tentativa == palavra[i]
        // for do mesmo tamanho da palavra entao quebra o loop
        if (j == letras)
        {
            break;
        }
    }

    // condiçao para verificar quantiade de chances
    // se elas se esgotaram entao voce foi preso
    if (chances == 0)
    {
        system("cls");
        printf("\nINFELIZMENTE VOCE FEZ MUITAS TENTATIVAS, O SEU IP FOI RASTREADO E VOCE FOI PRESO!\n");
        printf("\n");
        printf("                       ______/_____\\_________                              \n");
        printf("                     //|           |        \\                            \n");
        printf("                   //  |           |          \\                          \n");
        printf("      ___________//____|___________|__________()__________________       \n");
        printf("    /__________________|_=_________|_=___________|_________________{}    \n");
        printf("    [           ______ |   POLICIA | .           | ==  ______      { }   \n");
        printf("  __[__        /##  ##\\|           |             |    /##  ##\\    _{# }_ \n");
        printf(" {_____)______|##    ##|___________|_____________|___|##    ##|__(______}\n");
        printf("             /  ##__##                              /  ##__##        \\   \n");
        printf("\n");
        printf("             -------APERTE QUALQUER TECLA PARA CONTINUAR-------\n");
        scanf(" %c", &letra);
        return;
    }
    // senao voce conseguiu, vitoria!
    else
    {
        system("cls");
        printf("\n VOCE CONSEGUIU DESBLOQUEAR O COMPUTADOR E TRANFERIR O DINHEIRO!\n");
        printf("                                                           \n");
        printf("                        ##                        \n");
        printf("                  ################                \n");
        printf("                  ################                \n");
        printf("                                                  \n");
        printf("                  ################                \n");
        printf("              ########################            \n");
        printf("            ############    ############          \n");
        printf("          ############        ############        \n");
        printf("        ############    ####    ############      \n");
        printf("        ############          ##############      \n");
        printf("      ################          ############      \n");
        printf("      ##############    ####    ############      \n");
        printf("      ##############            #############     \n");
        printf("      ##################    ################      \n");
        printf("          ################################        \n");
        printf("             ##########################            \n");
        printf("                                                  \n");
        printf("       -------DIGITE S PARA FINALIZAR-------\n");
        scanf(" %c", &letra);
    }
    system("cls");
    return;
}


// função para realizar a jogada
void play(int linha, int coluna, quadradinho tabuleiro[tam][tam], int *casaAberta)
{
    char letra;
    do
    {
        //caso passe a casaAberta como paramentro da funcao para ver num de casa abertas 
        //ent aqui deve ser adicionada como *casaAberta
        imprimir(linha,coluna, tabuleiro);
        do
        {
            printf("\nDigite as coordenadas de linha e coluna: ");
            scanf("%d%d", &linha, &coluna);
            if (coordenadaehvalida(linha, coluna, tabuleiro) == 0)
            {
                printf("A coordenada digitada eh invalida!");
            }
        } while (coordenadaehvalida(linha, coluna,tabuleiro) == 0 || tabuleiro[linha][coluna].estaaberta == 1);

        abrirquadrado(linha, coluna, tabuleiro, casaAberta);

    } while (ganhou(linha, coluna, tabuleiro,*casaAberta) == 0 && tabuleiro[linha][coluna].temBomba == 0);

    // condicao que verifica se soou o alarme ou
    // se foi entao voce tocou o alarme e 'morreu'
    if (tabuleiro[linha][coluna].temBomba == 1)
    {
        system("cls");
        // printf("%d", *casaAberta);
        printf("\n\tO ALARME TOCOU E VOCE FOI ATINGIDO POR UMA 'EXPLOSAO DE TINTA'!\n");

        printf("\n                     @@@@@@@@@@@@@@@                 \n"
               "                 @@@@@@             @@@@@@                \n"
               "              @@@@                       @@@@              \n"
               "            @@                               @@           \n"
               "          @@                                  @@          \n"
               "          @ @@                             @@ @          \n"
               "          @  @@                           @@  @          \n"
               "           @ @@   @@@@@@@@     @@@@@@@@   @@ @           \n"
               "    @@       @@  @@@@@@@@       @@@@@@@@@  @@      @@@   \n"
               "   @@@@     @@   @@@@@@@   @@@   @@@@@@@   @@     @@@@@  \n"
               " @@    @@@@  @@          @@@@@@@          @@  @@@@    @@ \n"
               "@         @@@@@@@@       @@@@@@@       @@@@@@@@@        @\n"
               "  @@@@ @@@@      @@@@@              @@@ @@     @@@@@@ @@ \n"
               "          @@@@@  @@@  @@           @@  @@@  @@@@@        \n"
               "              @@@@@ @@ @@@@@@@@@@@ @@ @@@@@              \n"
               "                @@@  @ @ @ @ @ @ @ @   @@@@              \n"
               "            @@@@ @@   @@@@@@@@@@@@@   @@ @@@@            \n"
               "    @@@@@@@@@     @@                 @@      @@@@@@@@    \n"
               "    @@     @@@@@     @@@@@@@@@@@@@@@     @@@@@     @@    \n"
               "      @   @@@           @@@@@@@@@           @@@   @      \n"
               "       @@@                                     @@@       \n");
        return;
    }
    // senao voce desarmou o alarme e sera direcionado a segunda parte
    else
    {
        system("cls");
        // printf("%d", *casaAberta);
        printf("\n\tSUCESSO EM DESARMAR O ALARME!\n");
        printf("                                          \n"
               "                           --..                     \n"
               "                     ##--....  ##                   \n"
               "                   --....  ..  ##                   \n"
               "             ##--..        ..  ##                   \n"
               "   @@--------..            ..  ##                   \n"
               "   @@........      ........--  ##    ##::      MM   \n"
               " --@@--  ##--..............--  ##MM    ####  MM     \n"
               "   @@--  ##----............--  ##MM##    @@MM       \n"
               " ::@@::  ##::--------------::..######  ##@@##MM     \n"
               "   @@++  ++++::::----------::..##mm    @@    ####   \n"
               "   @@::::::::--::::::::::++::..##                   \n"
               "     ########    --::::::::::::##                   \n"
               "               ##  --::::::::::##                   \n"
               "                       ----::::##                   \n"
               "                           ::--##                   \n");
        printf(" ----------- DIGITE s PARA CONTINUAR! ------------\n");
        scanf(" %c", &letra);
    }
    system("cls");
    return continuacao();
    return;
}


int main(void)
{
    int opcao;
    int casaAberta;
    int linha = 0;
    int coluna =  0;         
    quadradinho tabuleiro[tam][tam]; 

    // roda o programa enquanto o usuario digita 1
    do
    {
        casaAberta = 0;
        introducao();
        historia();
        inicializartabuleiro(linha,coluna,tabuleiro);
        contarerros(linha,coluna,tabuleiro);
        printf("\n\t-----DESCRIPTOGRAFE A ARTE!-------\n");
        play(linha, coluna, tabuleiro,&casaAberta);

        printf("\n\n DIGITE 1 PARA JOGAR NOVAMENTE! \n\n DIGITE 0 PARA ENCERRAR! \n");
        scanf("%d", &opcao);
    } while (opcao == 1);

    system("cls");

    return 0;
}
