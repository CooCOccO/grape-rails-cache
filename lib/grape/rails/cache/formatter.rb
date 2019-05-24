module Grape
  module Rails
    module Cache
      # For maximum performance we are fetching string from redis and return them with no parsing at all
      module JsonFormatter
        def self.call(object, env)
          MultiJson.dump(object)
        end
      end
    end
  end
end
