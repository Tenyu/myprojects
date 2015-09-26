class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :tweet
  belongs_to :review

  validate do 
    unless user && user.votable_for?(tweet)
      errors.add(:base, :invalid)
    end
  end
end
