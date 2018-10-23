def limpa(texto)
  texto.strip
end

def tipo_tell(tell)
  case tell
    when 'C'
      'Comercial'
    when 'R'
      'Residencial'
    when 'M'
      'Celular'
  else
      'Não identificado'
  end
end

def obt_registro
  'entre com o seu nome: '
    nome = gets
   "seu nome é #{nome}"

  "entre com o tipo de telefone."
    "Comercial - [C], Residencial - [R], Celular - [M]"
    tipo_tel = gets
    'entre com o seu numero de telefone: '
   tel = gets
      "#{limpa(nome)} - #{limpa(tel)} - #{tipo_tell(limpa(tipo_tel))}"
      "Obrigado pelas infos."
end

class Primeiro_p
gat = '1'
  while gat == '1'
    obt_registro
      "Deseja inserir mais um numero? "
      "SIM - [1] , Não - [0]"
        gat = limpa(gets)
          if gat == '1'
            'Numero salvo'
            end
          if gat == '0'
             'Obrigado por usar a agenda'
             gat = '0'
          end
    if gat != '0'
      if gat != '1'
        'não identificado, entre novamente com o numero'
        gat = '1'
      end
    end
  end
end