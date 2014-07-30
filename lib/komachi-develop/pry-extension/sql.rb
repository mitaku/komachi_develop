KomachiDevelop::PryExtension.create_command "sql", "Send sql over AR." do
  def process
    query = args.join(" ")

    if ENV['RAILS_ENV'] || defined?(Rails)
      pp ActiveRecord::Base.connection.select_all(query)
    else
      pp "Pry did not require the environment, try `pconsole`"
    end
  end
end
