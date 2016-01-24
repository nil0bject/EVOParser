module Dude
  class App < EVOParser::App

    get 'dudes/' do
      Dude::Decorator.represent(Dude::Record.all).to_json
    end

    get 'dudes/:id' do
      Dude::Decorator.represent(Dude::Record.find(params[:id])).to_json
    end

  end
end
