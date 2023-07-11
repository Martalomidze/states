SecondState = Class{__includes = BaseState}

function SecondState:render()
	love.graphics.printf(
		'2',
		0,
		VIRTUAL_HEIGHT / 2 - 16,
		VIRTUAL_WIDTH,
		'center')
		
	if love.keyboard.isDown('space') then
		stateMachine:change('play')
	end
end


