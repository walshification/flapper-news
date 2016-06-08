@post do
  json.link @post.link
  json.title @post.title

  json.comments @post.comments do |comment|
    json.body comment.body
  end
end
