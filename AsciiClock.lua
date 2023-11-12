function Initialize()

    SetMeasures()
	
end

function SetMeasures()

	local _temp = 0
    TimeMeasure = SKIN:GetMeasure('MeasureTime')
    TimeValue = TimeMeasure:GetStringValue()
	
	if string.len(TimeValue) == 3 then
	
		TimeValue = " "..TimeValue
		
	end
	
	for cha in string.gmatch(TimeValue, ".") do
	
        _temp = _temp + 1
        SKIN:Bang("!SetOption", "Measure".._temp.."Char", "String", cha)
		
    end 
	
end