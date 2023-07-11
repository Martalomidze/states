FirstState = Class{__includes = BaseState}

function FirstState:render()
	love.graphics.printf(
		'1',
		0,
		VIRTUAL_HEIGHT / 2 - 16,
		VIRTUAL_WIDTH,
		'center')
	
	if love.keyboard.isDown('space') then
		stateMachine:change('play')
	end
end

