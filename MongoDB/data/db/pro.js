// db.book.find()
// db.book.find({$and: [{"pages": {$gt:209}},{"year": 1952}]})
// db.book.find({$or: [{"pages": {$gt:209}},{"year": 1952}]})
// db.book.find({$nor: [{"pages": {$gt:209}},{"year": 1952}]})
// db.book.find({"pages":{$not:{$eq:209}}})
// db.book.find({"pages":{$eq:209}})

// db.book.find({"language" : "English"})
// db.book.aggregate([
//     {$match: {"language" : "English","pages" : {$lte:209}}}
//     ])

// db.book.find({"language" : "English"},{author:1, pages:1, _id:0})
// db.book.find({"language" : "English"}).projection({author:1, pages:1, _id:0})
// db.book.find({"language" : "English"}).select({author:1, pages:1, _id:0})


// db.book.aggregate([
//     {$match: {"language" : "English"}},
//     {$project: {author:1, pages:1,title:1}},
//     ])


// db.book.find().limit(20)
// db.book.aggregate([
//     {$limit: 24}
//     ])


// db.book.find().skip(5)
// db.book.aggregate([{$skip: 24}])


// db.book.find({"language" : "English"}).count()
// db.book.aggregate([
//     {$match: {"language" : "English"}},
//     {$count: "count"},
//     ])