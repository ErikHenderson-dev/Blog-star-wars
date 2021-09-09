# fronze_string_literal: true

SimpleCov.minimum_coverage_by_file 100
SimpleCov.minimum_coverage 100

SimpleCov.start 'rails' do
  add_group 'Controllers', 'app/controllers'
  add_group 'Models', 'app/models'
  add_group 'Business', 'app/Business'

  # used when ignore files or directory
  # add_filter '/app/views/'
end
