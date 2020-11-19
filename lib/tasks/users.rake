namespace :users do
  desc 'Create users'
  task :create, [:name, :email, :password] => [:environment] do |task, args|
    u = User.new
    u.email = args[:email]
    u.name = args[:name]
    u.password = Digest::MD5.hexdigest(args[:password])
    u.save
  end
end
