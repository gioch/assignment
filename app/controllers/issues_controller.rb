class IssuesController < ApplicationController
  def index
    filter_service = Issues::FilterService.new(params)
    issues = filter_service.perform

    render json: issues
  end
end
