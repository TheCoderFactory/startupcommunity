module PostsHelper
	def posts_count(user)
		user.posts.count
	end
end
