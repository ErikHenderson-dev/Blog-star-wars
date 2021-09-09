# fronze_string_literal: true

class Post < ApplicationRecord
  self.table_name = 'posts'
  self.primary_key = 'referencial'
end
