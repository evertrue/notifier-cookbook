actions :send
default_action :send

attribute :method, :default => "email"
attribute :to, :kind_of => String
attribute :subject, :kind_of => String, :name_attribute => true
attribute :message, :kind_of => String, :required => true
