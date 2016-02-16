# checkout directory. expect current/ to be appended
default[:potg_app][:app_path] = "/home/webapps/potg"

# github repo
default[:potg_app][:repository] = "git@github.com:raventools/potg.git"

# branch/tag/has to check out
default[:potg_app][:revision] = "master"

# app document root
default[:potg_app][:docroot] = "."

# vhost domains
default[:potg_app][:domains] = ["potg.ravenvagrant.site"]

# vhost listen port
default[:potg_app][:port] = 80
