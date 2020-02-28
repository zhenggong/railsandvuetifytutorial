module API
  module V1
    class Users < Grape::API
      resource :user do

        # GET /api/v1/articles
        desc 'Retrun all user'
        get '/' do
          User.all
        end

        # GET /api/v1/articles/{:id}
        desc 'Retrun a user'
        params do
          requires :id, type: Integer
        end
        get ':id' do
          User.find(params[:id])
        end

      end      
    end
  end
end