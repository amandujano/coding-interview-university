require_relative "binary_search"

module ArrayRefinement
  refine Array do
    def index(key)
      binary_search_recursion(self, key, 0, self.size)
    end
  end
end