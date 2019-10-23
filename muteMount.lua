mountIds = {[458]=1,[459]=1,[468]=1,[470]=1,[471]=1,[472]=1,[578]=1,[579]=1,[580]=1,[581]=1,[3363]=1,[5784]=1,[6648]=1,[6653]=1,[6654]=1,[6777]=1,[6896]=1,[6897]=1,[6898]=1,[6899]=1,[8394]=1,[8395]=1,[8396]=1,[8980]=1,[10787]=1,[10788]=1,[10789]=1,[10790]=1,[10792]=1,[10793]=1,[10795]=1,[10796]=1,[10798]=1,[10799]=1,[10800]=1,[10801]=1,[10802]=1,[10803]=1,[10804]=1,[10873]=1,[10969]=1,[13819]=1,[15779]=1,[15780]=1,[15781]=1,[16055]=1,[16056]=1,[16058]=1,[16059]=1,[16060]=1,[16080]=1,[16081]=1,[16082]=1,[16083]=1,[16084]=1,[17229]=1,[17450]=1,[17453]=1,[17454]=1,[17455]=1,[17456]=1,[17458]=1,[17459]=1,[17460]=1,[17461]=1,[17462]=1,[17463]=1,[17464]=1,[17465]=1,[17481]=1,[18363]=1,[18989]=1,[18990]=1,[18991]=1,[18992]=1,[22717]=1,[22718]=1,[22719]=1,[22720]=1,[22721]=1,[22722]=1,[22723]=1,[22724]=1,[23161]=1,[23214]=1,[23219]=1,[23220]=1,[23221]=1,[23222]=1,[23223]=1,[23225]=1,[23227]=1,[23228]=1,[23229]=1,[23238]=1,[23239]=1,[23240]=1,[23241]=1,[23242]=1,[23243]=1,[23246]=1,[23247]=1,[23248]=1,[23249]=1,[23250]=1,[23251]=1,[23252]=1,[23338]=1,[23509]=1,[23510]=1,[24242]=1,[24252]=1,[24576]=1,[25675]=1,[25858]=1,[25859]=1,[25863]=1,[25953]=1,[26054]=1,[26055]=1,[26056]=1,[26332]=1,[26655]=1,[29059]=1,[30174]=1,[31700]=1}

muteMount = CreateFrame("Frame");
muteMount:SetScript("OnEvent", function()
	local sfx = 1;
	for i=1,32 do
		_,_,_,_,_,_,_,_,_,id = UnitAura("player", i, "HELPFUL|PLAYER")
		if mountIds[id] then
			sfx = 0;
		end
	end
	SetCVar("Sound_EnableSFX", sfx)
end)

muteMount:RegisterUnitEvent("UNIT_AURA", "player")