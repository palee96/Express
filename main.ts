var express = require('express');
    
var app = express();

let number_array = new Array();

function ForCycle(start, stop){
    
    for (let i = start; i <= stop; i++)
    {
        if(start <= 0){
            console.log("Invalid number");
            return "Invalid number, start can't be 0 or less!";
            
        }
        if ((i % 3 || i % 7) ==0){
            number_array[i-start] = "FizzBuzz"; 
             console.log("FizzBuzz\n");
        }
       
         else if (i % 3 == 0)
        {
            number_array[i-start] = "Fizz";
             console.log("Fizz\n");
        }
        else if (i % 7 ==0)
        {
            number_array[i-start] = "Buzz";;
             console.log("Buzz\n");
        }
       
        else{
            number_array[i-start] = i;
             console.log("%d\n",i);
        }
    }
    return JSON.stringify(number_array);
}

app.get('/fizzbuzz/:from/:to', function(req,res){
    let data_to_send = ForCycle(req.params.from, req.params.to);
    console.log(data_to_send);
    res.send("result: " + data_to_send);
});

app.listen(9876);