class ArticleMailer < ActionMailer::Base
 default from: "srikanth@masymbol.com"

 def article_mail(article)
  	@article = article
  	mail(:to => "srikanth@masymbol.com", :subject => @article.name)
  end
end
