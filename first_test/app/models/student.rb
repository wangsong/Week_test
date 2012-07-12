class Student < ActiveRecord::Base
    has_many :parents
	
	attr_accessible :name, :email, :number, :sex
	name_reg=/^[a-zA-Z0-9_@]{1,}$/
	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :name, :presence=>true,
                    :format => {:with=>name_reg},
                     :length =>{ :maximum =>20}
	validates :email, :presence=>true,
                     :format => {:with=>email_regex},
                     :length =>{ :maximum =>50}
end
