name			 'potg-app'
maintainer		 'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license			 'All rights reserved'
description		 'Installs/Configures potg-app'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version			 '0.1.1'

depends "apache2"
depends "raven-php"
depends "raven-nodejs"
depends "raven-deploy"

recipe "potg-app::default", "set up potg dependencies"
recipe "potg-app::deploy_tag", "deploys potg app"

attribute "potg_app",
	:display_name => "PotG App",
	:type => "hash"

attribute "potg_app/app_path",
	:display_name => "Application Path",
	:description => "Path where application is checked out. Will have 'current' appended",
	:required => "recommended",
	:type => "string",
	:recipes => ["potg-app::deploy_tag"],
	:default => "/home/webapps/potg"

attribute "potg_app/repository",
	:display_name => "Application Repository",
	:description => "Repository in which the app resides",
	:required => "recommended",
	:type => "string",
	:recipes => ["potg-app::deploy_tag"],
	:default => "git@github.com:raventools/potg.git"

attribute "potg_app/revision",
	:display_name => "Application Revision",
	:description => "Revision to check out",
	:required => "recommended",
	:type => "string",
	:recipes => ["potg-app::deploy_tag"],
	:default => "master"

attribute "potg_app/domains",
	:display_name => "Application Domains",
	:description => "Domains this vhost answers to. Comman-separated list, with first one being canonical",
	:required => "recommended",
	:type => "array",
	:recipes => ["potg-app::deploy_tag"],
	:default => ["potg.raven-seo-tools.com"]

