Article.delete_all
Text.delete_all
Image.delete_all
2.times do |a|
  article = Article.create!(title: Faker::Artist.name)
  5.times do |x|
    Text.create!(article: article, headline: Faker::Company.name, sentence: Faker::OnePiece.quote)
    image = Image.create!(article: article, headline: Faker::Company.name, image_URL: Faker::Company.name)
    image.save
  end
end
