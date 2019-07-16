class Post < ApplicationRecord
    belongs_to :user

    def self.generate_posts
        Post.create!(title: "제목입니다.", content: "내용입니다.")
    end
end
