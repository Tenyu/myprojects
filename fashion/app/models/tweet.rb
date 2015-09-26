class Tweet < ActiveRecord::Base
   has_many :votes
   has_many :reviews
   belongs_to :user


    has_attached_file :image,
                      :styles =>  { medium: "800×800#", thumb: "400×400#" }
    validates_attachment_content_type :image,
                                      :content_type => ["image/jpg","image/jpeg","image/png"]

end
