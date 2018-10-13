class Issues::FilterService
  def initialize(data)
    @data = data
  end

  def perform
    issues = Issue.order(@data[:sort_order])

    if @data[:assignee_name].present?
      issues = issues.where(assignee:
        User.where('LOWER(name) LIKE ?', "%#{@data[:assignee_name].downcase}%")
      )
    end

    if @data[:reporter_name].present?
      issues = issues.where(reporter:
        User.where('LOWER(name) LIKE ?', "%#{@data[:reporter_name].downcase}%")
      )
    end

    if @data[:summary].present?
      issues = issues.where('LOWER(summary) LIKE ?', "%#{@data[:summary].downcase}%")
    end

    issues.paginate(page: @data[:page], per_page: @data[:page_size])
  end
end