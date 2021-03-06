require_relative '../lib/evo_parser'

Dir.foreach(resources_path) do |resource_fork_name|
  Dir.chdir(resources_path)
  next if ignore_file?(resource_fork_name)
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
        puts resource_id
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
