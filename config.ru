require 'bundler/setup'
require 'rack'
require 'json'

app = ->(env) do
  env = env.merge('CUSTOM_ENV' => ENV['CUSTOM_ENV'])
  body = JSON.pretty_generate(env)
  ['200', {'Content-Type' => 'application/json'}, [body]]
end

run app
