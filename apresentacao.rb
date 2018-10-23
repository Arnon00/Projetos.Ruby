puts "Qual o seu nome?"
nome=gets

puts "Qual sua idade?"
id=gets

puts "Qual seu estado?"
est=gets

if (id > '18')
	puts "Oh! ja pode dirigir em"
else
puts "isso ai, sabedoria se ganha com a idade"
end

puts "prazer #{nome.strip}, fiquei sabendo que voce tem #{id.strip} anos, e mora em #{est.strip}, e ai, vamos dominar o mundo?"