push = require 'push'
Class = require 'class'

require 'StateMachine'

require 'BaseState'
require 'FirstState'
require 'SecondState'
require 'ThirdState'
require 'FourthState'
require 'FifthState'
require 'SixthState'
require 'SeventhState'


WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 512
VIRTUAL_HEIGHT = 288

function love.load()
	love.graphics.setDefaultFilter('nearest', 'nearest')
	love.window.setTitle('State Machine')
	
	push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
		vsync = true,
		fullscreen = false,
		resizable = true
	})
	
	stateMachine =  StateMachine {
		['start'] = function() return FirstState() end,
		['play'] = function() return SecondState() end,
		['play'] = function() return ThirdState() end,
		['play'] =  function() return FourthState() end,
	    ['play'] = function() return FifthState() end,
		['play'] =  function() return SixthState() end,
		['play'] =  function() return SeventhState() end
	}
	
	stateMachine:change('start')
	
	font = love.graphics.newFont('font.ttf', 16)
	love.graphics.setFont(font)
end

function love.resize(width, height)
	push:resize(width, height)
end

function love.keypressed(key)
	if key == 'enter' then
		love.event.quit()
	end
end

function love.update(dt)
	stateMachine:update(dt)
end

function love.draw()
	push:start()
	
	stateMachine:render()
	
	push:finish()
end
