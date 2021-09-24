namespace :setup do
  desc 'Deleting all values'
  task clean: :environment do
    Rake::Task['user:clean'].execute
    puts 'Done - Deleted all records references!!'
  end

  desc 'Creating all values'
  task create: :environment do
    Rake::Task['user:create'].execute
    puts 'Done - Created all records references!!'
  end

end