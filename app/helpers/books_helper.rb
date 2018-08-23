module BooksHelper
  def sort_dir(sort, current_dir)
    dir = current_dir[sort.to_sym].to_s.to_sym if current_dir
    dir == :asc ? :desc : :asc
  end
end
