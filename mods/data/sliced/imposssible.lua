local defaultNotePos = {};

function onSongStart()
    for i = 0,3 do
        x = getPropertyFromGroup('strumLineNotes', i, 'x')

        y = getPropertyFromGroup('strumLineNotes', i, 'y')

        table.insert(defaultNotePos, {x,y})
    end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	for i = 0,3 do
        setPropertyFromGroup('strumLineNotes', i, 'x', math.random(0, 600))
        setPropertyFromGroup('strumLineNotes', i, 'y', math.random(0, 400))
        setPropertyFromGroup('strumLineNotes', i, 'angle', math.random(0, 360))
    end
end