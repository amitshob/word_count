require('rubygems')
require('sinatra')
require('sinatra/reloader')
require('./lib/wordcount')
also_reload('lib/**/*.rb')

get('/') do
 erb(:index)
end

get('/input_form') do
  erb(:form)
end

get('/results') do
  word_input = params.fetch('word_input')
  string_input = params.fetch('string_input')
  word_frequency= params.fetch('string_input').wordcount(params.fetch('word_input'))

  @word_input=word_input
  @string_input=string_input
  @word_frequency = word_frequency
  erb(:results)
end
