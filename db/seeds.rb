Article.destroy_all
Image.destroy_all
Text.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE articles_id_seq RESTART WITH 1")
ActiveRecord::Base.connection.execute("ALTER SEQUENCE texts_id_seq RESTART WITH 1")
ActiveRecord::Base.connection.execute("ALTER SEQUENCE images_id_seq RESTART WITH 1")

article1 = Article.create!(title:'test1')

t1 = Text.create!(headline:'head1', sentence:'test sentence 1', position: 1)
t2 = Text.create!(headline:'head2', sentence:'test sentence 2', position: 2)
t3 = Text.create!(headline:'head3', sentence:'test sentence 3', position: 4)
i1 = Image.create!(headline:'head1', image_URL:'test URL 1', position: 3)

article1.texts << t1
article1.texts << t2
article1.texts << t3
article1.images << i1
