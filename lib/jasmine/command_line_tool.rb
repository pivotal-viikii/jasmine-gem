module Jasmine
  class CommandLineTool
    def cwd
      File.expand_path(File.join(File.dirname(__FILE__), '../..'))
    end

    def expand(*paths)
      File.expand_path(File.join(*paths))
    end

    def template_path(filepath)
      expand(cwd, File.join("generators/jasmine/templates", filepath))
    end

    def dest_path(filepath)
      expand(Dir.pwd, filepath)
    end

    def copy_unless_exists(relative_path, dest_path = nil)
      unless File.exist?(dest_path(relative_path))
        if RUBY_VERSION < '1.9'
          File.copy(template_path(relative_path), dest_path(dest_path || relative_path))
        else
          FileUtils.copy(template_path(relative_path), dest_path(dest_path || relative_path))
        end
      end
    end

    def process(argv)
      if argv[0] == 'init'
        if RUBY_VERSION < '1.9'
          require 'ftools'
          File.makedirs('public/javascripts')
          File.makedirs('spec/javascripts')
          File.makedirs('spec/javascripts/support')
          File.makedirs('spec/javascripts/helpers')
        else
          require 'fileutils'
          FileUtils.makedirs('public/javascripts')
          FileUtils.makedirs('spec/javascripts')
          FileUtils.makedirs('spec/javascripts/support')
          FileUtils.makedirs('spec/javascripts/helpers')
        end

        copy_unless_exists('spec/javascripts/support/jasmine_runner.rb')

        rails_tasks_dir = dest_path('lib/tasks')
        if File.exist?(rails_tasks_dir)
          copy_unless_exists('lib/tasks/jasmine.rake')
          copy_unless_exists('spec/javascripts/support/jasmine-rails.yml', 'spec/javascripts/support/jasmine.yml')
        else
          copy_unless_exists('spec/javascripts/support/jasmine.yml')
          write_mode = 'w'
          if File.exist?(dest_path('Rakefile'))
            load dest_path('Rakefile')
            write_mode = 'a'
          end

          require 'rake'
          unless Rake::Task.task_defined?('jasmine')
            File.open(dest_path('Rakefile'), write_mode) do |f|
              f.write(File.read(template_path('lib/tasks/jasmine.rake')))
            end
          end
        end
        File.open(template_path('INSTALL'), 'r').each_line do |line|
          puts line
        end
      else
        puts "unknown command #{argv}"
        puts "Usage: jasmine init"
      end
    end
  end
end
