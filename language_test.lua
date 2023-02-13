--example1 = function(x, y)
--  print(x .. y)
--end

--function example2(x)
--  print(x)
--end

--example1("Hello1", " World")
--example2("Hello2")

------------------------------------------

--function test_side_effect(a)
--  a = a .. "extra"
--end

--myStr = "Hi"
--print(myStr)
--test_side_effect(myStr)
--print(myStr)

-------------------------------------------

--  fruits = {"apple", "banana"}
--  table.insert(fruits, "orange")
--  fruits[5] = "pineapple"
--  table.remove(fruits, 2)
--  for i = 1,5 do
--    print(fruits[i])
--  end

--------------------------------------------

--function insert_foo(myTable)
--  table.insert(myTable, "foo")
--end

--t = {}
--insert_foo(t)
--insert_foo(t)
--for i = 1,#t do
--  print(t[i])
--end

----------------------------------------------

--t = {}
--t["foo"] = "bar"
--print(t["foo"])
--table.insert(t, "baz")
--print("****")
--for i = 1,#t do
--  print(t[i])
--end
-- MENTAL NOTE: see caveats of the length operator

-----------------------------------------------