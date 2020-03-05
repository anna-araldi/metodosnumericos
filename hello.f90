program helloworld
	implicit none
	real:: fb, p, a, b, fp, parada
	integer:: i, n
	
	write(*,*) "Hello world"
	write(*,*) "Vamos comecar a brincar de verdade?"
	
	write(*,*) "Informe o intervalo adotado a e b"
	read(*,*) a, b
	write(*,*) "Informe o numero maximo de iteracoes que deseja fazer"
	read(*,*) n 
	
	write(*,*) a, b 
	write(*,*) n
	

	do i=1,n
	p=(a+b)/2
	fp=(p*p)-2
	fb=(b*b)-2
	if (fp*fb>0) then
				b=p
			else 
				a=p		
	endif
	
	parada = fp-fb
!	if (parada<(10**(-15))) then
!		I=n
!	endif
	enddo
	
	
	write(*,*) "p=",p, "a=", a, "b=", b
	write(*,*) "F(p)=", fp
	write(*,*) "F(b)=", fb
	write(*,*) "Erro=", parada

end program