5.times do
    MyArticle.create({
        title: Faker::Book.title,
        body: Faker::Lorem.sentence
    })
end