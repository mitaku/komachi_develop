#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

KomachiDevelop::PryExtension.create_command "copy", "Copy argument to the clip-board" do
  def process
    str = args.join(" ")
    IO.popen('pbcopy', 'w') { |f| f << str.to_s }
  end
end
