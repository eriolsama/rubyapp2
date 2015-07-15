evironment ENV['RACK_ENV']
threads 0,5

workers 3
preload_app!

on_worker_boot do |variable|
	ActiveSupport.on_load(:active_record) do
		ActiveRecord::Base.establish_connection
		
	end
end