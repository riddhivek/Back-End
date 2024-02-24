// use node_6pm

// show dbs

// show collections

// db.createCollection("user")

db.student.insertOne({
    name: 'John',
    age:28,
    location:'Surat'
})

db.student.insertMany([
    {
        name:'Smith',
        age:29,
        location:'India'
    },
    {
        name:'Sona',
        age:20,
        location:'Austrelia'
    },
    {
        name:'Zoya',
        age:25,
        location:'Panjab'
    },
    {
        name:'Maya',
        age:28,
        gender:'female',
        location:'India'
    },
    {
        name:'Harshu',
        age:25,
        gender:'female',
        location:'India'
    }
])

db.student.find()

// [
//     {
//       _id: ObjectId('65af80673211082507d1767c'),
//       name: 'John',
//       age: 28,
//       location: 'Surat',
//       course: 'Node Js Devloper',
//       gender: 'female'
//     },
//     {
//       _id: ObjectId('65af80753211082507d1767d'),
//       name: 'Smith',
//       age: 29,
//       location: 'India'
//     },
//     {
//       _id: ObjectId('65af80753211082507d1767e'),
//       name: 'Sona',
//       age: 20,
//       location: 'Austrelia'
//     },
//     {
//       _id: ObjectId('65af80753211082507d1767f'),
//       name: 'Zoya',
//       age: 25,
//       location: 'Panjab'
//     },
//     {
//       _id: ObjectId('65af80753211082507d17680'),
//       name: 'Maya',
//       age: 28,
//       location: 'India'
//     },
//     {
//       _id: ObjectId('65af80753211082507d17681'),
//       name: 'Harshu',
//       age: 25,
//       location: 'India'
//     },
//     {
//       _id: ObjectId('65b0ce48543f834214c5f3dd'),
//       name: 'Smith',
//       age: 29,
//       location: 'India'
//     },
//     {
//       _id: ObjectId('65b0ce48543f834214c5f3de'),
//       name: 'Sona',
//       age: 20,
//       location: 'Austrelia'
//     },
//     {
//       _id: ObjectId('65b0ce48543f834214c5f3df'),
//       name: 'Zoya',
//       age: 25,
//       location: 'Panjab'
//     },
//     {
//       _id: ObjectId('65b0ce48543f834214c5f3e0'),
//       name: 'Maya',
//       age: 28,
//       gender: 'female',
//       location: 'India'
//     },
//     {
//       _id: ObjectId('65b0ce48543f834214c5f3e1'),
//       name: 'Harshu',
//       age: 25,
//       gender: 'female',
//       location: 'India'
//     }
//   ]

db.student.find({gender:'female'})

// [
//     {
//       _id: ObjectId('65af80673211082507d1767c'),
//       name: 'John',
//       age: 28,
//       location: 'Surat',
//       course: 'Node Js Devloper',
//       gender: 'female'
//     },
//     {
//       _id: ObjectId('65b0ce48543f834214c5f3e0'),
//       name: 'Maya',
//       age: 28,
//       gender: 'female',
//       location: 'India'
//     },
//     {
//       _id: ObjectId('65b0ce48543f834214c5f3e1'),
//       name: 'Harshu',
//       age: 25,
//       gender: 'female',
//       location: 'India'
//     }
//   ]
db.student.findOne({gender:'female'})

// {
//     _id: ObjectId('65af80673211082507d1767c'),
//     name: 'John',
//     age: 28,
//     location: 'Surat',
//     course: 'Node Js Devloper',
//     gender: 'female'
//   }


db.student.updateOne({gender:'male'} , {$set:{gender:'female', course:"Node Js Devloper"}},{upset:true})

// {
//     acknowledged: true,
//     insertedId: null,
//     matchedCount: 0,
//     modifiedCount: 0,
//     upsertedCount: 0
//   }

db.student.updateOne({} , {$set:{gender:'female', course:"Node Js Devloper"}},{upset:true})

// {
//     acknowledged: true,
//     insertedId: null,
//     matchedCount: 1,
//     modifiedCount: 0,
//     upsertedCount: 0
//   }

// [
//   {
//     _id: ObjectId('65af80673211082507d1767c'),
//     name: 'John',
//     age: 28,
//     location: 'Surat'
//   },
//   {
//     _id: ObjectId('65af80753211082507d1767d'),
//     name: 'Smith',
//     age: 29,
//     location: 'India'
//   },
//   {
//     _id: ObjectId('65af80753211082507d1767e'),
//     name: 'Sona',
//     age: 20,
//     location: 'Austrelia'
//   },
//   {
//     _id: ObjectId('65af80753211082507d1767f'),
//     name: 'Zoya',
//     age: 25,
//     location: 'Panjab'
//   },
//   {
//     _id: ObjectId('65af80753211082507d17680'),
//     name: 'Maya',
//     age: 28,
//     location: 'India'
//   },
//   {
//     _id: ObjectId('65af80753211082507d17681'),
//     name: 'Harshu',
//     age: 25,
//     location: 'India'
//   }
// ]