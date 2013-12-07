use_inline_resources

action :send do
  case new_resource.method
  when "email"
    @run_context.include_recipe "postfix"
    chef_gem 'pony'
    require 'pony'

    Pony.mail(
      :to => new_resource.to || "root",
      :from => "chef-client@#{node.name}",
      :subject => new_resource.subject,
      :body => new_resource.message
    )
  end
end
