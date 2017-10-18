require 'trollop'

#USAGE: ruby ../mcsmrt/get_fastqs.rb -s #{sample_key_file} -o #{all_bc_reads_output_folder} 

##### Input 
opts = Trollop::options do
	opt :token, "Token generated by slack. Want a token? Go here: https://api.slack.com/custom-integrations/legacy-tokens", :type => :string, :short => "-t"
	opt :outfolder, "Output FASTQ file which has all the reads in it.", :type => :string, :short => "-o"
end 

##### Assigning variables to the input and making sure we got all the inputs
opts[:token].nil?      ==false  ? slack_token   = opts[:token]      : abort("Must supply a token provoded by slack with '-t'! Want a token? Go here: https://api.slack.com/custom-integrations/legacy-tokens")
opts[:outfolder].nil?  ==false  ? output_folder = opts[:outfolder]  : abort("Must supply an output folder name which will contain the json files for each users chat with you, use '-o' argument.")

`wget https://slack.com/api/users.list?token=#{slack_token} -O "users.list.json"`
`cat users.list.json | tr , '\n' | grep -Po '"name":".*"' | sed 's/.*\":\"//g' | sed 's/"//g' > users_list.txt`

if File.directory?(output_folder)
	`rm -rf output_folder`
	`mkdir #{output_folder}`
else
	`mkdir #{output_folder}`
end

users_list_file = File.open("users_list.txt")

user_list = []
users_list_file.each do |line|
	user = line.chomp
	user_list.push(user)
end

#puts user_list.inspect
user_list_split = user_list.each_slice(10).to_a
#puts user_list_split.inspect

user_list.each do |each_user|
	puts each_user.inspect
	`slack-history-export --token #{slack_token} --username #{each_user} --filepath #{each_user}.json`
	`mv #{each_user}.json #{output_folder}`
	sleep(10)
end
`mv users.list.json users_list.txt #{output_folder}`
