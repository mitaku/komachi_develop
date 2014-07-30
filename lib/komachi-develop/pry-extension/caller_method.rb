KomachiDevelop::PryExtension.create_command "caller_method" do
  def process
    depth = args.first.to_i || 1
    if /^(.+?):(\d+)(?::in `(.*)')?/ =~ caller(depth+1).first
      file = Regexp.last_match[1]
      line = Regexp.last_match[2].to_i
      method = Regexp.last_match[3]
      puts [file, line, method]
    end
  end
end
