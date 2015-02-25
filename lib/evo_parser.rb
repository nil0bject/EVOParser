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


# credit to http://www.evula.com for resource descriptions

Dir.chdir('..')
require 'bindata'
Dir.foreach('lib') do |library|
  Dir.chdir('lib')
  next if ignore_file?(library)
  require_relative "../lib/#{library}"
  Dir.chdir('..')
end

Dir.foreach('records') do |record|
  Dir.chdir('records')
  next if ignore_file?(record)
  require_relative "../records/#{record}" unless File.directory?(record)
  Dir.chdir('..')
end
# puts Dir.glob("*")
Dir.foreach('resources') do |resource|
  Dir.chdir('resources')
  next if ignore_file?(resource)
  require_relative "../resources/#{resource}" unless File.directory?(resource)
  Dir.chdir('..')
end
# puts Dir.glob('*')
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
