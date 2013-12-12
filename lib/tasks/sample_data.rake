namespace :db do
  desc 'Fill database with sample data'
  task :sample_data => :environment do
    Rake::Task['db:reset'].invoke

    User.create(name: 'admin',
                email: 'admin@admin.com',
                password: 'admin',
                password_confirmation: 'admin')
  end
end
