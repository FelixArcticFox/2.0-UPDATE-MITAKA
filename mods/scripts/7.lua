function onUpdate()
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') then
	makeLuaSprite('7', 'StartBG', -1000, -1000)
	scaleObject('7',10, 10)
	addLuaSprite('7', true)
        endSong()
    end
end