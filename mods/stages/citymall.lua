function onCreate()
	
	makeLuaSprite('bg', 'CityMall', -580,39)
	makeLuaSprite('wall', 'CityMallWall', -2000,39)
	
	setScrollFactor('bg',1.1,1.1);
	setScrollFactor('wall',1.1,1.1);
	scaleObject('bg',1.45, 1.5)
	scaleObject('wall',4, 1.4)
	addLuaSprite('wall', false)
	addLuaSprite('bg', false)

	makeAnimatedLuaSprite('1','temcore/Mitakapantalla',-520,39)
	addAnimationByPrefix('1','background','Mitakapantalla dance',10,true)
	objectPlayAnimation('1','background',false)
	--setScrollFactor('1',-1, -1);
	
	addLuaSprite('1', true);
	scaleObject('1',0.9, 1);
	setProperty('1.visible', false)
	
	makeLuaSprite('2', 'temcore/fil_tem',-520,39)
	addLuaSprite('2', true);
	scaleObject('2',1, 1);
	setProperty('2.visible', false)
end
function onEvent(name,value1,value2)
	if name == 'Play Animation' then
		if value1 == '0' then
	setProperty('2.visible', false)
	setProperty('1.visible', true)
end
		if value1 == '1' then
			setProperty('2.visible', true)
end
end
end