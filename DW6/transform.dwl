//Array of objects into single object using map

%dw 2.0
output application/json
var v= payload
//taking variable v as payload 
---
 v map( {
     id: $.id 
    } ++ {
        ($.fields map($.name): if ($.content is String)  $.content else ($.content.values joinBy ",") 
 )
    })
    //script to get the array of objects into single object using map function 



//   v map ((item, index) ->
//      {id : item.id} ++
//      {(item.fields map (
//          ($.name) :  if ($.content is String)  $.content else ($.content.values joinBy ",") 
//   ))})