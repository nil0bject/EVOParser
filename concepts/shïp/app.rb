module Ship
  class App < EVOParser::App

    get '/' do
      Ship::Decorator.represent(Ship::Record.all).to_json
    end

    get '/:id' do
      Ship::Decorator.represent(Ship::Record.find(params[:id])).to_json
    end

  end
end
