["Box Barrage Effect"] = function(p10, p11, p12)
	local v44, v45 = unpack(p12);
	local v46 = v45 and 0;
	local v47 = Players:GetPlayerFromCharacter(p10);
	if not p10:FindFirstChild("Humanoid") then
		p10 = p10.Parent;
	end;
	local v48 = ClientAssets[p11].BarrageArms["Stand Left Arm"];
	local v49 = ClientAssets[p11].BarrageArms["Stand Right Arm"];
	local v50 = p10:FindFirstChild("Stand"):GetAttribute("SkinName");
	if v50 and ClientAssets[p11]:FindFirstChild(v50) then
		v48 = ClientAssets[p11][v50]["Stand Left Arm"];
		v49 = ClientAssets[p11][v50]["Stand Right Arm"];
	end;
	if v47 and v47.Settings.CameraShake.Value == true then
		local v51 = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(p13)
			PlayerCamera.CFrame = PlayerCamera.CFrame * p13;
		end);
		v51:Stop();
		v51:Start();
		v51:Shake(CameraShaker.Presets.Ride);
	end;
	local u14 = { ClientAssets[p11].BarrageArms.Colors:GetAttribute("Color1"), (ClientAssets[p11].BarrageArms.Colors:GetAttribute("Color2")) };
	local v52 = {};
	local u15 = -3.5 + v46;
	local u16 = -5 + v46;
	local u17 = -11 + v46;
	local function u18(p14)
		local l__TrailAttachment__53 = p14:FindFirstChild("TrailAttachment");
		if l__TrailAttachment__53 then
			local v54 = math.random(1, 2);
			for v55, v56 in pairs(l__TrailAttachment__53:GetChildren()) do
				if v56:IsA("Trail") then
					v56.Color = ColorSequence.new(u14[v54]);
					v56.Enabled = true;
				end;
			end;
			local l__TrailEffect__57 = p14:FindFirstChild("TrailEffect");
			if l__TrailEffect__57 then
				l__TrailEffect__57.Specs.Color = ColorSequence.new(u14[v54]);
				coroutine.wrap(function()
					l__TrailEffect__57.Specs.Enabled = true;
					task.wait(0.17);
					l__TrailEffect__57.Specs.Enabled = false;
				end)();
			end;
		end;
	end;
	v52[1] = function()

		local v58 = UtilityLibrary.CreateBezierCurve(v44.CFrame * CFrame.new(-2, 0, u15), v44.CFrame * CFrame.new(-5, 1.5, u16), v44.CFrame * CFrame.new(0, -1.5, u17), 17);
		local v59 = v48:Clone();
		v59.CFrame = v44.CFrame;
		v59.Parent = workspace.Effects;
		u18(v59);
		coroutine.wrap(function()
			task.wait(0.2);
			TweenService:Create(v59, TweenInfo.new(0.1), {
				Transparency = 1
			}):Play();
			for v60, v61 in pairs(v59:GetChildren()) do
				if v61:IsA("BasePart") or v61:IsA("MeshPart") then
					TweenService:Create(v61, TweenInfo.new(0.1), {
						Size = Vector3.new()
					}):Play();
				end;
			end;
		end)();
		coroutine.wrap(function()
			for v62 = 1, #v58 do
				if v58[v62 + 1] then
					v59.CFrame = CFrame.new(v58[v62].Position, v58[v62 + 1].Position) * CFrame.Angles(1.5707963267948966, 0, 0);
					RunService.Heartbeat:Wait();
				end;
			end;
			task.wait(0.365);
			v59:Destroy();
		end)();
	end;
	v52[2] = function()

		local v63 = UtilityLibrary.CreateBezierCurve(v44.CFrame * CFrame.new(-1, 0, u15), v44.CFrame * CFrame.new(-4, 5, u16), v44.CFrame * CFrame.new(0, 0, u17), 17);
		local v64 = v48:Clone();
		v64.CFrame = v44.CFrame;
		v64.Parent = workspace.Effects;
		u18(v64);
		coroutine.wrap(function()
			task.wait(0.2);
			TweenService:Create(v64, TweenInfo.new(0.1), {
				Transparency = 1
			}):Play();
			for v65, v66 in pairs(v64:GetChildren()) do
				if v66:IsA("BasePart") or v66:IsA("MeshPart") then
					TweenService:Create(v66, TweenInfo.new(0.1), {
						Size = Vector3.new()
					}):Play();
				end;
			end;
		end)();
		coroutine.wrap(function()
			for v67 = 1, #v63 do
				if v63[v67 + 1] then
					v64.CFrame = CFrame.new(v63[v67].Position, v63[v67 + 1].Position) * CFrame.Angles(1.5707963267948966, 0, 0);
					RunService.Heartbeat:Wait();
				end;
			end;
			task.wait(0.365);
			v64:Destroy();
		end)();
	end;
	v52[3] = function()

		local v68 = UtilityLibrary.CreateBezierCurve(v44.CFrame * CFrame.new(-2, 0, u15), v44.CFrame * CFrame.new(-5, -2, u16), v44.CFrame * CFrame.new(0, 0, u17), 17);
		local v69 = v48:Clone();
		v69.CFrame = v44.CFrame;
		v69.Parent = workspace.Effects;
		u18(v69);
		coroutine.wrap(function()
			task.wait(0.2);
			TweenService:Create(v69, TweenInfo.new(0.1), {
				Transparency = 1
			}):Play();
			for v70, v71 in pairs(v69:GetChildren()) do
				if v71:IsA("BasePart") or v71:IsA("MeshPart") then
					TweenService:Create(v71, TweenInfo.new(0.1), {
						Size = Vector3.new()
					}):Play();
				end;
			end;
		end)();
		coroutine.wrap(function()
			for v72 = 1, #v68 do
				if v68[v72 + 1] then
					v69.CFrame = CFrame.new(v68[v72].Position, v68[v72 + 1].Position) * CFrame.Angles(1.5707963267948966, 0, 0);
					RunService.Heartbeat:Wait();
				end;
			end;
			task.wait(0.365);
			v69:Destroy();
		end)();
	end;
	local v73 = {};
	v73[1] = function()

		local v74 = UtilityLibrary.CreateBezierCurve(v44.CFrame * CFrame.new(2, 0, u15), v44.CFrame * CFrame.new(5, 1.5, u16), v44.CFrame * CFrame.new(0, -1, u17), 17);
		local v75 = v49:Clone();
		v75.CFrame = v44.CFrame;
		v75.Parent = workspace.Effects;
		u18(v75);
		coroutine.wrap(function()
			task.wait(0.2);
			TweenService:Create(v75, TweenInfo.new(0.1), {
				Transparency = 1
			}):Play();
			for v76, v77 in pairs(v75:GetChildren()) do
				if v77:IsA("BasePart") or v77:IsA("MeshPart") then
					TweenService:Create(v77, TweenInfo.new(0.1), {
						Size = Vector3.new()
					}):Play();
				end;
			end;
		end)();
		coroutine.wrap(function()
			for v78 = 1, #v74 do
				if v74[v78 + 1] then
					v75.CFrame = CFrame.new(v74[v78].Position, v74[v78 + 1].Position) * CFrame.Angles(1.5707963267948966, 0, 0);
					RunService.Heartbeat:Wait();
				end;
			end;
			task.wait(0.365);
			v75:Destroy();
		end)();
	end;
	v73[2] = function()

		local v79 = UtilityLibrary.CreateBezierCurve(v44.CFrame * CFrame.new(1, 0, u15), v44.CFrame * CFrame.new(4, 5, u16), v44.CFrame * CFrame.new(0, 0, u17), 17);
		local v80 = v49:Clone();
		v80.CFrame = v44.CFrame;
		v80.Parent = workspace.Effects;
		u18(v80);
		coroutine.wrap(function()
			task.wait(0.2);
			TweenService:Create(v80, TweenInfo.new(0.1), {
				Transparency = 1
			}):Play();
			for v81, v82 in pairs(v80:GetChildren()) do
				if v82:IsA("BasePart") or v82:IsA("MeshPart") then
					TweenService:Create(v82, TweenInfo.new(0.1), {
						Size = Vector3.new()
					}):Play();
				end;
			end;
		end)();
		coroutine.wrap(function()
			for v83 = 1, #v79 do
				if v79[v83 + 1] then
					v80.CFrame = CFrame.new(v79[v83].Position, v79[v83 + 1].Position) * CFrame.Angles(1.5707963267948966, 0, 0);
					RunService.Heartbeat:Wait();
				end;
			end;
			task.wait(0.365);
			v80:Destroy();
		end)();
	end;
	v73[3] = function()
		local v84 = UtilityLibrary.CreateBezierCurve(v44.CFrame * CFrame.new(2, 0, u15), v44.CFrame * CFrame.new(5, -2, u16), v44.CFrame * CFrame.new(0, 0, u17), 17);
		local v85 = math.random(1, 2);
		local v86 = v49:Clone();
		v86.CFrame = v44.CFrame;
		v86.Parent = workspace.Effects;
		u18(v86);
		coroutine.wrap(function()
			task.wait(0.2);
			TweenService:Create(v86, TweenInfo.new(0.1), {
				Transparency = 1
			}):Play();
			for v87, v88 in pairs(v86:GetChildren()) do
				if v88:IsA("BasePart") or v88:IsA("MeshPart") then
					TweenService:Create(v88, TweenInfo.new(0.1), {
						Size = Vector3.new()
					}):Play();
				end;
			end;
		end)();
		coroutine.wrap(function()
			for v89 = 1, #v84 do
				if v84[v89 + 1] then
					v86.CFrame = CFrame.new(v84[v89].Position, v84[v89 + 1].Position) * CFrame.Angles(1.5707963267948966, 0, 0);
					RunService.Heartbeat:Wait();
				end;
			end;
			task.wait(0.365);
			v86:Destroy();
		end)();
	end;
	if v47 then
		local u19 = nil;
		local u20 = true;
		u19 = v47.CharacterRemoving:Connect(function()
			u19:Disconnect();
			if u20 then
				u20 = false;
			end;
		end);
	end;
	local v90 = ClientAssets.BarrageParticle:Clone();
	v90.CFrame = p10.HumanoidRootPart.CFrame * CFrame.new(0, 0, -4) * CFrame.Angles(-1.5707963267948966, 0, 0);
	v90.Anchored = true;
	local v91 = Instance.new("WeldConstraint");
	v91.Part0 = p10.HumanoidRootPart;
	v91.Part1 = v90;
	v91.Parent = v90;
	v90.Anchored = false;
	v90.Parent = workspace.Effects;
	for v92, v93 in pairs(v90:GetDescendants()) do
		if v93:IsA("ParticleEmitter") then
			v93.Enabled = true;
		end;
	end;
	while true do
		task.wait(0.06);
		local v94 = math.random(1, 3);
		local v95 = math.random(1, 3);
		if v94 == 0 then
			v94 = math.random(1, 3);
		end;
		if v95 == 0 then
			v95 = math.random(1, 3);
		end;
		local u21 = 0;
		coroutine.wrap(function()
			u21 = v94;
			v52[v94]();
		end)();
		local u22 = 0;
		coroutine.wrap(function()
			task.wait(0.0325);
			u22 = v95;
			v73[v95]();
		end)();
		if not true then
			break;
		end;
		if not CollectionService:HasTag(p10, "Barraging") then
			break;
		end;
		if p10.Humanoid.Health <= 0 then
			break;
		end;
		if p10 == nil then
			break;
		end;	
	end;
	for v96, v97 in pairs(v90:GetDescendants()) do
		if v97:IsA("ParticleEmitter") then
			v97.Enabled = false;
		end;
	end;
	Debris:AddItem(v90, 1.5);
end;