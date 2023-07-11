SixthState = Class{__includes = BaseState}

function SixthState:render()
	love.graphics.printf(
		'6',
		0,
		VIRTUAL_HEIGHT / 2 - 16,
		VIRTUAL_WIDTH,
		'center')
		
	if love.keyboard.isDown('space') then
		stateMachine:change('play')
	end
end