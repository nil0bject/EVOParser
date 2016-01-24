require 'bindata'
require 'roar'
require 'roar/json'
require 'roar/json/json_api'
require 'roar/decorator'

def resources_path
  '/Users/tycho/Documents/Developer/Escape Velocity/resources'
end

def ignore_file?(file_name)
  ignored = (file_name[0] == '.' || file_name == 'meta.json')
  Dir.chdir('..') if ignored
  ignored
end

module EVOParser
  require_relative "../app/app.rb"
  # Dir.chdir('..')
  Dir.chdir('lib')
  Dir.foreach('evo_parser') do |library|
    Dir.chdir('evo_parser')
    next if ignore_file?(library)
    require_relative "../lib/evo_parser/#{library}"
    Dir.chdir('..')
  end
  Dir.chdir('..')
  Dir.foreach('records') do |record|
    Dir.chdir('records')
    next if ignore_file?(record)
    require_relative "../records/#{record}" unless File.directory?(record)
    Dir.chdir('..')
  end
puts Dir.glob('*')
  Dir.foreach('concepts') do |concept|
    Dir.chdir('concepts')
    next if ignore_file?(concept)
    Dir.foreach(concept) do |klass|
      Dir.chdir(concept)
      next if ignore_file?(klass)
      require_relative "../concepts/#{concept}/#{klass}"
      Dir.chdir('..')
    end
    Dir.chdir('..')
  end
end
