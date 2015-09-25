include RandomData

50.times do
  Post.create!(
   title: RandomData.random_sentence,
   body: RandomData.random_paragraph
   )
end
posts = Post.all
100.times do 
  Comment.create!(
   post: posts.sample,
   body: RandomData.random_paragraph
  )
end
if Post.where(:id=>0).blank?
  Post.create(
    id: 0,
    title: "UNIQUE TITLE",
    body: "UNIQUE BODY"
    )
  puts "Created Unique Post Here"
end
if Comment.where(:id=>0).blank?
  Comment.create(
    id: 0,
    body: "UNIQUE BODY"
    )
  puts "Created Unique Comment Here"
end
puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"

  