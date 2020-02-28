module V1
  class Root < Grape::API
    format :json
    #version 'v1'
    version 'v1b'
    get '/' do
      { hello: 'world' }
    end
  end
end