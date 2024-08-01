# Creating dummy posts
posts = [
  { title: 'Sample Title 1', body: 'This is a sample body for the first post.' },
  { title: 'Sample Title 2', body: 'This is a sample body for the second post.' },
  { title: 'Sample Title 3', body: 'This is a sample body for the third post.' },
  { title: 'Sample Title 4', body: 'This is a sample body for the fourth post.' },
  { title: 'Sample Title 5', body: 'This is a sample body for the fifth post.' }
]

posts.each do |post_data|
  Post.find_or_create_by!(title: post_data[:title]) do |post|
    post.body = post_data[:body]
  end
end