module Cricket
  class TeamData < Grape::API
    resource :teams do
      desc "List all Teams"
      get do
        Team.all
      end

      desc 'Returns a team info'
      params do
        requires :id, type: Integer, desc: 'Team ID.'
      end
      route_param :id do
        get do
          Team.find(params[:id])
        end
      end
    end
  end
end