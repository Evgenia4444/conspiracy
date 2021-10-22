posts = [
{
	author: "Nick Cave",
	content: "Tracklist"
},
{
	author: "Nick Cave Old Too",
	content: "Some Old Tracklist"
}
]

posts.each do |post|
	post = Post.create(post)
	puts "Some magic just create a post by #{ post.author} with id #{ post.id }!"
end

