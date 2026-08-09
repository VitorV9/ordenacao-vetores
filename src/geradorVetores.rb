def gerar_vetor_crescente(tamanho_vetor)
  vetor_crescente = Array.new(tamanho_vetor)
  indice = 0

  while indice < tamanho_vetor
    vetor_crescente[indice] = indice + 1
    indice += 1
  end

  vetor_crescente
end
def gerar_vetor_decrescente(tamanho_vetor)
  vetor_decrescente = Array.new(tamanho_vetor)
  indice = 0
  valor = tamanho_vetor

  while indice < tamanho_vetor
    vetor_decrescente[indice] = valor
    valor -= 1
    indice += 1
  end

  vetor_decrescente
end

def gerar_vetor_aleatorio(tamanho_vetor)
  vetor = Array.new(tamanho_vetor)
  indice = 0

  while indice < tamanho_vetor
    vetor[indice] = indice + 1
    indice += 1
  end

  indice = tamanho_vetor - 1
  while indice > 0
    posicao_sorteada = rand(0..indice)

    temporario = vetor[indice]
    vetor[indice] = vetor[posicao_sorteada]
    vetor[posicao_sorteada] = temporario

    indice -= 1
  end

  vetor
end
