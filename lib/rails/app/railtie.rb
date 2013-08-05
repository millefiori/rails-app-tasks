module RailsAppTasks
  class Railtie < Rails::Railtie
    rake_tasks do
      load 'rails/app/tasks/tasks.rake'
    end
  end
end
