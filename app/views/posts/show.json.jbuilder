json.(@post, :id, :link, :title, :upvotes)

json.comments @post.comments do |comment|
  json.id comment.id
  json.post_id comment.post_id
  json.body comment.body
end
