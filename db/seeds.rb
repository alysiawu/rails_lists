3.times do |index|
    List.create({
        title: Faker::Book.title,
        shared: Faker::Time.between(from: DateTime.now - 7, to: DateTime.now),
        # user_id: index + 1
    })
end

# SecureRandom.uuid
3.times do |index|
    List.create({
        title: Faker::Book.title,
        archived: Faker::Time.between(from: DateTime.now - 14, to: DateTime.now - 7),
        # user_id: index + 4
    })
end


3.times do |index|
    List.create({
        title: Faker::Book.title,
        # user_id: index + 7s
    })
end


10.times do |index|
    Note.create({
        content: Faker::Quote.yoda,
        status: 0 # 0 todo
    })
end


User.create({
    email: 'alysiawu886@gmail.com',
    password: '123456'
})

