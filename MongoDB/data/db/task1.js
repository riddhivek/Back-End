// use node_6pm

//  show dbs

// show collections

db.teacher.insertMany([
    {
        name:"Hello",
        age:20,
        email:"hello@test.in",
        faculty:"Vivek",
        course:"Frount-end"
    },
    {
        name:"Darshan Devani",
        age:25,
        email:"darshan@test.in",
        hobbie:['Travelling','Music'],
        faculty:"Girish",   
        course:"Back-end"
    },
    {
        name:"Rutvik Savaliya",
        email:"rutvik@test.in",
        gender:'Male',
        hobbie:['Travelling','Music'],
        faculty:"Vivek",
        course:"Frount-end"
    },
    {
        name:"Harsh Chavada",
        email:"harsh@test.in",
        age:19,
        gender:'Male',
        hobbie:['Travelling','Music'],
        faculty:["Nikunj"],
        course:"UI-UX"
    },
    {
        name:"Akshay Dobariya",
        email:"akshay@test.in",
        age:20,
        gender:'Male',
        hobbie:['Travelling','Music'],
        faculty:"Vivek",
        course:"Frount-end" 
    }
])
db.teacher.find()