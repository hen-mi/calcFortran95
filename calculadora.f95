program Calculadora

  integer :: funcao !opcao do menu
  real :: valor1, valor2

  call menu()
  
  do while(funcao /= 7)
    read(*,*) funcao
    select case (funcao)
   
      case (1)
        call system('clear')
  
        write(*,*) "1 - SOMA"
        write(*,*) "Digite os valores:"
        read(*,*) valor1
        read(*,*) valor2
   
        write(*,*) valor1, " + ", valor2, "=",soma(valor1, valor2)
        call submenu()

      case (2)
        call system('clear')
  
        write(*,*) "2 - SUBTRAÇÃO"
        write(*,*) "Digite os valores:"
        read(*,*) valor1
        read(*,*) valor2
   
        write(*,*) valor1, " - ", valor2, "=",subtracao(valor1, valor2)
        call submenu()     
        
      case (3) 
        call system('clear')
  
        write(*,*) "3 - MULTIPLICAÇÃO"
        write(*,*) "Digite os valores:"
        read(*,*) valor1
        read(*,*) valor2
   
        write(*,*) valor1, " * ", valor2, "=",multiplicacao(valor1, valor2)
        call submenu()

      case (4)
        call system('clear')
  
        write(*,*) "4 - DIVISAO"
        write(*,*) "Digite os valores:"
        read(*,*) valor1
        read(*,*) valor2
   
        write(*,*) valor1,  "\ ", valor2, "=",divisao(valor1, valor2)
        call submenu() 

      case (5)
        call system('clear')
  
        write(*,*) "2 - ELEVAR NÚMERO AO QUADRADO"
        write(*,*) "Digite o valor:"
        read(*,*) valor1
   
        write(*,*) valor1,"^2 =", quadrado(valor1)
        call submenu()
        
      case (6)
        call system('clear')
  
        write(*,*) "2 - ELEVAR NÚMERO AO CUBO"
        write(*,*) "Digite o valor:"
        read(*,*) valor1
   
        write(*,*) valor1,"^3 =", cubo(valor1)
        call submenu()
        
      case (7)
        call system('clear')
        
      case default
         print*, "Valor inválido, tente novamente!" 
      
   end select
  end do 
  print *, " --- Calculadora encerrada --- "
  

contains

!soma
real function soma(valor1, valor2)
implicit none

real :: valor1, valor2

soma = valor1 + valor2

return 
end function soma
!subtracao
real function subtracao(valor1, valor2)
implicit none

real :: valor1, valor2

subtracao = valor1 - valor2

return 
end function subtracao
!multiplicacao
real  function multiplicacao(valor1, valor2)
implicit none

real :: valor1, valor2

multiplicacao = valor1 * valor2

return 
end function multiplicacao
!divisao
real function divisao(valor1, valor2)
implicit none

real :: valor1, valor2

divisao = valor1/valor2
return
end function divisao

!elevado ao quadrado
real function quadrado(valor)
implicit none

real :: valor

quadrado = valor*valor
return
end function quadrado

!elevado ao cubo
real function cubo(valor)
implicit none

real :: valor

cubo = valor*valor*valor
return
end function cubo

end program Calculadora

subroutine menu()

  print *, '*****************************'
  print *, '*********CALCULADORA*********'
  print *, '*****************************'

  print *, "1 - SOMA"
  print *, "2 - SUBTRAÇÃO"
  print *, "3 - MULTIPLICAÇÃO"
  print *, "4 - DIVISÃO"
  print *, "5 - ELEVAR NÚMERO AO QUADRADO"
  print *, "6 - ELEVAR NÚMERO AO CUBO"
  print *, "7 - SAIR"
  write(*,*) "Escolha uma das funções digitando o seu valor correspondente:"

end subroutine menu

subroutine submenu()
  print *, "1 - VOLTAR AO MENU"
  print *, "2 - SAIR"
  read(*,*) funcao
 if(funcao == 1) then
    call system('clear')
    call menu()
        
 else if(funcao == 2) then
  write(*,*) " --- Calculadora encerrada --- "
  stop
  
 end if     
end subroutine submenu