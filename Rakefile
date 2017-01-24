desc 'Check Packer template syntax'
task :check do
  cwd = Dir.pwd
  puts "\nValidating Packer templates"
  Dir['templates/**'].each do |dir|
    Dir.chdir(dir)
    puts "\ntesting #{dir}"
    sh 'packer validate template.json'
    Dir.chdir(cwd)
  end
  puts 'Packer templates OK'
end
