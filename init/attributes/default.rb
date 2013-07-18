# setting default values for the node object

# logfile location, to be created recursively
default['log_folder_dir'] = '/opt/temp'
default['log_file_dir'] = "#{node['log_folder_dir']}/logfile.yml"

# configfile location, for use during deployment
default['config_folder_dir'] = '/opt/temp'
default['config_file_dir'] = "#{node['config_folder_dir']}/config.yml"

# customfile location, for use during deployment
default['custom_folder_dir'] = '/opt/temp'
default['custom_file_dir'] = "#{node['custom_folder_dir']}/custom.yml"

# pathsfile location, used by run code to find relevant information/parameters
default['paths_folder_dir'] = '/opt/temp'
default['paths_file_dir'] = "#{node['paths_folder_dir']}/paths.yml"

# aws directory, to be created recursively
default['aws_folder_dir'] = '/opt/aws'

# s3 downloaded files ocation, to be created recursively
default['s3_folder_dir'] = '/opt/temp'

# by default, no gems set to grabbed from s3
default['s3-install-on-setup'] = []

# by default, no gems set to be installed on setup
default['install-on-setup'] = []

# set the default version of the aws-sdk to nil so it automatically pulls the
# newest one
default['aws-sdk-version'] = nil

# set the version of ruby that will be installed
set['opsworks']['ruby_version'] = '1.9.3'
set['opsworks']['ruby_stack'] = 'ruby'

# set default user and group
default['user'] = `id -u -n`
default['group'] = `id -g -n` 

# set default runner location
default['runner_folder_dir'] = '/home/runner'
default['runner_file_dir'] = "#{node['runner_folder_dir']}/runner.rb"

Chef::Log.info("\n\n\n\n\n\ndefault user and group are: #{node['user']} and #{node['group']}\n\n\n\n\n\n")
