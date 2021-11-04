--[[
    So let's go on an overview on good and bad methods to use
    and also go over why you should use that over that method with the current experience i have
    so lets start
]]

-- lets talk about table creation, specifically empty fields of arrays
-- we create an emtpy array usually like this
local Array: any = {};

-- so lets talk more about something like this
-- when we assign an empty array we name a variable and make it equals an emtpy table {}
-- while this is fine this array will dynamically have to updat everytime it is changed or a index/value gets added into it
-- so what is a better way of doing this? to prevent dynamic updates and just get over table insertion fast and reliably?
-- a better way of this is using table.create() you may ask what that does? well we can create a table and pre allocate/assigned and saved spots for later use
-- this will not dynamically update when something gets inserted into the table as there already room and space for it to go into it premade
local Array: any = table.create(5)

-- now we have created an emtpy array table with 5 pre allocated spots to use so now this will prevent dyanamic updates from happening and it will just happen instantly which is good
-- so let's go over table insertion now using our arrays
-- the old methods of doing this is indexing the table from the current length and adding + 1 spot to it every time
Array[#Array + 1] = "string"

-- now this method was very useful in the past since it was faster than the old table.insert()
-- now however table.insert() recently gotten improved so using something like this would be much more faster and performant
table.insert(Array, "string")

-- this will now insert from that array a new string value
-- now however though there are much better ways of doing this and much much faster
-- an example of that is manually inserting the thing from the index value
Array[3] = "string"

-- the perks of this is how short it is and how simple and effective this is
-- and this method is one of the fastest methods and should only be used when working with emtpy tables