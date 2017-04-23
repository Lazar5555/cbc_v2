class ArticleMailer < ApplicationMailer
  default from: "poncebe@gmail.com"
  layout nil

  def new_article(article)
    @article = article

    User.all.each do |user|
      mail(to: user.email, subject: "Nuevo artículo en el blog")
    end
  end
end
