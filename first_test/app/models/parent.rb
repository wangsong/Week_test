class Parent < ActiveRecord::Base
    belongs_to :student
	
  name_reg=/^[a-zA-Z0-9_@]{1,}$/
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  tele_reg=/(1[0-9]{10})|(\d{3,4})(-| )(\d{7,8})/
  validates :name, :presence=>true,
                    :format => {:with=>name_reg},
                    :length =>{ :maximum =>20}
  validates :email, :presence=>true,
                     :format => {:with=>email_regex},
                     :length =>{ :maximum =>50}
  validates :telephone, :presence=>true,
                     :format => { :with=>tele_reg},
                     :length => { :within=>8..12}
end
