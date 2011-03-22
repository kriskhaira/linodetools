# Slicehost DNS to Linode Script


# Installation

  1. Grab script from Github open it
  2. Create the files api_email.txt and api_key.txt and put in your API email address and Key in there.

# Usage

    ./slicedns2linode.rb domain1.com. [domain2.com.]

There is only 1 required argument for the script. The name of your domain with the trailing period [.]. You can add additional domains to be transferred in a single run just separate them with a space

# Requirements
You need to have a working ruby and rubygems installation

	# Ubuntu Install
	$ [sudo] aptitude install ruby rubygems
	# Ubuntu Server might also need the ruby OpenSSL libraries installed. 
	$ [sudo] aptitude install libopenssl-ruby
	# Fedora Install
	$ [sudo] yum install ruby rubygems
	
You need to make sure you have activeresource and linode installed

    $ [sudo] gem install activeresource linode

# TODO 
Create GEM  
Create Test coverage