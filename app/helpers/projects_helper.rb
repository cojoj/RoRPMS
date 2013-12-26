module ProjectsHelper
  def projects(status)
    waiting = Array.new
    @projects.each do |p|
      if p.status == status
        waiting.push(p)
      end
    end
    return waiting
  end
end
