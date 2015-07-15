class VisitSerializer < ActiveModel::Serializer

attributes :start_of_visit, :end_of_visit, :protocol, :subject_id, :reason_for_visit, :priority

has_many :notifications

end

