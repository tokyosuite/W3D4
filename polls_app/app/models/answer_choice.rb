# == Schema Information
#
# Table name: answer_choices
#
#  id            :bigint           not null, primary key
#  question_id   :integer
#  answer_choice :text
#

class AnswerChoice < ApplicationRecord 
  belongs_to :question,
  class_name: :Question, 
  primary_key: :id,
  foreign_key: :question_id

  has_many :responses,
  class_name: :Response, 
  primary_key: :id,
  foreign_key: :answer_id 
end
