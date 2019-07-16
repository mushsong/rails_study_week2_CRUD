class Post < ApplicationRecord
    belongs_to :user

    def self.generate_posts
        Post.create!(title: "제목입니다.",
                    content: "내용입니다.",
                    user_id: User.first.id)
    end

    def say_posts
        puts("#{self.title}를 제목으로, #{self.content}를 내용으로 입력하시겠습니까?")
    end
end
