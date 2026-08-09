def imprimir_cabecalho
  puts ""
  puts "-" * 88
  puts " Tamanho do Vetor | Crescente (Tempo) | Decrescente (Tempo) | Aleatório (Tempo Médio) "
  puts "-" * 88
end

def imprimir_linha(tamanho, tempo_crescente, tempo_decrescente, tempo_aleatorio)
  texto_tc = "%.5f s" % tempo_crescente
  texto_td = "%.5f s" % tempo_decrescente
  texto_ta = "%.5f s" % tempo_aleatorio

  col_tamanho     = tamanho.to_s.center(18)
  col_crescente   = texto_tc.center(19)
  col_decrescente = texto_td.center(21)
  col_aleatorio   = texto_ta.center(25)

  puts "#{col_tamanho}|#{col_crescente}|#{col_decrescente}|#{col_aleatorio}"
end