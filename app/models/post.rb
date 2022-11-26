class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length:{minimum:250}
    validates :summary, length:{maximum:250}
    validates :category, inclusion:{in:%w(Fiction Non-Fiction), message: "is not included in the list"}

    # validate :title_is_clickbait

    # def title_is_clickbait
    # if !title["Won't Believe"] 
    #     errors.add(:title,"Not clickbaitey")
    #     #||!title["Secret"]||!title["Guess"]||!title["Top [number]"]
    # end
    # end
end
