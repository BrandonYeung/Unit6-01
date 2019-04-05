display.setDefault( "background", 255/255, 155/255, 95/255 )



local calculateButton = display.newImageRect( "buttons.PNG", 100, 100 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"

print( "Pick a number from 1 to 6: " )

answerAsNumberField = native.newTextField( display.contentCenterX, display.contentCenterY + 150, 225, 40 )
answerAsNumberField.id = "Answer textField"

responseText = display.newText( "Pick a number between 1 and 6", 160, 150, native.systemFont, 20 )
responseText:setFillColor( 1, 12, 12 )


local function calculateButtonTouch( event )

math.randomseed( os.time() )

local numberToGuess = math.random( 1, 6 )
local answerAsNumber = tonumber(answerAsNumberField.text)

if numberToGuess == answerAsNumber then
  	
  	print("")
    print( "Correct" )
    print( "Please Play Again!!!" )
    responseText.text = "Correct!!!"

else 
	print("")
	print( "Wrong Answer")
	print( "The right answer", numberToGuess)
	print( "Please Play Again!!!" )
	responseText.text = "Wrong answer, play again"
end

end

calculateButton:addEventListener( "touch", calculateButtonTouch )