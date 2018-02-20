-----------------------------------------------------------------------------------------
--
--Created by Ethan Bellem
--Created on feb 2018
--
-- i will make a text box and put the message on screen
-----------------------------------------------------------------------------------------

display.setDefault( "background", 0, 0.7, .6 )
local button = display.newImageRect( "./assets/sprite/enterButton.png", 500, 300)
button.x = 1040
button.y = 800
local text = display.newText( "Enter your name", 1040, 450, native.systemfont, 72)
local answerTextField = native.newTextField( display.contentCenterX, display.contentCenterY - 200, 500, 100 )

local function pressingEnter(event)
	-- to make the button send a message to the console and screen
	print( answerTextField.text )
	local moretext = display.newText( answerTextField.text, 1040, 1000, native.systemfont, 72)
	 return true
end

button:addEventListener( "touch", pressingEnter )