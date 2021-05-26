class Author
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :age, type: Integer

  has_many :books
end
