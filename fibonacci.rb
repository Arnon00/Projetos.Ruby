# Primmeira Função: Gera um vetor com os valores fribonacci
def Nfribo (n)
a = []; a[0] = 1; a[1] = 1                                        # criando vetor / setando valores na posição 0 e 1
i = 1                                                             # escolhendo valor inicial de I
  while i < 1000                                                  # aqui, escolhemos indiretamente o tamanho do vetor
    a[i+1] = (a[i] + a[i-1])%1000                                 # Cauculando e Populando o vetor
    i += 1                                                        # Incrementando o I a cada volta
  end                                                             # fim do While
  return a[n]                                                     # retorna o valor do vetor na posição N
end
# Segundo Função: Gera automaticamente um vetor de fribonacci's e recebe como entrada o numero que o ussuario que conferir
def Cfribo (n)
  a = []; a[0] = 1; a[1] = 1                                     # criando vetor / setando valores na posição 0 e 1
  i = 1
  while i < 1000                                                 # aqui, escolhemos indiretamente o tamanho do vetor
    a[i+1] = (a[i] + a[i-1])%1000
    i += 1
  end
  j = a.include?(n)                                              # Insira em J se em A esteja incluiso o valor N
  if j == true                                                   # se o valor estiver incluso
   puts "Valor #{n} é fribonacci"                                # imprima
 else                                                            # se não
   puts "Valor #{n} não é fribonacci"                            # imprima
  end
end
# Terceira Função: Gera um vetor com o tamanho que o ussuario desejar, e da a opção para ver o resultado ou não
def Sfribo (n)
  a = []; a[0] = 1; a[1] = 1                                     # criando vetor / setando valores na posição 0 e 1
  i = 1
  while i < n                                                    # Escolhendo o valor de N (passado pelo ussuario) para o tamanho do vetor
    a[i+1] = (a[i] + a[i-1])%n
    i += 1
  end
  puts "Deseja exibir a sequencia?\n[1] - Sim\n[0] - Não"        # Opcão para se, o ussuario precise ou não ver o vetor que gerou
  s = gets.chomp()                                               # recebendo o valor e "limpando" a String
  if(s == '1')                                                   # se S (valor de ussuario) for igual a 1
    a.each do |nm|                                               # para cada elemente de A faça em NM
      print "#{nm},"                                         # Imprima todo elemento em NM
    end
  else
         puts "Até logo."
  end
end

class Fibonacci
  gat = '1'
  while gat != '0'
    puts "---------------------\n Fribo-programa\n---------------------\n"
      puts "[1] - Gerando uma sequencia Fribonacci"
      puts "[2] - É ou não é Fribonacci?"
      puts "[3] - descobir qual é o elemento fribonacci de n"
      puts "[0] - Sair"
      gat = gets.chomp()

        case gat
        when '1'
          puts "Qual o tamanho da sequencia que deseja?"
            t = gets.chomp()
            n = t.to_i
          Sfribo(n)

        when '2'
          puts "Qual numero deseja confirmar?"
            t = gets.chomp()
            n = t.to_i
          Cfribo(n)
        when '3'
          puts "Digite o numero de N desejado: "
            t = gets.chomp()
            n = t.to_i
          m = Nfribo(n)
          puts "Sé (N = #{n}) numero da sequencia correspondente é: #{m}"
        end
    system("\npause")
    system("cls")
  end
end
