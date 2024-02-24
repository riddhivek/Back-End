// Query

// 1. db.createCollection("students")
// 2. db.students.insertOne({});
// 3. db.students.insertMany([]};
// 4. db.students.find({"name": 'John'});
// 5. db.students.findOne({"name": 'John'});
// 6. db.students.findOne({"name": 'John'}, {"_id":1, "name":1 });
// 7. db.students.updateOne({"name": 'John'}, {$set: {age: 21}}, {upsert:true});
// 8. db.students.updateMany({"name": 'John'}, {$set: {age: 21}}, {upsert:true})
// 9. db.students.deleteOne({"name": 'John'});
// 10. db.students.deleteMany({"name": 'John'});
// 11.db.collection.drop();
// 12.db.dropDatabase();

// ------------------------------Comparison operator-------------------------------

// $eq
// db.collection.find({"field": { $eq : value }})

// $ne
// db.collection.find({"field": { $ne: value }})

// $gt
// db.collection.find({"field": { $gt: value }});

// $gte
// db.collection.find({"field": { $gte: value }});

// $lt
// db.collection.find({"field": { $lt: value }});

// $lte
// db.collection.find({"field": { $lte: value }});

// $in
// db.collection.find({"field": { $in: [val1, val2] }});

// -------------------------------Logical operator----------------------------------

// $and
// db.collection.find( { $and: [ {exp1},{exp2},...] } );

// $or
// db.collection.find( { $or: [ {exp1},{exp2},...] } );

// $nor
// db.collection.find( { $nor: [ {exp1},{exp2},...] } );

// $not
// db.collection.find( {"field": { $not: { exp1 }}});

// -------------------------MongoDB Aggregation--------------------------------------

// $match
// db.collection.aggregate([
//     { $match: { "field": value } }
// ]);

// db.collection.find({ "field": value })

// $project

// db.collection.aggregate([
//     { $project: { _id: 0, "field": 1, "field": 0 } }
//   ]);

//   db.collection.find({},{"_id": 0, "field": 1, "field": 1});

// $limit

// db.collection.aggregate([
//     { $limit: 10 },  // Limits the output to the first 10 documents
// ]);

// db.collection.find().limit(number)

// $skip
// db.collection.aggregate([
    // { $skip: 5 },  // Skips the first 5 documents
//   ]);
  
//   db.collection.find().skip(number);

// $count

// db.collection.aggregate([
//     { $count: "field" },
//   ]);
  
//   db.collection.find().count();

// $sort
// db.collection.aggregate([
//     { $sort: { "field": 1 } },   
//   ]);
  
//   db.collection.find().sort({"field": 1});
  // 1 - Ascending Order
  // -1 - Descending Order

// $group
// db.collection.aggregate([
//     { 
//               $group: { 
//          _id: "$field",
//                   total: { $sum: "$field" }
//               },
//     },
//   ]);

// $lookup
// db.collection.aggregate([
//     { 
//               $lookup: { 
//                      from: "",
//                               localField: "",
//                               foreignField: "",
//                               as: ""
//                   },
//       },
//   ]);

// $unwind
// db.students.aggregate([
//     { $unwind: "$field" }
//   ]);