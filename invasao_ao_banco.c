#include "std/io.h"
#include "std/string.h"

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

    sfill(0);
    __cursor = 0;

    prints("\n -----------ATAQUE AO BANCO!-----------\n\n");
    prints("\n      _|_|___________________|_|__    \n");
    prints("      |__:_________$___________:__|  \n");
    prints("      |___________________________|  \n");
    prints("      |__:_____________________:__|  \n");
    prints("      |___________________________|  \n");
    prints("        |_|___________________|_|    \n");
    prints("       /__.___________________.__\   \n");
    prints("      /__._____________________.__\  \n");
    prints("     /_____________________________\ \n");
    prints("        | |_|               |_| |    \n");
    prints("        | |                   | |    \n");
    prints("        | |                   | |    \n");
    prints("        |_|                   |_|    \n\n");
    prints("\n---APERTE QUALQUER LETRA PARA INICIAR---\n");
    getc();

    sfill(0);
    __cursor = 0;
    return 1;
}

// função que vai printar a história do game
void historia()
{

    sfill(0);
    __cursor = 0;

    prints("\n VOCE INVADIU UM BANCO,E A SUA PRIMEIRA");
    prints("\n   MISSAO EH RESOLVER O ENIGMA PARA    \n");
    prints("      DESARMAR O ALARME. CUIDADO!      \n\n");

    prints("\n              _ _.-'`-._ _             \n");
    prints("             ;'____$____'.;            \n");
    prints("  _________n.[____________].n_________ \n");
    prints(" |-_ $ _--_--||==||==||==||--_--_ $_--|\n");
    prints(" |+++++++++++||..||..||..||+++++++++++|\n");
    prints(" |LI LI LI LI||LI||LI||LI||LI LI LI LI|\n");
    prints(" |.. .. .. ..||..||..||..||.. .. .. ..|\n");
    prints(" |LI LI LI LI||LI||LI||LI||LI LI LI LI|\n");
    prints(" ,;;,;;;,;;;,;;;,;;;,;;;,;;;,;;,;;;,;;;\n");
    prints(" ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\n");

    prints("\n--APERTE QUALQUER LETRA PARA CONTINUAR--\n");

    getc();
    sfill(0);
    __cursor = 0;

    return 1;
}

// inicializando a matriz para remover os lixos;
void inicializartabuleiro(quadradinho tabuleiro[tam][tam], int linha, int coluna)
{

    for (linha = 0; linha < tam; linha++)
    {
        for (coluna = 0; coluna < tam; coluna++)
        {
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
int coordenadaehvalida(quadradinho tabuleiro[tam][tam], int linha, int coluna)
{
    return (linha >= 0 && linha < tam && coluna >= 0 && coluna < tam);
}

// função que exibe a quantidade de erros na vizinhança
// se tiverr bomba ent quantidade é incrementada e dps é passada para outra funcao
int qtderrosvizinhos(quadradinho tabuleiro[tam][tam], int linha, int coluna)
{
    int quantidade = 0;

    if (coordenadaehvalida(tabuleiro, linha - 1, coluna) && tabuleiro[linha - 1][coluna].temBomba == 1)
    {
        quantidade = quantidade + 1;
    }
    if (coordenadaehvalida(tabuleiro, linha + 1, coluna) && tabuleiro[linha + 1][coluna].temBomba == 1)
    {
        quantidade = quantidade + 1;
    }
    if (coordenadaehvalida(tabuleiro, linha, coluna + 1) && tabuleiro[linha][coluna + 1].temBomba == 1)
    {
        quantidade = quantidade + 1;
    }
    if (coordenadaehvalida(tabuleiro, linha, coluna - 1) && tabuleiro[linha][coluna - 1].temBomba == 1)
    {
        quantidade = quantidade + 1;
    }
    return quantidade;
}

// contando a quantidade de erros vizinhos
// recebe a varivel quantidade que possui quantidade de bombas
void contarerros(quadradinho tabuleiro[tam][tam], int linha, int coluna)
{
    for (linha = 0; linha < tam; linha++)
    {
        for (coluna = 0; coluna < tam; coluna++)
        {
            tabuleiro[linha][coluna].vizinhos = qtderrosvizinhos(tabuleiro, linha, coluna);
        }
    }
}

// abre os quadradinhos do tabuleiro
void abrirquadrado(quadradinho tabuleiro[tam][tam], int linha, int coluna, int *casaAberta)
{
    // Verifica se a coordenada é válida e se o quadrado ainda não está aberto
    if (coordenadaehvalida(tabuleiro, linha, coluna) && tabuleiro[linha][coluna].estaaberta == 0)
    {
        // Marca o quadrado como aberto
        tabuleiro[linha][coluna].estaaberta = 1;
        // Incrementa o contador de casas abertas
        (*casaAberta)++;

        // // Se não há bombas na vizinhança, abre os quadrados vizinhos
        if (tabuleiro[linha][coluna].vizinhos == 0)
        {
            abrirquadrado(tabuleiro, linha - 1, coluna, casaAberta); // Abre quadrado acima
            abrirquadrado(tabuleiro, linha, coluna - 1, casaAberta); // Abre quadrado à esquerda
        }
    }
}

// função para identificar se há um ganhador; 1-ganhou, 0-não ganhou
int ganhou(quadradinho tabuleiro[tam][tam], int linha, int coluna, int casaAberta)
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

void colu(int coluna)
{
    for (coluna = 0; coluna < tam; coluna++)
    {
        char s[10];
        // int que vc quer transformar, string de recebimento
        itos(coluna, s, 50);
        prints("    ");
        prints(s); // índices das colunas
    }

    prints("\n   ----------------------------------\n");
}
// função para imprimir o jogo
void imprimir(quadradinho tabuleiro[tam][tam], int linha, int coluna, int *casaAberta)
{
    sfill(0);
    __cursor = 0;

    // char lo[256];
    // // int que vc quer transformar, string de recebimento
    // itos(casaAberta, lo, 256);
    // prints(lo); // índices das colunas

    prints("\n\n");
    colu(coluna);

    for (linha = 0; linha < tam; linha++)
    {

        char t[10];
        itos(linha, t, 50);
        prints(" ");
        prints(t); // índices das linhas

        for (coluna = 0; coluna < tam; coluna++)
        {
            // se quadradinho esta aberto e voce nao foi pego
            // se o usuario digitar um coordenada diferente das wu etm bomba ent
            // casaABerta++;
            if (tabuleiro[linha][coluna].estaaberta == 1)
            {
                if (tabuleiro[linha][coluna].temBomba == 0)
                {
                    // Mapeia o número de bombas vizinhas para letras
                    char *displayChar;
                    if (tabuleiro[linha][coluna].vizinhos == 0)
                    {
                        displayChar = "E";
                    }
                    if (tabuleiro[linha][coluna].vizinhos == 1)
                    {
                        displayChar = "U";
                    }
                    if (tabuleiro[linha][coluna].vizinhos == 2)
                    {
                        displayChar = "!";
                    }
                    if (tabuleiro[linha][coluna].vizinhos == 3)
                    {
                        displayChar = "T";
                    }
                    if (tabuleiro[linha][coluna].vizinhos == 4)
                    {
                        displayChar = "Q";
                    }
                    prints("  ");
                    prints(displayChar);
                    prints(" ");
                }
            }
            else
            {
                prints("    ");
            }
            prints("|");
        }
        prints("\n   ----------------------------------\n");
    }
}

// função para realizar a jogada
void play(quadradinho tabuleiro[tam][tam], int linha, int coluna, int *casaAberta)
{

    char letra;
    do
    {
        imprimir(tabuleiro, linha, coluna, casaAberta);
        do
        {
            prints("\nDigite as coordenadas de linha e coluna:");
            linha = getc() - '0';
            char pr[10];
            itos(linha, pr, 50);
            prints(pr);
            prints(" ");

            coluna = getc() - '0';

            char pri[10];
            itos(coluna, pri, 50);
            prints(pri);
            prints("\n\n------------APERTE 'ENTER'--------------");
            getc();

            if (coordenadaehvalida(tabuleiro, linha, coluna) == 0)
            {
                prints("A coordenada digitada eh invalida!");
            }
        } while (coordenadaehvalida(tabuleiro, linha, coluna) == 0 || tabuleiro[linha][coluna].estaaberta == 1);

        abrirquadrado(tabuleiro, linha, coluna, &casaAberta);
    } while (ganhou(tabuleiro, linha, coluna, casaAberta) == 0 && tabuleiro[linha][coluna].temBomba == 0);

    // condicao que verifica se soou o alarme ou
    // se foi entao voce tocou o alarme e 'morreu'
    if (tabuleiro[linha][coluna].temBomba == 1)
    {
        sfill(0);
        __cursor = 0;

        prints("\n    O ALARME TOCOU E VOCE FOI ATINGIDO\n");
        prints("\n       POR UMA 'EXPLOSAO DE TINTA'!   \n\n");
        prints("\n          4$$c              .$$r   \n");
        prints("         ^$$$b              e$$$   \n");
        prints("         ^$$$b              e$$$   \n");
        prints("         d$$$$$e          z$$$$$b  \n");
        prints("        4$$$*$$$$$c    .$$$$$*$$$r \n");
        prints("        4$$$*$$$$$c    .$$$$$*$$$r \n");
        prints("         **    **$$$be$$$*    **   \n");
        prints("                  *$$$$*           \n");
        prints("                  *$$$$*           \n");
        prints("                .d$$P$$$b          \n");
        prints("              d$$P     ^$$$b       \n");
        prints("              d$$P     ^$$$b       \n");
        prints("           .ed$$$*      *$$$be.    \n");
        prints("           .ed$$$*      *$$$be.    \n");
        prints("         $$$$$$P          *$$$$$$  \n");
        prints("         $$$$$$P          *$$$$$$  \n");
        prints("        4$$$$$P            $$$$$$* \n");
        prints("         **$$$*            ^$$P    \n");
        prints("            **              ^*     \n");

        return 0;
    }
    // senao voce desarmou o alarme e sera direcionado a segunda parte
    else
    {
        sfill(0);
        __cursor = 0;

        prints("\n------SUCESSO EM DESARMAR O ALARME!-----\n");

        prints("\n            ##############\n");
        prints("            ##          ##\n");
        prints("            ##          ##\n");
        prints("            ##..........##\n");
        prints("            ##..........##\n");
        prints("                ......    \n");
        prints("              ##......##  \n");
        prints("                ##..##    \n");
        prints("                ##..##    \n");
        prints("                  ..      \n");
        prints("                ##..##    \n");
        prints("                ##..##    \n");
        prints("              ##  ..  ##  \n");
        prints("                  ..      \n");
        prints("            ##    ..    ##\n");
        prints("            ##..........##\n");
        prints("            ##  ......  ##\n");
        prints("            ##  ......  ##\n");
        prints("            ##..........##\n");
        prints("            ##############\n");
        prints("\n\n--APERTE QUALQUER TECLA PARA CONTINUAR--\n");
        getc();
    }
    sfill(0);
    __cursor = 0;

    return continuacao();
    return 1;
}

// funcao da segunda parte - se voce nao foi pego, ou seja, se o alarme nao tocou
void continuacao()
{
    sfill(0);
    __cursor = 0;

    prints("\n\n   AGORA QUE VOCE ESTA NO BANCO, VOCE \n");
    prints("   PRECISA DESCRIPTOGRAFAR A SENHA DO \n");
    prints("  COMPUTADOR DA GERENTE PARA CONSEGUIR\n");
    prints("  FAZER ALGUNS DEPOSITOS NA SUA CONTA.\n\n\n");

    prints("              c 8 u v 4 s           \n");
    prints("          ._________________.        \n");
    prints("          |.---------------.|        \n");
    prints("          ||               ||        \n");
    prints("          ||   -._ .-.     ||        \n");
    prints("          ||   -._| | |    ||        \n");
    prints("          ||   -._|-|-|    ||        \n");
    prints("          ||   -._|.-.|    ||        \n");
    prints("          ||_______________||        \n");
    prints("          /.-.-.-.-.-.-.-.- \\       \n");
    prints("         /.-.-.-.-.-.-.-.-.- \\      \n");
    prints("        /.-.-.-.-.-.-.-.-.-.- \\     \n");
    prints("       /______/_________\\____ \\    \n");
    prints("       \\_______________________/    \n\n\n");
    prints("\n----APERTE 'y' PARA CONTINUAR----\n");
    getc();

    sfill(0); // zerei a tela
    __cursor = 0;

    char palavra[7];
    palavra[0] = 'c';
    palavra[1] = 'h';
    palavra[2] = 'u';
    palavra[3] = 'v';
    palavra[4] = 'a';
    palavra[5] = 's';
    palavra[6] = '\0';
    char forca[10];
    char *tentativa;
    int chances = 3;
    // tamanho da palavra + 1
    int letras = 6;
    int j = 0;
    int cont = 0;

    for (int u = 0; u < letras; u++)
    {
        forca[u] = '_';
    }

    // condiçao para verificaçao - se chances for maior que zero ent esta aberta para receber tentativas
    while (chances > 0)
    {
        sfill(0);
        __cursor = 0; // limpar a tela

        // prints("Voce tem %d chances - a palavra tem %d letras\n", chances, letras - 1);
        prints("\n\n Voce tem ");
        char ch[10];
        itos(chances, ch, 10);
        prints(ch);
        prints(" chances para acertar a senha ");
        prints("    a palavra tem 6 letras, boa sorte!\n");
        prints("\n\n----DIGITE AS LETRAS EM 'minusculo'-----\n");
        prints("\n  Observacao - sua chance so eh gasta\n");
        prints("    se errar a letra ou se a repete  \n");

        prints("\n\n\nDigite uma letra: ");

        for (int k = 0; k < letras; k++)
        {
            printc(forca[k]);
        }

        *tentativa = getc();

        // prints(forca[3]);
        // scans(tentativa, 1);
        // forca[1] = *tentativa;
        // printc(forca[1]);

        cont = 0;
        for (int i = 0; i < letras; i++)
        {
            if (*tentativa == palavra[i] && forca[i] == '_')
            {
                // prints(palavra[2]);
                // printc(*tentativa);
                // prints("\n\nAPERTE ENTER!");
                // getc();
                forca[i] = *tentativa;
                cont = 1;
                j = j + 1;
            }
        }

        // contagem das chances, se chances for == 0 ent vc foi preso
        if (cont == 0)
        {
            chances = chances - 1;
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
        sfill(0);
        __cursor = 0;

        prints("\n");
        prints("\n INFELIZMENTE VOCE FEZ MUITAS TENTATIVAS\n");
        prints(" O SEU IP FOI RASTREADO E VOCE FOI PRESO");
        prints("\n                 __//__             \n");
        prints("                 __//__             \n");
        prints("                `**//**`            \n");
        prints("      ____________/__/____________  \n");
        prints("      ____________/__/____________  \n");
        prints("     /__________POLICIA__________/ \n");
        prints("       __||__||__/.--./__||__||__   \n");
        prints("       __||__||__/.--./__||__||__   \n");
        prints("    /__|___|___ (  xx  )___|___|__/ \n");
        prints("    /__|___|___ (  xx  )___|___|__/ \n");
        prints("                _/`--`/_            \n");
        prints("               (/------/)           \n");
        prints("               (/------/)           \n\n\n");

        return 0;
    }
    // senao voce conseguiu, vitoria!
    else if (chances != 0)
    {
        sfill(0);
        __cursor = 0;

        prints("\n      VOCE CONSEGUIU DESBLOQUEAR O \n");
        prints("   COMPUTADOR E TRANFERIR O DINHEIRO!         ");
        prints("\n\n                                     \n");
        prints("                  #####                \n");
        prints("             ##############          \n");
        prints("             ##############          \n");
        prints("                                       \n");
        prints("             ##############          \n");
        prints("         ######################      \n");
        prints("       ##########    ############    \n");
        prints("     ##########        ############  \n");
        prints("     ##########        ############  \n");
        prints("    #########    ####    ########### \n");
        prints("   ##########          ##############\n");
        prints("  #############          ############\n");
        prints("  ###########    ####    ############\n");
        prints("  ############            ############\n");
        prints("  ###########            ############\n");
        prints("   ##############    ############### \n");
        prints("   ##############    ############### \n");
        prints("    ##############################   \n");
        prints("    ##############################   \n");
        prints("        #######################      \n");
        prints("                                     \n\n");
        prints("--APERTE QUALQUER TECLA PARA CONTINUAR--\n");
        getc();
    }

    sfill(0);
    __cursor = 0;

    return 1;
}


int main()
{
    int opcao;
    int casaAberta;
    int linha;
    int coluna;
    quadradinho tabuleiro[tam][tam];

    // roda o programa enquanto o usuario digita 1
    do
    {
        casaAberta = 0;
        introducao();
        historia();
        inicializartabuleiro(tabuleiro, linha, coluna);
        contarerros(tabuleiro, linha, coluna);
        play(tabuleiro, linha, coluna, casaAberta);

        prints("\n\nDIGITE 1 PARA JOGAR NOVAMENTE!");
        prints("\n\nDIGITE 0 PARA ENCERRAR! \n");
        opcao = getc() - '0';
    } while (opcao == 1);

    sfill(0);
    __cursor = 0;

    return 0;
}
