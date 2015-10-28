class FavoriteMailer < ApplicationMailer
  default from: "justhitdelete@gmail.com"

  def new_comment(user, post, comment)
    
    headers["Message-ID"] = "<comments/#{comment.id}https://salty-harbor-3743.herokuapp.com/>"
    headers["In-Reply-To"] = "<post/#{post.id}https://salty-harbor-3743.herokuapp.com/>"
    headers["References"] = "<post/#{post.id}https://salty-harbor-3743.herokuapp.com/>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
