class ClientSerializer < ActiveModel::Serializer
  attributes :name, :age, :total_memberships
 
  def total_memberships
    object.memberships.sum(:charge)
  end

end
