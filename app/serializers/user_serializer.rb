class UserSerializer < ActiveModel::Serializer

attributes :id, :name, :email, :phone_number, :token

has_many :visits

# def visits
#   object.visits
# end


end
