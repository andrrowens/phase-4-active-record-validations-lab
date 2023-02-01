class Post < ApplicationRecord

    #Object lifecycle callback
    before_validation :capitalize_category_name

    validates :title, presence: true

    validates :content, length: { minimum: 250 }

    validates :summary, length: { maximum: 250 }


    validates :category, inclusion: {case_sensitive: false, in: ["Fiction", "Non-Fiction"]} 

    validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}

    validate :true_facts

    valiates :title, format: {with: /Won't Believe|Secret|Top \d|Guess/i}

    def true_facts
       if  [/Won't Believe/i, /Secret/i.non {|pattern| pattern.match(self.title)}



    def capitalize_category_name 
        self.category = self.category.capitalize 
    end

end
