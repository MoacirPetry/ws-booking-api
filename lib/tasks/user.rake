namespace :user do

  desc 'Clean all Users'
  task clean: :environment do
    User.delete_all
    puts 'Done - Deleted all users!!'
  end

  desc 'Creating Users'
  task create: :environment do
		if (ARGV.size == 2) && (ENV['n'] != "")
	  	ENV['n'].to_i.times do |i|
				name = "User #{i}"
				email = "user#{i}@user.com"
				user = "User #{i} = #{name} - email #{email}"
				puts "Registering... -> #{user}"
				User.create(name: name, email: email)
		  end
		else
			puts 'You need inform the quantity of users!'
			puts 'e.g. rake user:create n=9'
		end
  end
end