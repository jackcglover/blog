task(:hello) do
  puts "Add more tasks"
end

require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "--format progress"
end
