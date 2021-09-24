namespace :setup do
  desc 'Deleting all values'
  task clean: :environment do
    Rake::Task['booking:clean'].execute
    Rake::Task['user:clean'].execute
    Rake::Task['agent:clean'].execute
    puts 'Done - Deleted all records references!!'
  end

  desc 'Creating all values'
  task create: :environment do
    Rake::Task['user:create'].execute
    Rake::Task['agent:create'].execute
    Rake::Task['booking:create'].execute
    puts 'Done - Created all records references!!'
  end

end