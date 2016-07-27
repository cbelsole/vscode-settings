#!/usr/bin/env ruby

require 'json'

user_settings_path = File.expand_path('~/Library/Application Support/Code/User/settings.json')
settings_path = File.expand_path('settings.json')

puts 'merging settings files'
user_settings = JSON.parse(File.read(user_settings_path))
repo_settings = JSON.parse(File.read(settings_path))
File.open(user_settings_path, 'w') { |file| file.write(JSON.pretty_generate(repo_settings.merge!(user_settings))) }

system 'code --install-extension CraigMaslowski.erb'
system 'code --install-extension PeterJausovec.vscode-docker'
system 'code --install-extension fabianlauer.vs-code-xml-format'
system 'code --install-extension groksrc.haml'
system 'code --install-extension lukehoban.Go'
system 'code --install-extension mohsen1.prettify-json'
system 'code --install-extension rebornix.Ruby'
system 'code --install-extension samverschueren.final-newline'
system 'code --install-extension seanmcbreen.Spell'
system 'code --install-extension xabikos.JavaScriptSnippets'
system 'code --install-extension ziyasal.vscode-open-in-github'
