class MoviesController < ApplicationController
    def index
        @movies = Movie.all
        if params[:query].present?
            # sql_subquery = "title ILIKE :query OR synopsis ILIKE :query"
            # @movies = @movies.where(sql_subquery, query: "%#{params[:query]}%")
            
            # sql_subquery = <<~SQL
            # movies.title ILIKE :query
            # OR movies.synopsis ILIKE :query
            # OR directors.first_name ILIKE :query
            # OR directors.last_name ILIKE :query
            # SQL
            # @movies = @movies.joins(:director).where(sql_subquery, query: "%#{params[:query]}%")

            # sql_subquery = <<~SQL
            # movies.title @@ :query
            # OR movies.synopsis @@ :query
            # OR directors.first_name @@ :query
            # OR directors.last_name @@ :query
            # SQL
            # @movies = @movies.joins(:director).where(sql_subquery, query: params[:query])
            
            # @movies = Movie.global_search(params[:query])
        end
    end
end
