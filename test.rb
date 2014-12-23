require 'json'
#################
def ignore_file?(file_name)
  ignored = (file_name[0] == '.' || file_name == 'meta.json')
  Dir.chdir('..') if ignored
  ignored
end


# credit to http://www.evula.com for resource descriptions

require 'bindata'
Dir.foreach('lib') do |library|
  Dir.chdir('lib')
  next if ignore_file?(library)
  require_relative "lib/#{library}"
  Dir.chdir('..')
end

Dir.chdir('resources')
Dir.foreach('records') do |resource|
  Dir.chdir('records')
  next if ignore_file?(resource)
  puts Dir.glob('*')
  require_relative "resources/records/#{resource}"
  Dir.chdir('../..')
end
puts Dir.glob("*")
Dir.foreach('resources') do |resource|
  Dir.chdir('resources')
  next if ignore_file?(resource)
  require_relative "resources/#{resource}" unless File.directory?(resource)
  Dir.chdir('..')
end


resources_path = '/Users/tycho/Documents/Developer/Escape Velocity/resources'

Dir.foreach(resources_path) do |resource_fork_name|
  Dir.chdir(resources_path)
  next if ignore_file?(resource_fork_name)
  # puts resource_fork_name
  # read meta.json

  # loop resource types in the resourcefork

  Dir.chdir(resource_fork_name)
  Dir.foreach('resourceFork') do |resource_fork_type|
    Dir.chdir("resourceFork")
    next if ignore_file?(resource_fork_type)
    # loop resource ids in the resource type
    puts resource_fork_type


    Dir.foreach(resource_fork_type) do |resource_id|
      Dir.chdir(resource_fork_type)
      next if ignore_file?(resource_id)
      # puts resource_id
      # puts resource_fork_type
      begin
        io = File.open("#{resource_id}/data.#{resource_fork_type}")
        puts Resource.get_class(resource_fork_type)
        puts Resource.get_class(resource_fork_type).read(io)
      rescue Exception => e
         puts e
      end

      Dir.chdir('..')
    end
    Dir.chdir('..')
  end
  Dir.chdir('..')
end
