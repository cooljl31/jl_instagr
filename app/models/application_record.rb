class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  include Rollbar::ActiveJob
end
