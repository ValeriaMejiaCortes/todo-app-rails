namespace :users do
  desc 'Create users'
  task :create, [:name, :email, :password] => [:environment] do |task, args|
    u = User.new
    p u.email = args[:email]

    p u.name = args[:name]
    p u.password = Digest::MD5.hexdigest(args[:password])
    u.save
  end
end
