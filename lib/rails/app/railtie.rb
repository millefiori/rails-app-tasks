module RailsAppTasks
  class Railtie < Rails::Railtie
    rake_tasks do
      load 'rails/app/tasks/app.rake'
    end
  end
end
