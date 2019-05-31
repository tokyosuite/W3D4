# == Schema Information
#
# Table name: responses
#
#  id        :bigint           not null, primary key
#  answer_id :integer
#  user_id   :integer
#

class Response < ApplicationRecord 
  belongs_to :answer_choice, 
  class_name: :AnswerChoice, 
  primary_key: :id,
  foreign_key: :answer_id 

  belongs_to :respondent, 
  class_name: :User, 
  primary_key: :id, 
  foreign_key: :user_id 

  has_one :question, 
    through: :answer_choice, 
    source: :question 

  def sibling_responses
    q = self.question
    q.responses.where.not(id: self.id)
  end

  def respondent_already_answered?
    sibling_responses.length > 0 ? true : false
  end

  

end
