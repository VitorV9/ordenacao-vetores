require_relative 'entrada'
require_relative 'geradorVetores'
require_relative 'algoritmoOrdenacao'
require_relative 'exibirTabela'

#Executa testes
tamanho_vetor, quantia_testes = solicitar_entradas()

imprimir_cabecalho()

vetor_crescente = gerar_vetor_crescente(tamanho_vetor)

inicio_crescente = Time.now
bubble_sort(vetor_crescente)
fim_crescente = Time.now

tempo_crescente = fim_crescente - inicio_crescente

vetor_decrescente = gerar_vetor_decrescente(tamanho_vetor)

inicio_decrescente = Time.now
bubble_sort(vetor_decrescente)
fim_decrescente = Time.now

tempo_decrescente = fim_decrescente - inicio_decrescente

tempo_total_aleatorio = 0.0
contador = 0

while contador < quantia_testes
  vetor_aleatorio = gerar_vetor_aleatorio(tamanho_vetor)

  inicio_aleatorio = Time.now
  bubble_sort(vetor_aleatorio)
  fim_aleatorio = Time.now

  tempo_total_aleatorio += (fim_aleatorio - inicio_aleatorio)

  contador += 1
end

tempo_medio_aleatorio = tempo_total_aleatorio / quantia_testes

imprimir_linha(tamanho_vetor, tempo_crescente, tempo_decrescente, tempo_medio_aleatorio)