namespace :agent do

  desc 'Clean all Agents'
  task clean: :environment do
    Agent.delete_all
    puts 'Done - Deleted all agents!!'
  end

  desc 'Creating Agents'
  task create: :environment do
		if (ARGV.size == 2) && (ENV['n'] != "")
	  	ENV['n'].to_i.times do |i|
				name = "Agent #{i}"
				email = "agent#{i}@agent.com"
				agent = "Agent #{i} = #{name} - email #{email}"
				puts "Registering... -> #{agent}"
				Agent.create(name: name, email: email)
		  end
		else
			puts 'You need inform the quantity of agents!'
			puts 'e.g. rake agent:create n=9'
		end
  end
end