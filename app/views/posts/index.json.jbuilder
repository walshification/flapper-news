json.array! @posts do |post|
  json.id post.id
  json.link post.link
  json.title post.title
  json.upvotes post.upvotes

  json.comments post.comments do |comment|
    json.id comment.id
    json.post_id post.id
    json.body comment.body
  end
end
