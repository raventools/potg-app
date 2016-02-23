name             'potg-app'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures potg-app'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.1'

depends "apache2"
depends "raven-php"
depends "raven-deploy"

recipe "potg-app::default", "set up potg dependencies"
recipe "potg-app::deploy_tag", "deploys potg app"
