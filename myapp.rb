require 'sinatra'

get '/' do
    %q{<form method="post">
        Enter your name: <input type="text" name="name" />
        <input type="submit" value="Go!" />
      </form>}
end
post '/' do
    "Hello #{params[:name]}!"
end
get '/bye' do
    "Leaving already?"
end
get '/time' do
    Time.now.to_s
end
not_found do
    "<html><body>Sorry, you're lost!</body></html>"
  end