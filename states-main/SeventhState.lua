SeventhState = Class{__includes = BaseState}

function SeventhState:render()
	love.graphics.printf(
		'7',
		0,
		VIRTUAL_HEIGHT / 2 - 16,
		VIRTUAL_WIDTH,
		'center')
		
end