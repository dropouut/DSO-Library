**(Creating  the Library)**


local main = Library:Init {
    name = "YOUR LIBRARY NAME HERE"
}


**(Creating the Tab)**


local tab = main:Tab({
      name = "Tab Name here",
      Icon = "rbxassetid://"
 })
 
 
 **(Creating a warning)**
 
 
 local warning = tab:Warning({
        message = "Your text here"
})


**(Creating a Button)**


local button = tab:Button({
        name = "Your Text here",
        callback = function() warning:SetText("I am a warning") end
)}


**(Creating a Slider)**


local Slider = tab:Slider({
      Title = "Your Text here",
      min = 0,
      max = 100,
      default = 50,
      callback = function(v) print(V) end
})


**(Creating a Toggle)**


local tog = tab:Toggle({
  callback = function(v)
        print(v)
  end,
})


**(Creating the Dropdown)**


local d = tab:Dropdown({
      title = "Your Title here",
      calback = function(v)
            print(v .. " was clicked")
      end,
})

**(Dropdown methods)**


The dropdown function got the method 'Add'


**(Warning Methods)**


You can 'SetText' of the warning
