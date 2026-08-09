def bubble_sort(vetor)
  tamanho = vetor.length

  houve_troca = true

  while houve_troca
    houve_troca = false
    indice = 0

    while indice < (tamanho - 1)

      if vetor[indice] > vetor[indice + 1]

        temporario = vetor[indice]
        vetor[indice] = vetor[indice + 1]
        vetor[indice + 1] = temporario

        houve_troca = true
      end

      indice += 1
    end

    tamanho -= 1
  end

  vetor
end