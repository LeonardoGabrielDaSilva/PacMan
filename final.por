programa
{
	inclua biblioteca Graficos --> g
	inclua biblioteca Teclado --> t
	inclua biblioteca Util --> u
	logico iniciar_jogo = falso
	inteiro dirp = u.sorteia(0, 1)
	inteiro dirr = u.sorteia(0, 1)
	inteiro diry = u.sorteia(0, 1)
	inteiro dirg = u.sorteia(0, 1)
	inteiro tempo1
	inteiro tempo2 
	inteiro tempo3 
	inteiro tempo4
	inteiro tempo5
	inteiro tempo6
	cadeia Tempo_Pilula = "Sem Pílula"
	inteiro px = 20
	inteiro py = 18
	inteiro yx = 8
	inteiro yy = 18
	inteiro rx = 8
	inteiro ry = 18
	inteiro gx = 8
	inteiro gy = 18
	inteiro pix = 8
	inteiro piy = 18
	inteiro x = 1
	inteiro o = 2
	inteiro pi = 4
	inteiro p = 2
	inteiro dirpa = 0
	inteiro Pontos = 0
	logico Primeira_Pilula = falso
	inteiro mapa, pacman, comida, vermelho, verde, amarelo, rosa, pilula, pacman0, pacman1, pacman2, pacman3, azul,
	fantasma1, fantasma2, fantasma3, fantasma4
	real pacmanx, pacmany, redx, redy, greenx, greeny, pinkx, pinky, yellowx, yellowy
	logico poder = falso
	inteiro matriz[][]=     //1,2,3,4,5,6,7,8,9,0,1,2,3,4,5,6,7,8,9,0,1,2,3,4,5,6,7,8,9,0,1,2,3,4,5,6
					    {{x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x},
						{x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x},
						{x,o,x,x,x,x,x,o,x,x,x,x,x,x,x,x,o,x,x,o,x,x,x,x,x,x,x,x,o,x,x,x,x,x,o,x},
						{x,pi,x,x,x,x,x,o,x,x,x,x,x,x,x,x,o,x,x,o,x,x,x,x,x,x,x,x,o,x,x,x,x,x,pi,x},
						{x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x},
						{x,o,x,x,x,x,x,o,x,x,x,o,x,x,x,x,x,x,x,x,x,x,x,x,o,x,x,x,o,x,x,x,x,x,o,x},
						{x,o,o,o,o,o,o,o,x,x,x,o,o,o,o,o,o,x,x,o,o,o,o,o,o,x,x,x,o,o,o,o,o,o,o,x},
						{x,x,x,x,x,x,x,o,x,x,x,x,x,x,x,x,o,x,x,o,x,x,x,x,x,x,x,x,o,x,x,x,x,x,x,x},
						{x,x,x,x,x,x,x,o,x,x,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,x,x,o,x,x,x,x,x,x,x},
						{x,x,x,x,x,x,x,o,x,x,x,o,x,x,x,x,x,x,x,x,x,x,x,x,o,x,x,x,o,x,x,x,x,x,x,x},
						{6,3,3,3,3,3,5,o,o,o,o,o,x,x,x,x,x,x,x,x,x,x,x,x,o,o,o,o,o,5,3,3,3,3,3,6},
						{x,x,x,x,x,x,x,o,x,x,x,o,x,x,x,x,x,x,x,x,x,x,x,x,o,x,x,x,o,x,x,x,x,x,x,x},
						{x,x,x,x,x,x,x,o,x,x,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,x,x,o,x,x,x,x,x,x,x},
						{x,x,x,x,x,x,x,o,x,x,x,o,x,x,x,x,x,x,x,x,x,x,x,x,o,x,x,x,o,x,x,x,x,x,x,x},
						{x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x},
						{x,o,x,x,x,x,x,o,x,x,x,x,x,x,x,x,o,x,x,o,x,x,x,x,x,x,x,x,o,x,x,x,x,x,o,x},
						{x,pi,o,o,o,x,x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x,x,o,o,o,pi,x},
						{x,x,x,x,o,x,x,o,x,x,x,o,x,x,x,x,x,x,x,x,x,x,x,x,o,x,x,x,o,x,x,o,x,x,x,x},
						{x,o,o,o,o,o,o,o,x,x,x,o,o,o,o,o,o,x,x,o,o,o,o,o,o,x,x,x,o,o,o,o,o,o,o,x},
						{x,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,x,x,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,o,x},
						{x,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,o,x},
						{x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x}}

	
	funcao inicio()
	{
		pacmanx=367.0
		pacmany=436.0
		redx=367.0
		redy=175.0
		greenx=367.0
		greeny=175.0
		yellowx=367.0
		yellowy=175.0
		pinkx=367.0
		pinky=175.0
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(800, 537)
		pacman = g.carregar_imagem("Pacman Imagens/pacman.png")
		pacman0 = g.carregar_imagem("Pacman Imagens/pacman.png")
		pacman1 = g.carregar_imagem("Pacman Imagens/pacman1.png")
		pacman2 = g.carregar_imagem("Pacman Imagens/pacman2.png")
		pacman3 = g.carregar_imagem("Pacman Imagens/pacman3.png")
		comida = g.carregar_imagem("Pacman Imagens/comida.png")
		mapa = g.carregar_imagem("Pacman Imagens/Mapa/Mapa2.png")
		pilula = g.carregar_imagem("Pacman Imagens/pilula.png")
		vermelho = g.carregar_imagem("Pacman Imagens/Fantasma4.png")
		amarelo = g.carregar_imagem("Pacman Imagens/Fantasma3.png")
		rosa = g.carregar_imagem("Pacman Imagens/Fantasma1.png")
		verde = g.carregar_imagem("Pacman Imagens/Fantasma2.png")
		azul = g.carregar_imagem("Pacman Imagens/FantasmaA.png")
		fantasma1 =g.carregar_imagem("Pacman Imagens/Fantasma4.png")
		fantasma2 =g.carregar_imagem("Pacman Imagens/Fantasma2.png")
		fantasma3 =g.carregar_imagem("Pacman Imagens/Fantasma3.png")
		fantasma4 =g.carregar_imagem("Pacman Imagens/Fantasma1.png")
		
					
		tempo1=u.tempo_decorrido()
		tempo4=u.tempo_decorrido()
			
		enquanto(p==2){

		
			tempo6=u.tempo_decorrido()
			tempo2=u.tempo_decorrido()
			g.limpar()
			g.desenhar_imagem(10, 10, mapa)
			para(inteiro l=1;l<22;l++){
			para(inteiro j=1;j<36;j++){
				se(matriz[l][j]>1 e matriz[l][j]<3){
					g.desenhar_imagem(j*20+19, l*21.75+13, comida)	
				}
			}
		}
			para(inteiro l=1;l<22;l++){
			para(inteiro j=1;j<36;j++){
				se(matriz[l][j]==pi){
					g.desenhar_imagem(j*20+19, l*21.75+13, pilula)	
				}
			}
		}
		
			g.desenhar_imagem(pacmanx, pacmany, pacman)	
			g.desenhar_imagem(redx, redy, fantasma1)
			g.desenhar_imagem(greenx, greeny, fantasma2)
			g.desenhar_imagem(yellowx, yellowy, fantasma3)
			g.desenhar_imagem(pinkx, pinky, fantasma4)
			

			
			
			
			se(dirp==0 e matriz[pix][piy+1]>1 e matriz[pix][piy+1]<5){ 
				piy=piy+1
				pinkx=pinkx+20.1}
			se(dirp==1 e matriz[pix][piy-1]>1 e matriz[pix][piy-1]<5){
				piy=piy-1
				pinkx=pinkx-20.1}
			se(dirp==2 e matriz[pix-1][piy]>1 e matriz[pix-1][piy]<5){
				pix=pix-1
				pinky=pinky-21.75}
			se(dirp==3 e matriz[pix+1][piy]>1 e matriz[pix+1][piy]<5){
				pix=pix+1
				pinky=pinky+21.75}

			se(dirr==0 e matriz[rx][ry+1]>1 e matriz[rx][ry+1]<5){ 
				ry=ry+1
				redx=redx+20.1}
			se(dirr==1 e matriz[rx][ry-1]>1 e matriz[rx][ry-1]<5){
				ry=ry-1
				redx=redx-20.1}
			se(dirr==2 e matriz[rx-1][ry]>1 e matriz[rx-1][ry]<5){
				rx=rx-1
				redy=redy-21.75}
			se(dirr==3 e matriz[rx+1][ry]>1 e matriz[rx+1][ry]<5){
				rx=rx+1
				redy=redy+21.75}

			se(dirg==0 e matriz[gx][gy+1]>1 e matriz[gx][gy+1]<5){  
				gy=gy+1
				greenx=greenx+20.1}
			se(dirg==1 e matriz[gx][gy-1]>1 e matriz[gx][gy-1]<5){
				gy=gy-1
				greenx=greenx-20.1}
			se(dirg==2 e matriz[gx-1][gy]>1 e matriz[gx-1][gy]<5){
				gx=gx-1
				greeny=greeny-21.75}
			se(dirg==3 e matriz[gx+1][gy]>1 e matriz[gx+1][gy]<5){
				gx=gx+1
				greeny=greeny+21.75}

			se(diry==0 e matriz[yx][yy+1]>1 e matriz[yx][yy+1]<5){ 
				yy=yy+1
				yellowx=yellowx+20.1}
			se(diry==1 e matriz[yx][yy-1]>1 e matriz[yx][yy-1]<5){
				yy=yy-1
				yellowx=yellowx-20.1}
			se(diry==2 e matriz[yx-1][yy]>1 e matriz[yx-1][yy]<5){
				yx=yx-1
				yellowy=yellowy-21.75}
			se(diry==3 e matriz[yx+1][yy]>1 e matriz[yx+1][yy]<5){
				yx=yx+1
				yellowy=yellowy+21.75}


			
			se(((matriz[pix+1][piy]>1 e matriz[pix+1][piy]<5) e (matriz[pix][piy-1]>1 e matriz[pix][piy-1]<5))ou
			((matriz[pix+1][piy]>1 e matriz[pix+1][piy]<5) e (matriz[pix][piy+1]>1 e matriz[pix][piy+1]<5))ou
			((matriz[pix-1][piy]>1 e matriz[pix-1][piy]<5) e (matriz[pix][piy+1]>1 e matriz[pix][piy+1]<5))ou
			((matriz[pix-1][piy]>1 e matriz[pix-1][piy]<5) e (matriz[pix][piy-1]>1 e matriz[pix][piy-1]<5))){
				dirp = u.sorteia(0, 3)
			}

			se(((matriz[rx+1][ry]>1 e matriz[rx+1][ry]<5) e (matriz[rx][ry-1]>1 e matriz[rx][ry-1]<5))ou
			((matriz[rx+1][ry]>1 e matriz[rx+1][ry]<5) e (matriz[rx][ry+1]>1 e matriz[rx][ry+1]<5))ou
			((matriz[rx-1][ry]>1 e matriz[rx-1][ry]<5) e (matriz[rx][ry+1]>1 e matriz[rx][ry+1]<5))ou
			((matriz[rx-1][ry]>1 e matriz[rx-1][ry]<5) e (matriz[rx][ry-1]>1 e matriz[rx][ry-1]<5))){
				dirr = u.sorteia(0, 3)
			}
			
			se(((matriz[gx+1][gy]>1 e matriz[gx+1][gy]<5) e (matriz[gx][gy-1]>1 e matriz[gx][gy-1]<5))ou
			((matriz[gx+1][gy]>1 e matriz[gx+1][gy]<5) e (matriz[gx][gy+1]>1 e matriz[gx][gy+1]<5))ou
			((matriz[gx-1][gy]>1 e matriz[gx-1][gy]<5) e (matriz[gx][gy+1]>1 e matriz[gx][gy+1]<5))ou
			((matriz[gx-1][gy]>1 e matriz[gx-1][gy]<5) e (matriz[gx][gy-1]>1 e matriz[gx][gy-1]<5))){
				dirg = u.sorteia(0, 3)
			}

			se(((matriz[yx+1][yy]>1 e matriz[yx+1][yy]<5) e (matriz[yx][yy-1]>1 e matriz[yx][yy-1]<5))ou
			((matriz[yx+1][yy]>1 e matriz[yx+1][yy]<5) e (matriz[yx][yy+1]>1 e matriz[yx][yy+1]<5))ou
			((matriz[yx-1][yy]>1 e matriz[yx-1][yy]<5) e (matriz[yx][yy+1]>1 e matriz[yx][yy+1]<5))ou
			((matriz[yx-1][yy]>1 e matriz[yx-1][yy]<5) e (matriz[yx][yy-1]>1 e matriz[yx][yy-1]<5))){
				diry = u.sorteia(0, 3)
			}
			
			
			se(t.tecla_pressionada(t.TECLA_SETA_ESQUERDA) e (matriz[px][py-1]>1)){
				dirpa=1
				}
			se(t.tecla_pressionada(t.TECLA_SETA_DIREITA) e (matriz[px][py+1]>1)){
				dirpa=0
				}
			se(t.tecla_pressionada(t.TECLA_SETA_ACIMA) e (matriz[px-1][py]>1)){
				dirpa=2
				}
			se(t.tecla_pressionada(t.TECLA_SETA_ABAIXO) e (matriz[px+1][py]>1)){
				dirpa=3
				}

			se(dirpa==0 e (matriz[px][py+1]>1)){
				py=py+1
				pacmanx=pacmanx+20.1
				pacman= pacman0
			}
			se(dirpa==1 e (matriz[px][py-1]>1)){
				py=py-1
				pacmanx=pacmanx-20.1
				pacman= pacman1
			}
			se(dirpa==2 e (matriz[px-1][py]>1)){
				px=px-1
				pacmany=pacmany-21.75
				pacman= pacman2
			}
			se(dirpa==3 e (matriz[px+1][py]>1)){
				px=px+1
				pacmany=pacmany+21.75
				pacman= pacman3
			}

			se(dirpa==0 e (matriz[px][py+1]>5)){
				py=1
				pacmanx=5.5
				pacmanx=pacmanx+20.1}
				
			se(dirpa==1 e (matriz[px][py-1]>5)){
				py=35
				pacmanx=730
				pacmanx=pacmanx-20.1}


			se(matriz[px][py]==2){
				matriz[px][py]=3
				Pontos = Pontos + 10
			}
			
			se(matriz[px][py]==4){
				matriz[px][py]=3
				tempo1=u.tempo_decorrido()
				poder = verdadeiro
				Primeira_Pilula = verdadeiro
				fantasma3 = azul
				fantasma2 = azul
				fantasma1 = azul
				fantasma4 = azul
				
			}
			tempo3=tempo2-tempo1
			se(tempo3>5000){
				poder=falso
				fantasma1 = vermelho
				fantasma2 = verde
				fantasma3 = amarelo
				fantasma4 = rosa
			}
			
			se(poder==falso){
				se((rx==px e ry==py) ou (ry==py+1 e dirr==1 e dirpa==0 e rx==px) ou (ry==py-1 e dirr==0 e dirpa==1 e rx==px)
				ou (ry==py e dirr==3 e dirpa==2 e rx==px-1) ou (ry==py e dirr==2 e dirpa==3 e rx==px+1)){
					p=1
			}
				se((gx==px e gy==py) ou (gy==py+1 e dirg==1 e dirpa==0 e gx==px) ou (gy==py-1 e dirg==0 e dirpa==1 e gx==px)
				ou (gy==py e dirg==3 e dirpa==2 e gx==px-1) ou (gy==py e dirg==2 e dirpa==3 e gx==px+1)){
					p=1
			}
				se((pix==px e piy==py) ou (piy==py+1 e dirp==1 e dirpa==0 e pix==px) ou (piy==py-1 e dirp==0 e dirpa==1 e pix==px)
				ou (piy==py e dirp==3 e dirpa==2 e pix==px-1) ou (piy==py e dirp==2 e dirpa==3 e pix==px+1)){
					p=1
			}
				se((yx==px e yy==py) ou (yy==py+1 e diry==1 e dirpa==0 e yx==px) ou (yy==py-1 e diry==0 e dirpa==1 e yx==px)
				ou (yy==py e diry==3 e dirpa==2 e yx==px-1) ou (yy==py e diry==2 e dirpa==3 e yx==px+1)){
					p=1
			}}

			
			se(poder==verdadeiro){
				se((rx==px e ry==py) ou (ry==py+1 e dirr==1 e dirpa==0 e rx==px) ou (ry==py-1 e dirr==0 e dirpa==1 e rx==px)
				ou (ry==py e dirr==3 e dirpa==2 e rx==px-1) ou (ry==py e dirr==2 e dirpa==3 e rx==px+1)){
					rx=10
					ry=18
					redx=300
					redy=220
					tempo4=u.tempo_decorrido()
			}
				se((pix==px e piy==py) ou (piy==py+1 e dirp==1 e dirpa==0 e pix==px) ou (piy==py-1 e dirp==0 e dirpa==1 e pix==px)
				ou (piy==py e dirp==3 e dirpa==2 e pix==px-1) ou (piy==py e dirp==2 e dirpa==3 e pix==px+1)){
					pix=10
					piy=18
					pinkx=420
					pinky=220
					tempo4=u.tempo_decorrido()
					
			}
				se((yx==px e yy==py) ou (yy==py+1 e diry==1 e dirpa==0 e yx==px) ou (yy==py-1 e diry==0 e dirpa==1 e yx==px)
				ou (yy==py e diry==3 e dirpa==2 e yx==px-1) ou (yy==py e diry==2 e dirpa==3 e yx==px+1)){
					yx=10
					yy=18
					yellowx=340
					yellowy=220
					tempo4=u.tempo_decorrido()
					
			}
				se((gx==px e gy==py) ou (gy==py+1 e dirg==1 e dirpa==0 e gx==px) ou (gy==py-1 e dirg==0 e dirpa==1 e gx==px)
				ou (gy==py e dirg==3 e dirpa==2 e gx==px-1) ou (gy==py e dirg==2 e dirpa==3 e gx==px+1)){
					gx=10
					gy=18
					greenx=380
					greeny=220
					tempo4=u.tempo_decorrido()
					
				}}
			tempo5=tempo2-tempo4
				se(rx==10 e ry==18 e tempo5>5000){
					rx=8
					ry=18
					redx=367
					redy=175
					dirr=u.sorteia(0, 1)
				}
				se(pix==10 e piy==18 e tempo5>5000){
					pix=8
					piy=18
					pinkx=367
					pinky=175
					dirp=u.sorteia(0, 1)
				}
				se(yx==10 e yy==18 e tempo5>5000){
					yx=8
					yy=18
					yellowx=367
					yellowy=175
					diry=u.sorteia(0, 1)
				}
				se(gx==10 e gy==18 e tempo5>5000){
					gx=8
					gy=18
					greenx=367
					greeny=175
					dirg=u.sorteia(0, 1)
				}
			
			g.definir_estilo_texto(falso, verdadeiro, falso)
			g.definir_tamanho_texto(20.0)
			g.definir_cor(0xFFFFFF)
			cadeia Pontuacao = "Pontuação: " + Pontos
			g.desenhar_texto(1, 500, Pontuacao)

			se(tempo3>5000 ou tempo3<0){
				Tempo_Pilula = "Sem Pilula"
			}

			se(Primeira_Pilula e ((tempo3>1000 e tempo3<1100) ou (tempo3>0 e tempo3<100) ou (tempo3>2000 e tempo3<2100) ou
			(tempo3>3000 e tempo3<3100) ou (tempo3>4000 e tempo3<4100) ou (tempo3>4900 e tempo3<5000))){
				Tempo_Pilula = "Tempo Restante: " + ((5000-tempo3)/1000)
				g.desenhar_texto(200, 500, Tempo_Pilula)
			}

			inteiro tempototal = tempo6/1000
			cadeia Temporizador = "Tempo: " + tempototal
			g.desenhar_texto(200, 500, Tempo_Pilula)
			g.desenhar_texto(500, 500, Temporizador)

			se(Pontos>=3020){
				p=3
			}
			u.aguarde(70)
			
			g.renderizar()
			enquanto(iniciar_jogo==falso){
				se(t.alguma_tecla_pressionada()){
					iniciar_jogo=verdadeiro
				}
			}
			se(p==1 ou p==3){
				u.aguarde(500)
			}
			
		}		

		se(p==3){
			g.definir_estilo_texto(falso, verdadeiro, falso)
			g.definir_tamanho_texto(40.0)
			g.definir_cor(0xFFFFFF)
			g.desenhar_texto(250,240,"Você Venceu!")
			g.renderizar()
			u.aguarde(2000)
		}
		se(p==1){
			g.definir_estilo_texto(falso, verdadeiro, falso)
			g.definir_tamanho_texto(40.0)
			g.definir_cor(0xFFFFFF)
			g.desenhar_texto(250,240,"Você Perdeu")
			g.renderizar()
			u.aguarde(2000)
	}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3556; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */