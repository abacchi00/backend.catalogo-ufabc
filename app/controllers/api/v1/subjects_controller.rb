class Api::V1::SubjectsController < Api::V1::BaseController
  def index
    @subjects = Subject.all.sort_alphabetical_by(&:name)

    render json: @subjects
  end
end
