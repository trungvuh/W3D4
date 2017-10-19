class Question < ApplicationRecord
  validates :body, presence: true

  belongs_to :poll,
  class_name: :Poll,
  primary_key: :id,
  foreign_key: :poll_id

  has_many :answer_choices,
  class_name: :AnswerChoice,
  primary_key: :id,
  foreign_key: :question_id
end
