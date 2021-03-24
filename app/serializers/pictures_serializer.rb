class PicturesSerializer
  include FastJsonapi::ObjectSerializer
  attributes :link
  belongs_to :restaurant
end
