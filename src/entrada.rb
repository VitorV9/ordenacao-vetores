def solicitar_entradas
  puts ""
  puts "---Olá, através desse programa vamos gerar três ordens diferentes de um mesmo vetor."
  puts "--Vamos ordenar na ordem crescente, decrescente e aleatória."
  puts "-Ao final será mostrada uma tabela informando o tempo para cada ordenação."
  puts ""

  print "->Informe o tamanho máximo do vetor(N): "
  tamanho_vetor = gets.to_i

  while tamanho_vetor <= 0
      puts "Erro!!! Você deve informar um tamanho maior que zero."
      print "->Informe novamente: "
      tamanho_vetor = gets.to_i
  end

  puts ""
  print "->Digite a quantia de testes (amostragem M) para tirar a média do vetor aleatório: "
  quantia_testes = gets.to_i

  while quantia_testes <= 0
    print "->Informe um valor maior que zero: "
    quantia_testes = gets.to_i
  end

  return tamanho_vetor, quantia_testes
end
