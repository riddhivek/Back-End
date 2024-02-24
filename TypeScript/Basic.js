// TYPESCRIPT-TYPE
// let a: number = 10;
// console.log(a);
// let b: string = "Dylan";
// console.log(b);
// let c: boolean = true;
// console.log(c);
// let d: undefined; 
// console.log(d);
// USER-DEFINED-TYPE
// ARRAY:-
// let arr : Array<number> = [10,20,30,40,50];
// let arr : number[] = [10,20,30,40,50];
// let arr : string[] = ["Skill" , "Hello" , "World"];
// console.log(arr);
// TOUPLE:-
// let t:[number,string]
// t = [10,"Hello"];
// console.log(t);
// FUNCTION:-
// function square(a: number, b: number) : number | string
// {
//     return a-b;
// }
// console.log(square(10,5));
// INTERFACE:-
// interface skill{
//     name:string;
//     age:number;
//     email:string;
// }
// let person: skill = {
//     name:'John',
//     age: 20,
//     email: 'john@test.in',
// }
// console.log(person);
var color;
(function (color) {
    color[color["red"] = 0] = "red";
    color[color["blue"] = 1] = "blue";
    color[color["pink"] = 2] = "pink";
    color[color["yellow"] = 3] = "yellow";
    color[color["orange"] = 4] = "orange";
    color[color["green"] = 5] = "green";
    color[color["black"] = 6] = "black";
    color[color["white"] = 7] = "white";
})(color || (color = {}));
var x = color.blue;
// class person{
//     rollno:number;
//     name:string;
//     constructor(r: number, n: string){
//         this.rollno = r;
//         this.name = n;
//     }
//     showDetails(){
//         console.log(this.name + " " + this.rollno);
//     }
// }
// let data =new person(20, 'skill');
// data.showDetails();
