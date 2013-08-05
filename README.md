# Rails::App::Tasks

Convinient rake tasks for development.

## Usage

Application initialize task

    rake app:init #=> rake db:create db:migrate db:seed db:test:prepare

Reset database task

    rake app:reset #=> rake db:reset db:seed db:test:prepare

Or

    rake db:drop app:init

You can extend to execute any tasks before/after this task.

    namespace :app do
      task :before_init do
        puts "before init"
      end

      task :after_init do
        puts "after init"
      end

      Rake::Task[:init].enhance [:before_init]

      Rake::Task[:init].enhance do
        Rake::Task["app:after_init"].invoke
      end
    end

## Installation

Add this line to your application's Gemfile:

    group :development do
      gem 'rails-app-tasks'
    end

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails-app-tasks

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
