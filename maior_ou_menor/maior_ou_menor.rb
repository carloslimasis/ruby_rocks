def  da_boas_vindas
  puts "Qual é o seu nome?"
  nome = gets.strip
  puts "\n\n\n\n\n\n"
  puts "Começaremos o jogo pra você, #{nome}"
end


def sorteia_numero_secreto
  puts "Escolhendo um número secreto entre 0 e 200.."
  sorteado  = rand(200)
  puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
  sorteado
end

def pede_um_numero(chutes, tentativa, limite_de_tentativas)
  puts "\n\n\n\n"
  puts "Tentativa #{tentativa} de #{limite_de_tentativas}"
  puts "Chutes até agora #{chutes}"
  puts "Entre com o numero"
  chute = gets.strip
  puts "Será que você acertou? Você chutou #{chute}"
  chute.to_i
end

def verifica_se_acertou(numero_secreto, chute)
  acertou = numero_secreto == chute

  if acertou
    puts "Acertou!"
    return true
  end

  maior = numero_secreto > chute.to_i
  if maior
    puts "O número secreto é maior!"
  else
    puts "O número secreto é menor!"
  end

  false
end

da_boas_vindas
numero_secreto = sorteia_numero_secreto

chutes = []
pontos_ate_agora = 1000

limite_de_tentativas = 5

for tentativa in 1..limite_de_tentativas
  chute = pede_um_numero chutes, tentativa, limite_de_tentativas
  chutes << chute
  pontos_a_perder = (chute - numero_secreto).abs / 2.0

  if pontos_a_perder < 0
    pontos_a_perder *= -1
  end

  pontos_ate_agora = pontos_ate_agora - pontos_a_perder
  break if verifica_se_acertou numero_secreto, chute
end

puts "Você ganhou #{pontos_ate_agora} pontos."
