	def menu
		puts "Bem-vindo ao Task List! Escolha uma opção no menu: \n"

		puts '---------------------'
		puts '[1] Inserir uma tarefa'
		puts '[2] Ver todas as tarefas'
		puts '[3] Buscar tarefa especifica'
		puts '[4] Marcar Tarefa como realizada'
		puts '[0] Sair'
		puts '---------------------'
		
		opcao = gets.to_i
	end
		opcao = 1
		tarefas = {tarefa: [], status: []}
		while opcao != 0
						opcao = menu()
						if opcao == 1
							print 'Digite sua tarefa: '
							tarefas[:tarefa] << gets.chomp()
							tarefas[:status] << "Nao feita"
							teste = []
							teste = tarefas 
							puts 'Tarefa cadastrada: '
							opcao = 1
								system("cls")
						end
						if opcao == 2
							system("cls")
							puts '--------------------------'
							tarefas.each.with_index(1) do |t, index|
							print "#{index} - #{tarefas[:tarefa]} - #{tarefas[:status]} \n"
							puts "--------------------------\n\n"
							puts "Teste!"
							puts teste
						end
						end
						if opcao == 3
							achou = []
							system("cls")
							puts "Qual tarefa deseja buscar?"
							tar = gets.chomp()
								tarefas.each do |tarefa|
									if tarefa.downcase == tar.downcase
									achou << tarefa
									end
								end
								puts "#{achou}"
						end
						if opcao == 4
							puts "qual tarefa deseja marcar como realizada?"

						end	
						
						if opcao == 0
					system("cls")
				puts"Obrigado por usar nosso programa."

				end
			end
