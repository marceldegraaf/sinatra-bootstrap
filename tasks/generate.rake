desc 'Generate a new project at dir=foo'
task :generate do
  system "mkdir #{(ENV['dir'])}" unless File.exists?(ENV['dir'])
  system "git archive HEAD | (cd #{ENV['dir']} && tar -xvf -)"
  system "cd #{ENV['dir']}; rm #{File.join("tasks", "generate.rake")}"
  puts "\n *** A new project has been generated at: #{(ENV['dir'])} ***"
end
