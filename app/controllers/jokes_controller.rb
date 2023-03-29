class JokesController < ApplicationController
    # controller methods go here
    def index
        jokes = Joke.all
        render json: jokes
    end
    def show
            joke = Joke.includes(:author).all.sample
        if     joke
            render json: joke.to_json(include: { author: { only: [:name] } })
        else
            render json: { error: 'Joke not found' }, status: :not_found
        end
    end
    private
  
  def joke_params
    params.require(:joke).permit(:content, :author_id)
  end
end
  