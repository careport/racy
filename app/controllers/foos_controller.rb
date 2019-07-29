class FoosController < ApplicationController
  def index
    @foos = Foo.all
  end

  def show
    foo = Foo.find_by!(id: params[:id])
    sleep 0.5
    bars = Bar.connection.unprepared_statement do
      foo.bars.to_a
    end
    render json: {}
  end
end
