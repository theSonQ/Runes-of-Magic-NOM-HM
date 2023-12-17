if(_G and not _G.LustraLastBoss) then
	_G.LustraLastBoss = {};
end
		
local LustraLastBoss_EventFrame = CreateUIComponent("Frame","LustraLastBoss_EventFrame","UIParent")
LustraLastBoss_EventFrame:SetScripts("OnEvent", [=[ 
		if event == "SYSTEM_MESSAGE" then
			LustraLastBoss.onEvent(this, event, arg1, arg2, arg3, arg4);
		end
		]=] )
LustraLastBoss_EventFrame:RegisterEvent("SYSTEM_MESSAGE")

DEFAULT_CHAT_FRAME:AddMessage("LustraLastBoss!!!")

LustraLastBoss.onEvent = function(this, event, arg1, arg2, arg3, arg4)
	if(string.find(arg1, "wysuwa swoje szpony...")) then
		local text = "UWAGA! |H|h|cffff1111UCIEKAĆ|r|h"
		local text1= "UWAGA! UCIEKAĆ!"
		DEFAULT_CHAT_FRAME:AddMessage(text)
		SendChatMessage(text, "PARTY")
		SendChatMessage(text1, "SAY")
	elseif(string.find(arg1, "groźnie prycha...")) then
		local text = "UWAGA! |H|h|cff4169E1UCIEKAĆ|r|h"
		local text1 = "UWAGA! Frontal"
		DEFAULT_CHAT_FRAME:AddMessage(text)
		SendChatMessage(text, "PARTY")
		SendChatMessage(text1, "SAY")
	elseif(string.find(arg1, "opuszcza głowę...")) then
		local text = "UWAGA! |H|h|cff4169E1PRZERYWAĆ|r|h"
		local text1 = "UWAGA! PRZERYWAĆ"
		DEFAULT_CHAT_FRAME:AddMessage(text)
		SendChatMessage(text, "PARTY")
		SendChatMessage(text1, "SAY")
	elseif(string.find(arg1, "przymierza się do skoku...")) then
		local text = "UWAGA! |H|h|cffff1111Tank dostanie in the cymbał :f |r|h"
		local text1 = "UWAGA! Tank dostanie in the cymbał "
		DEFAULT_CHAT_FRAME:AddMessage(text)
		SendChatMessage(text, "PARTY")
		SendChatMessage(text1, "SAY")
		-- local text = "UWAGA! |H|h|cffff1111UCIEKAC|r|h"
		--bonus 4 boss aoe:
	elseif(string.find(arg1,"Twoja jedność będzie twoim końcem!")) then
		local text = "UWAGA! |H|h|cffff1111AOE :f |r|h"
		local text1 = "UWAGA! AOE"
		DEFAULT_CHAT_FRAME:AddMessage(text)
		SendChatMessage(text, "PARTY")
		SendChatMessage(text1, "SAY")
	end
end;
