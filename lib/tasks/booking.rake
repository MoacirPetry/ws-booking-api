namespace :booking do

  desc 'Clean all Bookings'
  task clean: :environment do
    Booking.delete_all
    puts 'Done - Deleted all bookings!!'
  end

  desc 'Creating Bookings'
  task create: :environment do
		if (ARGV.size == 2) && (ENV['n'] != "")
	  	ENV['n'].to_i.times do |i|
				start_at = Date.tomorrow
				finish_at = Date.tomorrow+5
        user = User.all.sample
        agent = Agent.all.sample
				booking = "Booking #{i} = #{user.name} - agent #{agent.name}"
				puts "Registering... -> #{booking}"
				Booking.create(start_at: start_at, finish_at: finish_at, user: user, agent: agent)
		  end
		else
			puts 'You need inform the quantity of agents!'
			puts 'e.g. rake agent:create n=9'
		end
  end
end