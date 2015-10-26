namespace :app do
  desc "setup database"
  task :setup_db => "db:load_config" do
    [ "db:create", "db:migrate", "db:seed" ].each do |x|
      Rake::Task[ x ].invoke
    end
  end

  desc 'initialize database'
  task :init do
    Rake::Task['app:setup_db'].invoke
  end

  desc "reset database"
  task :reset => "db:load_config" do
    [ "db:reset", "db:seed", "db:test:prepare" ].each do |x|
      Rake::Task[ x ].invoke
    end
  end
end
