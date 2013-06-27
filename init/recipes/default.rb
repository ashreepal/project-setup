# set up initial files and directories
include_recipe 'setup::default'

# download and install the aws-sdk
include_recipe 'aws-sdk::default'

# configure the machine with AWS
include_recipe 'setup::configure'

# download and install gems from s3
include_recipe 's3::default'