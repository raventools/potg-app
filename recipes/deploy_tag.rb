include_recipe "potg-app"

raven_deploy_app "potg" do
	path node[:potg_app][:app_path]
	repository node[:potg_app][:repository]
	revision node[:potg_app][:revision]
	docroot node[:potg_app][:docroot]
	domains node[:potg_app][:domains]
	port node[:potg_app][:port]
end
