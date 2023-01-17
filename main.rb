def da_boas_vindas
  puts "Bem vindo ao Jogo de Adivinhação"
  puts "Qual é o seu nome?"
  nome = gets.chomp() # gets.strip
  puts "Olá #{nome}, tudo bem? Vamos Começar! \n"
end

def sorteia_numero_secreto dificuldade
  case dificuldade
    when 1 
      maximo = 30
    when 2 
      maximo = 60
    when 3 
      maximo = 100
    when 4 
      maximo = 150
    else 
      maximo = 200
  end

  puts "Escolhendo um número entre 1 - #{maximo}"
  rand(maximo) + 1
end

def pede_um_numero tentativa, tentativa_maxima, chutes
  puts "Tentativa #{tentativa} de #{tentativa_maxima}"
  puts "Tentativas até agora: #{chutes}"
  puts "Digite o valor: " 
  chute = gets.chomp().to_i
end

def verifica_se_acertou chute, numero_secreto, tentativa
  if chute == numero_secreto
    puts "Parabéns, você acertou com #{tentativa} tentativa(s)!"
    return true
  end

  puts chute > numero_secreto ? "O número é menor" : "O número é maior"

  puts "Você errou, tente novamente."
  false
end

def pede_dificuldade
  puts "Qual o nível que deseja?"
  puts "(1) Muito fácil (2) Fácil (3) Médio (4) Díficil (5) Impossível"
  dificuldade = gets.to_i
end

def joga numero_secreto
  tentativa_minina = 1
  tentativa_maxima = 5
  chutes = []
  pontos = 1000.0
  
  for tentativa in tentativa_minina..tentativa_maxima
    chute = pede_um_numero tentativa, tentativa_maxima, chutes
    chutes << chute
    
    break if verifica_se_acertou chute, numero_secreto, tentativa
    pontos_perder = (chute - numero_secreto).abs
    pontos -= pontos_perder
  end
  
  puts "Você ganhou #{pontos} pontos."
  puts "O número era #{numero_secreto}."
end

def quer_jogar?
  puts "Deseja jogar novamente? (S/N)"
  resposta = gets.strip
  resposta.upcase == "S"
end

da_boas_vindas

dificuldade = pede_dificuldade

numero_secreto = sorteia_numero_secreto dificuldade

loop do 
  joga numero_secreto
  if !quer_jogar?
    break
  end 
end
