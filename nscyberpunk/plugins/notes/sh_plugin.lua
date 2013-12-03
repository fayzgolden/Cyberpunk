PLUGIN.name = "Notes"
PLUGIN.author = "Black Tea"
PLUGIN.desc = "Allows you write some letters with papers."
nut.util.Include("sh_lang.lua")

function String_Wrap(str,sizeX,font,data) -- Credit Goes to Rocket Mania
	local Result = data or {}
	surface.SetFont(font)
	-- 길이 체크
	local EntireWidth, Height = surface.GetTextSize(str)
	local EntireLength = string.len(str)


	for LengthCheck1 = 1, EntireLength do
		local ScanStr = string.Left(str,LengthCheck1)
		local ScanWidth,_ = surface.GetTextSize(ScanStr)
		if ScanWidth >= sizeX then
			local PreviousWord = string.Left(str,LengthCheck1 -1)
			local LastWord = string.Right(str,EntireLength - LengthCheck1+1)
			table.insert(Result,PreviousWord)
			return String_Wrap(LastWord,sizeX,font,Result)
		end
		if string.find(ScanStr,"!n") then
			local PreviousWord = string.Left(str,LengthCheck1)
			PreviousWord = string.gsub(PreviousWord,"!n","")
			local LastWord = string.Right(str,EntireLength - LengthCheck1)
			table.insert(Result,PreviousWord)
			return String_Wrap(LastWord,sizeX,font,Result)
		end
	end

	table.insert(Result,str)
	return Result

end

if CLIENT then

end -- VGUI


if SERVER then
	util.AddNetworkString( "nut_SendPaper" );
else

end