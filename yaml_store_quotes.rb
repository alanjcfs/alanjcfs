# Will store interesting quotes

require 'store/yaml'

store = YAML::Store.new 'quotes.yml'
Quote = Struct.new :author, :text

input = gets.chomp

store.transaction do
	store['db'] ||= []
	store['db'] << Quote.new('Steve Jobs', '')
end