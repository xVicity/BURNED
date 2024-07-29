        local l_char_19 = args.char;
        local _ = args.hit;
        local l_id_14 = args.id;
        local v4557 = nil;
        local l_PrimaryPart_28 = l_char_19.PrimaryPart;
        local v4559 = {};
        local _ = script;
        local v4561, v4562 = v778(game.ReplicatedStorage.Resources.StoicBomb, v4559);
        if not args.humanoid and LocalPlayer.Character == l_char_19 then
            local l_Animation_9 = Instance.new("Animation");
            l_Animation_9.AnimationId = "rbxassetid://18169288949";
            l_char_19.Humanoid:LoadAnimation(l_Animation_9):Play();
            return ;
        else
            for _, v4565 in pairs(l_char_19.Humanoid:GetPlayingAnimationTracks()) do
                if v4565.Animation.AnimationId == "rbxassetid://" .. l_id_14 then
                    v4557 = v4565;
                    break;
                end;
            end;
            if not v4557 or not v4557.IsPlaying then
                return ;
            else
                local _ = function()
                    local _, v4567, _ = l_char_19.HumanoidRootPart.CFrame:ToOrientation();
                    return CFrame.new(l_char_19.Torso.Position) * CFrame.Angles(0, v4567, 0);
                end;
                local v4570 = nil;
                local v4571 = {};
                do
                    local l_v4570_0 = v4570;
                    local v4948 = {
                        [1] = function()
                            v4562.StoicBombSpeedLines = v4562._maid:give(v4561.stoicbombspeedlines:Clone());
                            local l_Weld_24 = Instance.new("Weld");
                            l_Weld_24.Part0 = v4562.StoicBombSpeedLines;
                            l_Weld_24.Part1 = l_char_19.Torso;
                            l_Weld_24.Parent = v4562.StoicBombSpeedLines;
                            v4562.Ranges = {};
                            for _, v4575 in pairs(v4562.StoicBombSpeedLines:GetDescendants()) do
                                if v4575:IsA("PointLight") then
                                    v4562.Ranges[v4575] = v4575.Range;
                                    v4575.Range = 0;
                                end;
                            end;
                            v4562.StoicBombSpeedLines.Parent = workspace.Thrown;
                        end, 
                        [42] = function()
                            v4562.StoicBombSpeedLines.speedylines.Enabled = true;
                            v4562.StoicBombSpeedLines.speedylinesfire.Enabled = true;
                        end, 
                        [48] = function()
                            v4562.StoicBombSpeedLines.Attachment["STAR!!!"].Enabled = true;
                        end, 
                        [83] = function()
                            for _, v4577 in pairs(v4562.StoicBombSpeedLines:GetDescendants()) do
                                if v4577:IsA("ParticleEmitter") and v4577.Name ~= "aaaaaaa" then
                                    v4577.Enabled = false;
                                end;
                            end;
                        end, 
                        [86] = function()
                            for v4578, v4579 in pairs(v4562.Ranges) do
                                TweenService:Create(v4578, TweenInfo.new(0.3, Enum.EasingStyle.Sine), {
                                    Range = v4579
                                }):Play();
                            end;
                        end, 
                        [66] = function()
                            v4562.stoiccarrive = v4562._maid:give(v4561.stoicarrive:Clone());
                            local l_Weld_25 = Instance.new("Weld");
                            l_Weld_25.Part0 = v4562.stoiccarrive;
                            l_Weld_25.Part1 = l_char_19.Torso;
                            l_Weld_25.Parent = v4562.stoiccarrive;
                            l_Weld_25.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -1.5707963267948966);
                            v4562.stoiccarrive.Decal.Transparency = 0.298;
                            v4562.stoiccarrive.Mesh.Scale = Vector3.new(0.8510000109672546, 0.2980000078678131, 0.2980000078678131, 0);
                            v4562.stoiccarrive.Parent = workspace.Thrown;
                            TweenService:Create(v4562.stoiccarrive.Mesh, TweenInfo.new(0.4, Enum.EasingStyle.Sine), {
                                Scale = Vector3.new(0.5189999938011169, 0.9629999995231628, 0.9629999995231628, 0)
                            }):Play();
                            TweenService:Create(v4562.stoiccarrive.Decal, TweenInfo.new(0.4, Enum.EasingStyle.Sine), {
                                Transparency = 1
                            }):Play();
                        end, 
                        [84] = function()
                            v4562.stoiccarrive2 = v4562._maid:give(v4561.stoicarrive:Clone());
                            local l_Weld_26 = Instance.new("Weld");
                            l_Weld_26.Part0 = v4562.stoiccarrive2;
                            l_Weld_26.Part1 = l_char_19.Torso;
                            l_Weld_26.Parent = v4562.stoiccarrive2;
                            l_Weld_26.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -1.5707963267948966);
                            v4562.stoiccarrive2.Decal.Transparency = 0.086;
                            v4562.stoiccarrive2.Mesh.Scale = Vector3.new(1.9140000343322754, 0.12800000607967377, 0.12800000607967377, 0);
                            v4562.stoiccarrive2.Parent = workspace.Thrown;
                            TweenService:Create(v4562.stoiccarrive2.Mesh, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
                                Scale = Vector3.new(1.034000039100647, 1.4490000009536743, 1.4490000009536743, 0)
                            }):Play();
                            TweenService:Create(v4562.stoiccarrive2.Weld, TweenInfo.new(0.5, Enum.EasingStyle.Sine), {
                                C0 = v4562.stoiccarrive2.Weld.C0 * CFrame.Angles(0, 0.7853981633974483, 0)
                            }):Play();
                            TweenService:Create(v4562.stoiccarrive2.Decal, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {
                                Transparency = 1
                            }):Play();
                            v4562.OHNO = v4562._maid:give(v4561.OHNO:Clone());
                            v4562.OHNO:ScaleTo(0.05);
                            local l_Weld_27 = Instance.new("Weld");
                            l_Weld_27.Part0 = v4562.OHNO.PrimaryPart;
                            l_Weld_27.Part1 = l_char_19.Torso;
                            l_Weld_27.Parent = v4562.OHNO;
                            l_Weld_27.C0 = CFrame.new(0, 3, 0);
                            v4562.OHNO.Parent = workspace.Thrown;
                            v4562.OHNOScale = v4562._maid:give(Instance.new("NumberValue"));
                            v4562._maid:give(v4562.OHNOScale.Changed:Connect(function()
                                v4562.OHNO:ScaleTo(v4562.OHNOScale.Value);
                            end));
                            v4562.OHNOScale.Value = v4562.OHNO:GetScale();
                        end, 
                        [78] = function()
                            v4562.CC = v4562._maid:give(Instance.new("ColorCorrectionEffect"));
                            local _, v4584 = workspace:FindFirstChildOfClass("Camera"):WorldToScreenPoint(l_PrimaryPart_28.Position);
                            if v4584 or LocalPlayer.Character.PrimaryPart == l_PrimaryPart_28 then
                                v4562.CC.Parent = game.Lighting;
                            end;
                            TweenService:Create(v4562.CC, TweenInfo.new(0.6, Enum.EasingStyle.Quad), {
                                Brightness = -0.998, 
                                Contrast = 3.991, 
                                Saturation = -0.299
                            }):Play();
                            game:GetService("Debris"):AddItem(v4562.CC, 4);
                        end, 
                        [154] = function()
                            TweenService:Create(v4562.CC, TweenInfo.new(0.85, Enum.EasingStyle.Quad), {
                                Brightness = 1, 
                                Contrast = 0.515, 
                                Saturation = -0.039
                            }):Play();
                        end, 
                        [124] = function()
                            v4562.Heat = v4562._maid:give(v4561.HEAT:Clone());
                            v4562.Heat:SetPrimaryPartCFrame(v4562.StoicBoomEntrance.CFrame * CFrame.new(0, 0.5, 0));
                            v4562.Heat.Parent = workspace.Thrown;
                            v4562.Heat:ScaleTo(1);
                            v4562.HeatScale = v4562._maid:give(Instance.new("NumberValue"));
                            v4562._maid:giveTask(v4562.HeatScale.Changed:Connect(function()
                                v4562.Heat:ScaleTo(v4562.HeatScale.Value);
                            end));
                            TweenService:Create(v4562.OHNOScale, TweenInfo.new(0.5, Enum.EasingStyle.Sine), {
                                Value = 0.15
                            }):Play();
                            v713({
                                FX = v4562.Heat, 
                                Scale = 0.6
                            });
                            TweenService:Create(v4562.HeatScale, TweenInfo.new(1, Enum.EasingStyle.Sine), {
                                Value = 4
                            }):Play();
                        end, 
                        [196] = function()
                            v745({
                                FX = v4562.OHNO, 
                                On = false
                            });
                            TweenService:Create(v4562.CC, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {
                                Brightness = 0, 
                                Contrast = 0, 
                                Saturation = 0
                            }):Play();
                            v4562.CC.Brightness = 0;
                            v4562.CC.Contrast = 0;
                            v4562.CC.Saturation = 0;
                            task.wait(0.1);
                            v745({
                                FX = v4562.OHNO, 
                                On = false
                            });
                            v4562.Pre = v4562._maid:give(v4561.pre:Clone());
                            v4562.Pre:SetPrimaryPartCFrame(v4562.StoicBoomEntrance.CFrame * CFrame.new(0, 2, 0));
                            v4562.Pre:ScaleTo(2);
                            v713({
                                FX = v4562.Pre, 
                                Scale = 1.2
                            });
                            v707({
                                FX = v4562.Pre, 
                                Count = 5
                            });
                            v4562.Pre.Parent = workspace.Thrown;
                            v738(v4562.Pre);
                        end, 
                        [205] = function()
                            v4562.Stage1 = v4562._maid:give(v4561.Stage1:Clone());
                            v4562.Stage1:SetPrimaryPartCFrame(l_PrimaryPart_28.CFrame * CFrame.new(0, -l_PrimaryPart_28.Size.Y * 1.5, 0));
                            v4562.Stage1.Parent = workspace.Thrown;
                            v4562.Stage1Size = Instance.new("NumberValue");
                            v4562.Stage1Size.Changed:Connect(function()
                                v4562.Stage1:ScaleTo(v4562.Stage1Size.Value);
                            end);
                            v4562.Stage1Size.Value = 0.3;
                            v4562.Stage1Size.Parent = v4562.Stage1;
                            spawn(function()
                                for _ = 1, 100 do
                                    if v4562.Stage1.Parent ~= nil then
                                        v4562.Stage1.Wind:SetPrimaryPartCFrame(v4562.Stage1.Wind.PrimaryPart.CFrame * CFrame.Angles(0, 0.6108652381980153, 0));
                                        task.wait(0.01);
                                    else
                                        break;
                                    end;
                                end;
                            end);
                            v713({
                                FX = v4562.Stage1, 
                                Scale = 0.5
                            });
                            v679(v4562.Stage1Size, {
                                Time = 0.1, 
                                EasingStyle = "Bounce", 
                                Goal = {
                                    Value = 1.5
                                }
                            });
                            task.wait(0.05);
                            game:GetService("TweenService"):Create(v4562.Stage1Size, TweenInfo.new(2.55, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out, 3, false), {
                                Value = 16
                            }):Play();
                            task.wait(0.15);
                            for _, v4587 in pairs(v4562.Stage1:GetDescendants()) do
                                if v4587:IsA("ParticleEmitter") then
                                    v4587.Enabled = false;
                                end;
                            end;
                            task.wait(0.1);
                            for _, v4589 in pairs(v4562.Stage1:GetDescendants()) do
                                if v4589:IsA("Decal") or v4589:IsA("BasePart") then
                                    game:GetService("TweenService"):Create(v4589, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                                        Transparency = 1
                                    }):Play();
                                end;
                            end;
                        end, 
                        [211] = function()
                            if not (LocalPlayer.Character ~= args.char) or (LocalPlayer.Character.PrimaryPart.Position - l_PrimaryPart_28.Position).magnitude <= 200 then
                                v5({
                                    Effect = "Camshake", 
                                    Intensity = 20, 
                                    Last = 1
                                });
                            end;
                            local v4590, v4591 = v464({
                                orig = l_PrimaryPart_28.Position, 
                                dir = Vector3.new(0, -50, 0, 0)
                            });
                            local v4592 = {
                                Position = v4591 + Vector3.new(0, 0.10000000149011612, 0, 0), 
                                Hit = v4590
                            };
                            task.spawn(function()
                                local l_Hit_0 = v4592.Hit;
                                if l_Hit_0 then
                                    local v4594 = LegacyReplication.Wind:Clone();
                                    v4594.Parent = workspace.Thrown;
                                    v4594.Position = v4592.Position - Vector3.new(0, 25, 0, 0);
                                    v4594.UpSmoke.Color = ColorSequence.new(l_Hit_0.Color);
                                    v4594.UpSmoke:Emit(25);
                                    game:service("Debris"):AddItem(v4594, 6);
                                end;
                                local v4595 = {};
                                local _ = {};
                                local v4597 = {};
                                local v4598 = 1;
                                local v4599, v4600 = workspace:FindFirstChildOfClass("Camera"):WorldToScreenPoint(l_PrimaryPart_28.Position);
                                local v4601 = v4600 and 85 or 30;
                                for v4602 = v4598, v4601 do
                                    local v4603 = v4602 / 8;
                                    local v4604 = 5;
                                    if l_TouchEnabled_1 then
                                        v4604 = 8;
                                        v4603 = 0;
                                    end;
                                    local l_CFrame_11 = l_PrimaryPart_28.CFrame;
                                    local l_new_26 = CFrame.new;
                                    local v4607 = -3 * v4602 - v4602 * 2;
                                    local v4608 = 3 * v4602 + v4602 * 2;
                                    local l_v68_73 = v68;
                                    if not v4608 and v4607 then
                                        v4608 = v4607;
                                        v4607 = 1;
                                    end;
                                    if not v4608 and not v4607 then
                                        v4607 = 0;
                                        v4608 = 1;
                                    end;
                                    local v4610;
                                    v4610, l_CFrame_11 = workspace:FindFirstChildOfClass("Camera"):WorldToScreenPoint((l_CFrame_11 * l_new_26(l_v68_73:NextNumber(v4607, v4608), 0, v75(-1 * v4602, 1 * v4602)) + l_PrimaryPart_28.CFrame.lookVector * (v4602 * 5)).p);
                                    if not l_CFrame_11 then
                                        v4604 = 3;
                                    end;
                                    if l_Hit_0 then
                                        (function(v4611)
                                            local v4612 = v209() or Instance.new("Part");
                                            v4612.Name = "DebrisggbbTf";
                                            v4612.Anchored = false;
                                            v4612.CanCollide = false;
                                            v4612.Transparency = 0;
                                            v4612.Massless = false;
                                            v4595[v4612] = true;
                                            local v4613 = 3;
                                            local v4614 = -2;
                                            local v4615 = 3;
                                            local l_v68_74 = v68;
                                            if not v4615 and v4614 then
                                                v4615 = v4614;
                                                v4614 = 1;
                                            end;
                                            if not v4615 and not v4614 then
                                                v4614 = 0;
                                                v4615 = 1;
                                            end;
                                            local v4617 = v4613 + l_v68_74:NextNumber(v4614, v4615);
                                            local v4618 = 3;
                                            v4615 = -2;
                                            l_v68_74 = 3;
                                            local l_v68_75 = v68;
                                            if not l_v68_74 and v4615 then
                                                l_v68_74 = v4615;
                                                v4615 = 1;
                                            end;
                                            if not l_v68_74 and not v4615 then
                                                v4615 = 0;
                                                l_v68_74 = 1;
                                            end;
                                            v4613 = v4618 + l_v68_75:NextNumber(v4615, l_v68_74);
                                            v4614 = 3;
                                            l_v68_74 = -4;
                                            l_v68_75 = 5;
                                            local l_v68_76 = v68;
                                            if not l_v68_75 and l_v68_74 then
                                                l_v68_75 = l_v68_74;
                                                l_v68_74 = 1;
                                            end;
                                            if not l_v68_75 and not l_v68_74 then
                                                l_v68_74 = 0;
                                                l_v68_75 = 1;
                                            end;
                                            v4612.Size = Vector3.new(v4617, v4613, v4614 + l_v68_76:NextNumber(l_v68_74, l_v68_75)) * 2.5;
                                            if v4611 then
                                                local l_Size_4 = v4612.Size;
                                                v4617 = 1;
                                                v4613 = 2;
                                                v4618 = v68;
                                                if not v4613 and v4617 then
                                                    v4613 = v4617;
                                                    v4617 = 1;
                                                end;
                                                if not v4613 and not v4617 then
                                                    v4617 = 0;
                                                    v4613 = 1;
                                                end;
                                                v4612.Size = l_Size_4 * v4618:NextNumber(v4617, v4613);
                                            end;
                                            local l_new_27 = CFrame.new;
                                            v4613 = v4591;
                                            v4615 = -70;
                                            l_v68_74 = 70;
                                            l_v68_75 = v68;
                                            if not l_v68_74 and v4615 then
                                                l_v68_74 = v4615;
                                                v4615 = 1;
                                            end;
                                            if not l_v68_74 and not v4615 then
                                                v4615 = 0;
                                                l_v68_74 = 1;
                                            end;
                                            l_new_27 = l_new_27(v4613 + Vector3.new(l_v68_75:NextNumber(v4615, l_v68_74), 0, v75(-70, 70)));
                                            v4617 = CFrame.Angles;
                                            v4614 = -360;
                                            v4615 = 360;
                                            l_v68_74 = v68;
                                            if not v4615 and v4614 then
                                                v4615 = v4614;
                                                v4614 = 1;
                                            end;
                                            if not v4615 and not v4614 then
                                                v4614 = 0;
                                                v4615 = 1;
                                            end;
                                            v4613 = math.rad((l_v68_74:NextNumber(v4614, v4615)));
                                            v4615 = -360;
                                            l_v68_74 = 360;
                                            l_v68_75 = v68;
                                            if not l_v68_74 and v4615 then
                                                l_v68_74 = v4615;
                                                v4615 = 1;
                                            end;
                                            if not l_v68_74 and not v4615 then
                                                v4615 = 0;
                                                l_v68_74 = 1;
                                            end;
                                            v4618 = math.rad((l_v68_75:NextNumber(v4615, l_v68_74)));
                                            l_v68_74 = -360;
                                            l_v68_75 = 360;
                                            l_v68_76 = v68;
                                            if not l_v68_75 and l_v68_74 then
                                                l_v68_75 = l_v68_74;
                                                l_v68_74 = 1;
                                            end;
                                            if not l_v68_75 and not l_v68_74 then
                                                l_v68_74 = 0;
                                                l_v68_75 = 1;
                                            end;
                                            v4612.CFrame = l_new_27 * v4617(v4613, v4618, (math.rad((l_v68_76:NextNumber(l_v68_74, l_v68_75)))));
                                            v4612.Material = l_Hit_0.Material;
                                            v4612.Color = l_Hit_0.Color;
                                            v4612.Parent = workspace.Thrown;
                                            if (v4612.Position - l_PrimaryPart_28.Position).magnitude <= 50 then
                                                local l_Size_5 = v4612.Size;
                                                v4617 = 0.4;
                                                v4613 = 0.7;
                                                v4618 = v68;
                                                if not v4613 and v4617 then
                                                    v4613 = v4617;
                                                    v4617 = 1;
                                                end;
                                                if not v4613 and not v4617 then
                                                    v4617 = 0;
                                                    v4613 = 1;
                                                end;
                                                v4612.Size = l_Size_5 * v4618:NextNumber(v4617, v4613);
                                            end;
                                            table.insert(v4597, v4612);
                                            local l_BodyVelocity_1 = Instance.new("BodyVelocity");
                                            l_BodyVelocity_1.MaxForce = Vector3.new(1, 1, 1, 0) * 36000000;
                                            v4613 = CFrame.new;
                                            v4614 = v4612.Position;
                                            l_v68_74 = 0;
                                            l_v68_76 = 1;
                                            local v4625 = 50;
                                            local l_v68_77 = v68;
                                            if not v4625 and l_v68_76 then
                                                v4625 = l_v68_76;
                                                l_v68_76 = 1;
                                            end;
                                            if not v4625 and not l_v68_76 then
                                                l_v68_76 = 0;
                                                v4625 = 1;
                                            end;
                                            v4617 = v4613(v4614 + Vector3.new(l_v68_74, l_v68_77:NextNumber(l_v68_76, v4625), 0), v4591).lookVector;
                                            v4615 = 50;
                                            l_v68_74 = 100;
                                            l_v68_75 = v68;
                                            if not l_v68_74 and v4615 then
                                                l_v68_74 = v4615;
                                                v4615 = 1;
                                            end;
                                            if not l_v68_74 and not v4615 then
                                                v4615 = 0;
                                                l_v68_74 = 1;
                                            end;
                                            l_BodyVelocity_1.Velocity = v4617 * -(l_v68_75:NextNumber(v4615, l_v68_74) * 3);
                                            l_BodyVelocity_1.Parent = v4612;
                                            game:service("Debris"):AddItem(l_BodyVelocity_1, 0.15);
                                            l_new_27 = Instance.new("Attachment");
                                            l_new_27.Parent = v4612;
                                            v4617 = Instance.new("Attachment");
                                            v4617.Position = Vector3.new(0, -0.10000000149011612, 0, 0);
                                            v4617.Parent = v4612;
                                            v4613 = LegacyReplication.TrailTwo:Clone();
                                            v4613.Parent = v4612;
                                            v4613.Attachment0 = l_new_27;
                                            v4613.Attachment1 = v4617;
                                            shared.addshake(v75(1, 2));
                                            return v4612;
                                        end)();
                                    end;
                                    if v4602 % 5 == 0 then
                                        task.wait();
                                    end;
                                end;
                                task.delay(8, function()
                                    for _, v4628 in pairs(v4597) do
                                        v4628:Destroy();
                                    end;
                                end);
                                for v4629 = 1, 5 do
                                    local l_v5_1 = v5;
                                    local v4631 = {
                                        Effect = "Ground Crater", 
                                        Seed = args.Seed + v4629, 
                                        start = v4591 + Vector3.new(0, 0.10000000149011612, 0, 0), 
                                        ["end"] = Vector3.new(0, -14, 0, 0), 
                                        amount = 6 + v4629 / 2, 
                                        nosound = true, 
                                        nosmoke = v4629 > 2
                                    };
                                    v4599 = false;
                                    if v4629 <= 2 then
                                        v4599 = {
                                            minus = 0
                                        };
                                    end;
                                    v4631.stronger = v4599;
                                    v4631.sizemult = 1.45 * v4629;
                                    v4631.size = 3.5 * v4629;
                                    l_v5_1(v4631);
                                end;
                            end);
                            v4562.Impact = v4562._maid:give(v4561.Impact:Clone());
                            l_v4570_0 = v4562.Impact;
                            v4562.Impact:SetPrimaryPartCFrame(v4562.StoicBoomEntrance.CFrame * CFrame.new(0, 2, 0));
                            v4562.Impact.Parent = workspace.Thrown;
                            v4562.Impact:ScaleTo(6.300000000000001);
                            v713({
                                FX = v4562.Impact, 
                                Scale = 0.3
                            });
                            v738(v4562.Impact);
                            v707({
                                FX = v4562.Impact, 
                                Count = 5.5
                            });
                            TweenService:Create(v4562.OHNOScale, TweenInfo.new(0.2, Enum.EasingStyle.Sine), {
                                Value = 0.01
                            }):Play();
                            TweenService:Create(v4562.HeatScale, TweenInfo.new(0.2, Enum.EasingStyle.Sine), {
                                Value = 9
                            }):Play();
                            v745({
                                FX = v4562.Heat, 
                                On = false
                            });
                            v4562.Heat2 = v4561.HEAT:Clone();
                            v4562.Heat2:SetPrimaryPartCFrame(v4562.StoicBoomEntrance.CFrame * CFrame.new(0, 0.5, 0));
                            v4562.Heat2:ScaleTo(16.8);
                            v745({
                                FX = v4562.Heat2, 
                                On = false
                            });
                            v713({
                                FX = v4562.Heat2, 
                                Scale = 0.36
                            });
                            v4562.Heat2.Parent = workspace.Thrown;
                            v738(v4562.Heat2);
                            v4562.Lines = v4562._maid:give(v4561.Lines:Clone());
                            v4562.Lines:SetPrimaryPartCFrame(l_PrimaryPart_28.CFrame * CFrame.new(0, -l_PrimaryPart_28.Size.Y * 3, 0));
                            v4562.Lines.Parent = workspace.Thrown;
                            v4562.Lines:ScaleTo(6.300000000000001);
                            v707({
                                FX = v4562.Lines, 
                                Count = 5
                            });
                            v713({
                                FX = v4562.Lines, 
                                Scale = 0.5
                            });
                            for _ = 1, 3 do
                                local v4633 = v4561.SIRR2:Clone();
                                v4633:SetPrimaryPartCFrame((v4562.StoicBoomEntrance.CFrame * CFrame.new(0, 5, 0)) * CFrame.Angles(3.141592653589793, 0, 0));
                                v4633:ScaleTo(5.670000000000001);
                                local v4634 = {
                                    Model = v4633, 
                                    Info = TweenInfo.new(0.1, Enum.EasingStyle.Sine), 
                                    T = 0, 
                                    EndT = 0
                                };
                                local l_v4634_0 = v4634 --[[ copy: 7 -> 20 ]];
                                task.spawn(function()
                                    local l_Model_101 = l_v4634_0.Model;
                                    local v4637 = l_v4634_0.Info or TweenInfo.new(1, Enum.EasingStyle.Sine);
                                    local l_Start_104 = l_Model_101:FindFirstChild("Start");
                                    local l_End_102 = l_Model_101:FindFirstChild("End");
                                    local l_Stay_100 = l_v4634_0.Stay;
                                    local l_Anchor_101 = l_v4634_0.Anchor;
                                    local v4642 = l_v4634_0.EndT or 1;
                                    local l_Del_100 = l_v4634_0.Del;
                                    local l_Skip_100 = l_v4634_0.Skip;
                                    if l_Start_104 and l_End_102 then
                                        l_Model_101.PrimaryPart = l_Start_104;
                                        if not l_Skip_100 then
                                            for _, v4646 in pairs(l_Model_101:GetChildren()) do
                                                if v4646:IsA("BasePart") then
                                                    v4646.CanCollide = false;
                                                    v4646.Anchored = true;
                                                end;
                                            end;
                                        end;
                                        if l_Anchor_101 then
                                            l_Model_101:SetPrimaryPartCFrame(l_Anchor_101);
                                        end;
                                        if l_v4634_0.T then
                                            l_Start_104.Transparency = l_v4634_0.T;
                                        end;
                                        l_End_102.Transparency = 1;
                                        l_Model_101.Parent = workspace.Thrown;
                                        local l_Decal_101 = l_Start_104:FindFirstChildOfClass("Decal");
                                        local l_SpecialMesh_202 = l_Start_104:FindFirstChildOfClass("SpecialMesh");
                                        local l_SpecialMesh_203 = l_End_102:FindFirstChildOfClass("SpecialMesh");
                                        local v4650 = nil;
                                        do
                                            local l_v4650_0 = v4650;
                                            if l_Del_100 then
                                                game:GetService("TweenService"):Create(l_Start_104, v4637, {
                                                    Size = l_End_102.Size, 
                                                    CFrame = l_End_102.CFrame
                                                }):Play();
                                                task.delay(l_Del_100, function()
                                                    l_v4650_0 = game:GetService("TweenService"):Create(l_Start_104, v4637, {
                                                        Transparency = v4642
                                                    });
                                                    l_v4650_0:Play();
                                                    if l_Decal_101 then
                                                        for _, v4653 in pairs(l_Start_104:GetChildren()) do
                                                            if v4653:IsA("Decal") then
                                                                game:GetService("TweenService"):Create(v4653, v4637, {
                                                                    Transparency = v4642
                                                                }):Play();
                                                            end;
                                                        end;
                                                    end;
                                                    if l_SpecialMesh_202 then
                                                        l_v4650_0 = game:GetService("TweenService"):Create(l_SpecialMesh_202, v4637, {
                                                            Scale = l_SpecialMesh_203.Scale
                                                        }):Play();
                                                    end;
                                                end);
                                            else
                                                if l_SpecialMesh_202 then
                                                    game:GetService("TweenService"):Create(l_SpecialMesh_202, v4637, {
                                                        Scale = l_SpecialMesh_203.Scale
                                                    }):Play();
                                                end;
                                                if l_Decal_101 then
                                                    for _, v4655 in pairs(l_Start_104:GetChildren()) do
                                                        if v4655:IsA("Decal") then
                                                            game:GetService("TweenService"):Create(v4655, v4637, {
                                                                Transparency = v4642
                                                            }):Play();
                                                        end;
                                                    end;
                                                    l_v4650_0 = game:GetService("TweenService"):Create(l_Start_104, v4637, {
                                                        Size = l_End_102.Size, 
                                                        CFrame = l_End_102.CFrame
                                                    });
                                                    l_v4650_0:Play();
                                                else
                                                    l_v4650_0 = game:GetService("TweenService"):Create(l_Start_104, v4637, {
                                                        Size = l_End_102.Size, 
                                                        Transparency = v4642, 
                                                        CFrame = l_End_102.CFrame
                                                    });
                                                    l_v4650_0:Play();
                                                end;
                                            end;
                                            if not l_Stay_100 then
                                                if l_Del_100 then
                                                    task.wait(l_Del_100 + 0.1);
                                                end;
                                                l_v4650_0.Completed:Once(function()
                                                    l_Model_101:Destroy();
                                                end);
                                            end;
                                        end;
                                    end;
                                end);
                                v4634 = v4561.WindTime:Clone();
                                local v4656 = 2;
                                local v4657 = 4;
                                local l_v68_78 = v68;
                                if not v4657 and v4656 then
                                    v4657 = v4656;
                                    v4656 = 1;
                                end;
                                if not v4657 and not v4656 then
                                    v4656 = 0;
                                    v4657 = 1;
                                end;
                                v4634:ScaleTo(l_v68_78:NextNumber(v4656, v4657) * 2.1);
                                local v4659 = {
                                    Model = v4634, 
                                    T = 0.9
                                };
                                local l_CFrame_12 = l_PrimaryPart_28.CFrame;
                                local l_Angles_13 = CFrame.Angles;
                                l_v68_78 = -15;
                                local v4662 = 15;
                                local l_v68_79 = v68;
                                if not v4662 and l_v68_78 then
                                    v4662 = l_v68_78;
                                    l_v68_78 = 1;
                                end;
                                if not v4662 and not l_v68_78 then
                                    l_v68_78 = 0;
                                    v4662 = 1;
                                end;
                                v4656 = math.rad((l_v68_79:NextNumber(l_v68_78, v4662)));
                                v4662 = 0;
                                l_v68_79 = 360;
                                local l_v68_80 = v68;
                                if not l_v68_79 and v4662 then
                                    l_v68_79 = v4662;
                                    v4662 = 1;
                                end;
                                if not l_v68_79 and not v4662 then
                                    v4662 = 0;
                                    l_v68_79 = 1;
                                end;
                                v4657 = math.rad((l_v68_80:NextNumber(v4662, l_v68_79)));
                                l_v68_79 = -15;
                                l_v68_80 = 15;
                                local l_v68_81 = v68;
                                if not l_v68_80 and l_v68_79 then
                                    l_v68_80 = l_v68_79;
                                    l_v68_79 = 1;
                                end;
                                if not l_v68_80 and not l_v68_79 then
                                    l_v68_79 = 0;
                                    l_v68_80 = 1;
                                end;
                                v4659.Anchor = l_CFrame_12 * l_Angles_13(v4656, v4657, (math.rad((l_v68_81:NextNumber(l_v68_79, l_v68_80)))));
                                local l_new_28 = TweenInfo.new;
                                l_Angles_13 = 0.3;
                                v4656 = 0.4;
                                v4657 = v68;
                                if not v4656 and l_Angles_13 then
                                    v4656 = l_Angles_13;
                                    l_Angles_13 = 1;
                                end;
                                if not v4656 and not l_Angles_13 then
                                    l_Angles_13 = 0;
                                    v4656 = 1;
                                end;
                                v4659.Info = l_new_28(v4657:NextNumber(l_Angles_13, v4656), Enum.EasingStyle.Sine);
                                local l_v4659_0 = v4659 --[[ copy: 8 -> 21 ]];
                                task.spawn(function()
                                    local l_Model_102 = l_v4659_0.Model;
                                    local v4669 = l_v4659_0.Info or TweenInfo.new(1, Enum.EasingStyle.Sine);
                                    local l_Start_105 = l_Model_102:FindFirstChild("Start");
                                    local l_End_103 = l_Model_102:FindFirstChild("End");
                                    local l_Stay_101 = l_v4659_0.Stay;
                                    local l_Anchor_102 = l_v4659_0.Anchor;
                                    local v4674 = l_v4659_0.EndT or 1;
                                    local l_Del_101 = l_v4659_0.Del;
                                    local l_Skip_101 = l_v4659_0.Skip;
                                    if l_Start_105 and l_End_103 then
                                        l_Model_102.PrimaryPart = l_Start_105;
                                        if not l_Skip_101 then
                                            for _, v4678 in pairs(l_Model_102:GetChildren()) do
                                                if v4678:IsA("BasePart") then
                                                    v4678.CanCollide = false;
                                                    v4678.Anchored = true;
                                                end;
                                            end;
                                        end;
                                        if l_Anchor_102 then
                                            l_Model_102:SetPrimaryPartCFrame(l_Anchor_102);
                                        end;
                                        if l_v4659_0.T then
                                            l_Start_105.Transparency = l_v4659_0.T;
                                        end;
                                        l_End_103.Transparency = 1;
                                        l_Model_102.Parent = workspace.Thrown;
                                        local l_Decal_102 = l_Start_105:FindFirstChildOfClass("Decal");
                                        local l_SpecialMesh_204 = l_Start_105:FindFirstChildOfClass("SpecialMesh");
                                        local l_SpecialMesh_205 = l_End_103:FindFirstChildOfClass("SpecialMesh");
                                        local v4682 = nil;
                                        do
                                            local l_v4682_0 = v4682;
                                            if l_Del_101 then
                                                game:GetService("TweenService"):Create(l_Start_105, v4669, {
                                                    Size = l_End_103.Size, 
                                                    CFrame = l_End_103.CFrame
                                                }):Play();
                                                task.delay(l_Del_101, function()
                                                    l_v4682_0 = game:GetService("TweenService"):Create(l_Start_105, v4669, {
                                                        Transparency = v4674
                                                    });
                                                    l_v4682_0:Play();
                                                    if l_Decal_102 then
                                                        for _, v4685 in pairs(l_Start_105:GetChildren()) do
                                                            if v4685:IsA("Decal") then
                                                                game:GetService("TweenService"):Create(v4685, v4669, {
                                                                    Transparency = v4674
                                                                }):Play();
                                                            end;
                                                        end;
                                                    end;
                                                    if l_SpecialMesh_204 then
                                                        l_v4682_0 = game:GetService("TweenService"):Create(l_SpecialMesh_204, v4669, {
                                                            Scale = l_SpecialMesh_205.Scale
                                                        }):Play();
                                                    end;
                                                end);
                                            else
                                                if l_SpecialMesh_204 then
                                                    game:GetService("TweenService"):Create(l_SpecialMesh_204, v4669, {
                                                        Scale = l_SpecialMesh_205.Scale
                                                    }):Play();
                                                end;
                                                if l_Decal_102 then
                                                    for _, v4687 in pairs(l_Start_105:GetChildren()) do
                                                        if v4687:IsA("Decal") then
                                                            game:GetService("TweenService"):Create(v4687, v4669, {
                                                                Transparency = v4674
                                                            }):Play();
                                                        end;
                                                    end;
                                                    l_v4682_0 = game:GetService("TweenService"):Create(l_Start_105, v4669, {
                                                        Size = l_End_103.Size, 
                                                        CFrame = l_End_103.CFrame
                                                    });
                                                    l_v4682_0:Play();
                                                else
                                                    l_v4682_0 = game:GetService("TweenService"):Create(l_Start_105, v4669, {
                                                        Size = l_End_103.Size, 
                                                        Transparency = v4674, 
                                                        CFrame = l_End_103.CFrame
                                                    });
                                                    l_v4682_0:Play();
                                                end;
                                            end;
                                            if not l_Stay_101 then
                                                if l_Del_101 then
                                                    task.wait(l_Del_101 + 0.1);
                                                end;
                                                l_v4682_0.Completed:Once(function()
                                                    l_Model_102:Destroy();
                                                end);
                                            end;
                                        end;
                                    end;
                                end);
                                v4659 = v4561.WindTimeGlass:Clone();
                                v4657 = 2;
                                l_v68_78 = 4;
                                v4662 = v68;
                                if not l_v68_78 and v4657 then
                                    l_v68_78 = v4657;
                                    v4657 = 1;
                                end;
                                if not l_v68_78 and not v4657 then
                                    v4657 = 0;
                                    l_v68_78 = 1;
                                end;
                                v4659:ScaleTo(v4662:NextNumber(v4657, l_v68_78) * 2.1);
                                l_new_28 = {
                                    Model = v4659, 
                                    T = 0.9
                                };
                                l_Angles_13 = l_PrimaryPart_28.CFrame;
                                v4656 = CFrame.Angles;
                                v4662 = -15;
                                l_v68_79 = 15;
                                l_v68_80 = v68;
                                if not l_v68_79 and v4662 then
                                    l_v68_79 = v4662;
                                    v4662 = 1;
                                end;
                                if not l_v68_79 and not v4662 then
                                    v4662 = 0;
                                    l_v68_79 = 1;
                                end;
                                v4657 = math.rad((l_v68_80:NextNumber(v4662, l_v68_79)));
                                l_v68_79 = 0;
                                l_v68_80 = 360;
                                l_v68_81 = v68;
                                if not l_v68_80 and l_v68_79 then
                                    l_v68_80 = l_v68_79;
                                    l_v68_79 = 1;
                                end;
                                if not l_v68_80 and not l_v68_79 then
                                    l_v68_79 = 0;
                                    l_v68_80 = 1;
                                end;
                                l_v68_78 = math.rad((l_v68_81:NextNumber(l_v68_79, l_v68_80)));
                                l_v68_80 = -15;
                                l_v68_81 = 15;
                                local l_v68_82 = v68;
                                if not l_v68_81 and l_v68_80 then
                                    l_v68_81 = l_v68_80;
                                    l_v68_80 = 1;
                                end;
                                if not l_v68_81 and not l_v68_80 then
                                    l_v68_80 = 0;
                                    l_v68_81 = 1;
                                end;
                                l_new_28.Anchor = l_Angles_13 * v4656(v4657, l_v68_78, (math.rad((l_v68_82:NextNumber(l_v68_80, l_v68_81)))));
                                l_CFrame_12 = TweenInfo.new;
                                v4656 = 0.3;
                                v4657 = 0.4;
                                l_v68_78 = v68;
                                if not v4657 and v4656 then
                                    v4657 = v4656;
                                    v4656 = 1;
                                end;
                                if not v4657 and not v4656 then
                                    v4656 = 0;
                                    v4657 = 1;
                                end;
                                l_new_28.Info = l_CFrame_12(l_v68_78:NextNumber(v4656, v4657), Enum.EasingStyle.Sine);
                                task.spawn(function()
                                    local l_Model_103 = l_new_28.Model;
                                    local v4690 = l_new_28.Info or TweenInfo.new(1, Enum.EasingStyle.Sine);
                                    local l_Start_106 = l_Model_103:FindFirstChild("Start");
                                    local l_End_104 = l_Model_103:FindFirstChild("End");
                                    local l_Stay_102 = l_new_28.Stay;
                                    local l_Anchor_103 = l_new_28.Anchor;
                                    local v4695 = l_new_28.EndT or 1;
                                    local l_Del_102 = l_new_28.Del;
                                    local l_Skip_102 = l_new_28.Skip;
                                    if l_Start_106 and l_End_104 then
                                        l_Model_103.PrimaryPart = l_Start_106;
                                        if not l_Skip_102 then
                                            for _, v4699 in pairs(l_Model_103:GetChildren()) do
                                                if v4699:IsA("BasePart") then
                                                    v4699.CanCollide = false;
                                                    v4699.Anchored = true;
                                                end;
                                            end;
                                        end;
                                        if l_Anchor_103 then
                                            l_Model_103:SetPrimaryPartCFrame(l_Anchor_103);
                                        end;
                                        if l_new_28.T then
                                            l_Start_106.Transparency = l_new_28.T;
                                        end;
                                        l_End_104.Transparency = 1;
                                        l_Model_103.Parent = workspace.Thrown;
                                        local l_Decal_103 = l_Start_106:FindFirstChildOfClass("Decal");
                                        local l_SpecialMesh_206 = l_Start_106:FindFirstChildOfClass("SpecialMesh");
                                        local l_SpecialMesh_207 = l_End_104:FindFirstChildOfClass("SpecialMesh");
                                        local v4703 = nil;
                                        do
                                            local l_v4703_0 = v4703;
                                            if l_Del_102 then
                                                game:GetService("TweenService"):Create(l_Start_106, v4690, {
                                                    Size = l_End_104.Size, 
                                                    CFrame = l_End_104.CFrame
                                                }):Play();
                                                task.delay(l_Del_102, function()
                                                    l_v4703_0 = game:GetService("TweenService"):Create(l_Start_106, v4690, {
                                                        Transparency = v4695
                                                    });
                                                    l_v4703_0:Play();
                                                    if l_Decal_103 then
                                                        for _, v4706 in pairs(l_Start_106:GetChildren()) do
                                                            if v4706:IsA("Decal") then
                                                                game:GetService("TweenService"):Create(v4706, v4690, {
                                                                    Transparency = v4695
                                                                }):Play();
                                                            end;
                                                        end;
                                                    end;
                                                    if l_SpecialMesh_206 then
                                                        l_v4703_0 = game:GetService("TweenService"):Create(l_SpecialMesh_206, v4690, {
                                                            Scale = l_SpecialMesh_207.Scale
                                                        }):Play();
                                                    end;
                                                end);
                                            else
                                                if l_SpecialMesh_206 then
                                                    game:GetService("TweenService"):Create(l_SpecialMesh_206, v4690, {
                                                        Scale = l_SpecialMesh_207.Scale
                                                    }):Play();
                                                end;
                                                if l_Decal_103 then
                                                    for _, v4708 in pairs(l_Start_106:GetChildren()) do
                                                        if v4708:IsA("Decal") then
                                                            game:GetService("TweenService"):Create(v4708, v4690, {
                                                                Transparency = v4695
                                                            }):Play();
                                                        end;
                                                    end;
                                                    l_v4703_0 = game:GetService("TweenService"):Create(l_Start_106, v4690, {
                                                        Size = l_End_104.Size, 
                                                        CFrame = l_End_104.CFrame
                                                    });
                                                    l_v4703_0:Play();
                                                else
                                                    l_v4703_0 = game:GetService("TweenService"):Create(l_Start_106, v4690, {
                                                        Size = l_End_104.Size, 
                                                        Transparency = v4695, 
                                                        CFrame = l_End_104.CFrame
                                                    });
                                                    l_v4703_0:Play();
                                                end;
                                            end;
                                            if not l_Stay_102 then
                                                if l_Del_102 then
                                                    task.wait(l_Del_102 + 0.1);
                                                end;
                                                l_v4703_0.Completed:Once(function()
                                                    l_Model_103:Destroy();
                                                end);
                                            end;
                                        end;
                                    end;
                                end);
                                task.wait(0.03);
                            end;
                            task.wait(0.03);
                            v745({
                                FX = v4562.Lines, 
                                On = false
                            });
                        end, 
                        [215] = function()
                            for v4709 = 1, 4 do
                                local v4710 = v4562._maid:give(v4561.Whirl:Clone());
                                local v4711 = v4562.StoicBoomEntrance.CFrame * CFrame.new(0, 3, 0);
                                local l_Angles_14 = CFrame.Angles;
                                local v4713 = -45;
                                local v4714 = 45;
                                local l_v68_83 = v68;
                                if not v4714 and v4713 then
                                    v4714 = v4713;
                                    v4713 = 1;
                                end;
                                if not v4714 and not v4713 then
                                    v4713 = 0;
                                    v4714 = 1;
                                end;
                                local v4716 = math.rad((l_v68_83:NextNumber(v4713, v4714)));
                                v4714 = 0;
                                l_v68_83 = 360;
                                local l_v68_84 = v68;
                                if not l_v68_83 and v4714 then
                                    l_v68_83 = v4714;
                                    v4714 = 1;
                                end;
                                if not l_v68_83 and not v4714 then
                                    v4714 = 0;
                                    l_v68_83 = 1;
                                end;
                                local v4718 = math.rad((l_v68_84:NextNumber(v4714, l_v68_83)));
                                l_v68_83 = -45;
                                l_v68_84 = 45;
                                local l_v68_85 = v68;
                                if not l_v68_84 and l_v68_83 then
                                    l_v68_84 = l_v68_83;
                                    l_v68_83 = 1;
                                end;
                                if not l_v68_84 and not l_v68_83 then
                                    l_v68_83 = 0;
                                    l_v68_84 = 1;
                                end;
                                v4710:SetPrimaryPartCFrame(v4711 * l_Angles_14(v4716, v4718, (math.rad((l_v68_85:NextNumber(l_v68_83, l_v68_84))))));
                                v4716 = 1.2;
                                v4718 = 1;
                                v4713 = v68;
                                if not v4718 and v4716 then
                                    v4718 = v4716;
                                    v4716 = 1;
                                end;
                                if not v4718 and not v4716 then
                                    v4716 = 0;
                                    v4718 = 1;
                                end;
                                v4710:ScaleTo((v4713:NextNumber(v4716, v4718) * v4709) * 2.1);
                                local l_v713_1 = v713;
                                local v4721 = {
                                    FX = v4710
                                };
                                v4711 = 0.4;
                                l_Angles_14 = 1.5;
                                v4716 = v68;
                                if not l_Angles_14 and v4711 then
                                    l_Angles_14 = v4711;
                                    v4711 = 1;
                                end;
                                if not l_Angles_14 and not v4711 then
                                    v4711 = 0;
                                    l_Angles_14 = 1;
                                end;
                                v4721.Scale = v4716:NextNumber(v4711, l_Angles_14);
                                l_v713_1(v4721);
                                v4710.Parent = workspace.Thrown;
                                v738(v4710);
                                task.wait(0.01);
                            end;
                        end, 
                        [214] = function()
                            v4562.SPREAD = v4562._maid:give(v4561.SPREAD:Clone());
                            v4562.SPREAD:SetPrimaryPartCFrame(l_v4570_0.PrimaryPart.CFrame * CFrame.new(0, -5, 0));
                            v713({
                                FX = v4562.SPREAD, 
                                Scale = 0.22499999999999998
                            });
                            v4562.SPREAD.Parent = workspace.Thrown;
                            v738(v4562.SPREAD);
                            v4562.SPREAD:ScaleTo(21);
                            for v4722 = 1, 3 do
                                local v4723 = v4561.Outty:Clone();
                                v4723:SetPrimaryPartCFrame(v4562.StoicBoomEntrance.CFrame * CFrame.new(0, 8 * v4722, 0));
                                v4723:ScaleTo((4 - v4722) * 2.1);
                                local v4724 = {
                                    Model = v4723, 
                                    Info = TweenInfo.new(0.4, Enum.EasingStyle.Exponential), 
                                    T = 0.8
                                };
                                task.spawn(function()
                                    local l_Model_104 = v4724.Model;
                                    local v4726 = v4724.Info or TweenInfo.new(1, Enum.EasingStyle.Sine);
                                    local l_Start_107 = l_Model_104:FindFirstChild("Start");
                                    local l_End_105 = l_Model_104:FindFirstChild("End");
                                    local l_Stay_103 = v4724.Stay;
                                    local l_Anchor_104 = v4724.Anchor;
                                    local v4731 = v4724.EndT or 1;
                                    local l_Del_103 = v4724.Del;
                                    local l_Skip_103 = v4724.Skip;
                                    if l_Start_107 and l_End_105 then
                                        l_Model_104.PrimaryPart = l_Start_107;
                                        if not l_Skip_103 then
                                            for _, v4735 in pairs(l_Model_104:GetChildren()) do
                                                if v4735:IsA("BasePart") then
                                                    v4735.CanCollide = false;
                                                    v4735.Anchored = true;
                                                end;
                                            end;
                                        end;
                                        if l_Anchor_104 then
                                            l_Model_104:SetPrimaryPartCFrame(l_Anchor_104);
                                        end;
                                        if v4724.T then
                                            l_Start_107.Transparency = v4724.T;
                                        end;
                                        l_End_105.Transparency = 1;
                                        l_Model_104.Parent = workspace.Thrown;
                                        local l_Decal_104 = l_Start_107:FindFirstChildOfClass("Decal");
                                        local l_SpecialMesh_208 = l_Start_107:FindFirstChildOfClass("SpecialMesh");
                                        local l_SpecialMesh_209 = l_End_105:FindFirstChildOfClass("SpecialMesh");
                                        local v4739 = nil;
                                        do
                                            local l_v4739_0 = v4739;
                                            if l_Del_103 then
                                                game:GetService("TweenService"):Create(l_Start_107, v4726, {
                                                    Size = l_End_105.Size, 
                                                    CFrame = l_End_105.CFrame
                                                }):Play();
                                                task.delay(l_Del_103, function()
                                                    l_v4739_0 = game:GetService("TweenService"):Create(l_Start_107, v4726, {
                                                        Transparency = v4731
                                                    });
                                                    l_v4739_0:Play();
                                                    if l_Decal_104 then
                                                        for _, v4742 in pairs(l_Start_107:GetChildren()) do
                                                            if v4742:IsA("Decal") then
                                                                game:GetService("TweenService"):Create(v4742, v4726, {
                                                                    Transparency = v4731
                                                                }):Play();
                                                            end;
                                                        end;
                                                    end;
                                                    if l_SpecialMesh_208 then
                                                        l_v4739_0 = game:GetService("TweenService"):Create(l_SpecialMesh_208, v4726, {
                                                            Scale = l_SpecialMesh_209.Scale
                                                        }):Play();
                                                    end;
                                                end);
                                            else
                                                if l_SpecialMesh_208 then
                                                    game:GetService("TweenService"):Create(l_SpecialMesh_208, v4726, {
                                                        Scale = l_SpecialMesh_209.Scale
                                                    }):Play();
                                                end;
                                                if l_Decal_104 then
                                                    for _, v4744 in pairs(l_Start_107:GetChildren()) do
                                                        if v4744:IsA("Decal") then
                                                            game:GetService("TweenService"):Create(v4744, v4726, {
                                                                Transparency = v4731
                                                            }):Play();
                                                        end;
                                                    end;
                                                    l_v4739_0 = game:GetService("TweenService"):Create(l_Start_107, v4726, {
                                                        Size = l_End_105.Size, 
                                                        CFrame = l_End_105.CFrame
                                                    });
                                                    l_v4739_0:Play();
                                                else
                                                    l_v4739_0 = game:GetService("TweenService"):Create(l_Start_107, v4726, {
                                                        Size = l_End_105.Size, 
                                                        Transparency = v4731, 
                                                        CFrame = l_End_105.CFrame
                                                    });
                                                    l_v4739_0:Play();
                                                end;
                                            end;
                                            if not l_Stay_103 then
                                                if l_Del_103 then
                                                    task.wait(l_Del_103 + 0.1);
                                                end;
                                                l_v4739_0.Completed:Once(function()
                                                    l_Model_104:Destroy();
                                                end);
                                            end;
                                        end;
                                    end;
                                end);
                            end;
                            task.spawn(function()
                                for _ = 1, 6 do
                                    local v4746 = v4561.WindTime:Clone();
                                    local v4747 = 2;
                                    local v4748 = 4;
                                    local l_v68_86 = v68;
                                    if not v4748 and v4747 then
                                        v4748 = v4747;
                                        v4747 = 1;
                                    end;
                                    if not v4748 and not v4747 then
                                        v4747 = 0;
                                        v4748 = 1;
                                    end;
                                    v4746:ScaleTo(l_v68_86:NextNumber(v4747, v4748) * 2.1);
                                    local v4750 = {
                                        Model = v4746, 
                                        T = 0.9
                                    };
                                    local l_CFrame_13 = l_PrimaryPart_28.CFrame;
                                    local l_Angles_15 = CFrame.Angles;
                                    l_v68_86 = -15;
                                    local v4753 = 15;
                                    local l_v68_87 = v68;
                                    if not v4753 and l_v68_86 then
                                        v4753 = l_v68_86;
                                        l_v68_86 = 1;
                                    end;
                                    if not v4753 and not l_v68_86 then
                                        l_v68_86 = 0;
                                        v4753 = 1;
                                    end;
                                    v4747 = math.rad((l_v68_87:NextNumber(l_v68_86, v4753)));
                                    v4753 = 0;
                                    l_v68_87 = 360;
                                    local l_v68_88 = v68;
                                    if not l_v68_87 and v4753 then
                                        l_v68_87 = v4753;
                                        v4753 = 1;
                                    end;
                                    if not l_v68_87 and not v4753 then
                                        v4753 = 0;
                                        l_v68_87 = 1;
                                    end;
                                    v4748 = math.rad((l_v68_88:NextNumber(v4753, l_v68_87)));
                                    l_v68_87 = -15;
                                    l_v68_88 = 15;
                                    local l_v68_89 = v68;
                                    if not l_v68_88 and l_v68_87 then
                                        l_v68_88 = l_v68_87;
                                        l_v68_87 = 1;
                                    end;
                                    if not l_v68_88 and not l_v68_87 then
                                        l_v68_87 = 0;
                                        l_v68_88 = 1;
                                    end;
                                    v4750.Anchor = l_CFrame_13 * l_Angles_15(v4747, v4748, (math.rad((l_v68_89:NextNumber(l_v68_87, l_v68_88)))));
                                    local l_new_29 = TweenInfo.new;
                                    l_Angles_15 = 0.3;
                                    v4747 = 0.4;
                                    v4748 = v68;
                                    if not v4747 and l_Angles_15 then
                                        v4747 = l_Angles_15;
                                        l_Angles_15 = 1;
                                    end;
                                    if not v4747 and not l_Angles_15 then
                                        l_Angles_15 = 0;
                                        v4747 = 1;
                                    end;
                                    v4750.Info = l_new_29(v4748:NextNumber(l_Angles_15, v4747), Enum.EasingStyle.Sine);
                                    task.spawn(function()
                                        local l_Model_105 = v4750.Model;
                                        local v4759 = v4750.Info or TweenInfo.new(1, Enum.EasingStyle.Sine);
                                        local l_Start_108 = l_Model_105:FindFirstChild("Start");
                                        local l_End_106 = l_Model_105:FindFirstChild("End");
                                        local l_Stay_104 = v4750.Stay;
                                        local l_Anchor_105 = v4750.Anchor;
                                        local v4764 = v4750.EndT or 1;
                                        local l_Del_104 = v4750.Del;
                                        local l_Skip_104 = v4750.Skip;
                                        if l_Start_108 and l_End_106 then
                                            l_Model_105.PrimaryPart = l_Start_108;
                                            if not l_Skip_104 then
                                                for _, v4768 in pairs(l_Model_105:GetChildren()) do
                                                    if v4768:IsA("BasePart") then
                                                        v4768.CanCollide = false;
                                                        v4768.Anchored = true;
                                                    end;
                                                end;
                                            end;
                                            if l_Anchor_105 then
                                                l_Model_105:SetPrimaryPartCFrame(l_Anchor_105);
                                            end;
                                            if v4750.T then
                                                l_Start_108.Transparency = v4750.T;
                                            end;
                                            l_End_106.Transparency = 1;
                                            l_Model_105.Parent = workspace.Thrown;
                                            local l_Decal_105 = l_Start_108:FindFirstChildOfClass("Decal");
                                            local l_SpecialMesh_210 = l_Start_108:FindFirstChildOfClass("SpecialMesh");
                                            local l_SpecialMesh_211 = l_End_106:FindFirstChildOfClass("SpecialMesh");
                                            local v4772 = nil;
                                            do
                                                local l_v4772_0 = v4772;
                                                if l_Del_104 then
                                                    game:GetService("TweenService"):Create(l_Start_108, v4759, {
                                                        Size = l_End_106.Size, 
                                                        CFrame = l_End_106.CFrame
                                                    }):Play();
                                                    task.delay(l_Del_104, function()
                                                        l_v4772_0 = game:GetService("TweenService"):Create(l_Start_108, v4759, {
                                                            Transparency = v4764
                                                        });
                                                        l_v4772_0:Play();
                                                        if l_Decal_105 then
                                                            for _, v4775 in pairs(l_Start_108:GetChildren()) do
                                                                if v4775:IsA("Decal") then
                                                                    game:GetService("TweenService"):Create(v4775, v4759, {
                                                                        Transparency = v4764
                                                                    }):Play();
                                                                end;
                                                            end;
                                                        end;
                                                        if l_SpecialMesh_210 then
                                                            l_v4772_0 = game:GetService("TweenService"):Create(l_SpecialMesh_210, v4759, {
                                                                Scale = l_SpecialMesh_211.Scale
                                                            }):Play();
                                                        end;
                                                    end);
                                                else
                                                    if l_SpecialMesh_210 then
                                                        game:GetService("TweenService"):Create(l_SpecialMesh_210, v4759, {
                                                            Scale = l_SpecialMesh_211.Scale
                                                        }):Play();
                                                    end;
                                                    if l_Decal_105 then
                                                        for _, v4777 in pairs(l_Start_108:GetChildren()) do
                                                            if v4777:IsA("Decal") then
                                                                game:GetService("TweenService"):Create(v4777, v4759, {
                                                                    Transparency = v4764
                                                                }):Play();
                                                            end;
                                                        end;
                                                        l_v4772_0 = game:GetService("TweenService"):Create(l_Start_108, v4759, {
                                                            Size = l_End_106.Size, 
                                                            CFrame = l_End_106.CFrame
                                                        });
                                                        l_v4772_0:Play();
                                                    else
                                                        l_v4772_0 = game:GetService("TweenService"):Create(l_Start_108, v4759, {
                                                            Size = l_End_106.Size, 
                                                            Transparency = v4764, 
                                                            CFrame = l_End_106.CFrame
                                                        });
                                                        l_v4772_0:Play();
                                                    end;
                                                end;
                                                if not l_Stay_104 then
                                                    if l_Del_104 then
                                                        task.wait(l_Del_104 + 0.1);
                                                    end;
                                                    l_v4772_0.Completed:Once(function()
                                                        l_Model_105:Destroy();
                                                    end);
                                                end;
                                            end;
                                        end;
                                    end);
                                    task.wait(0.025);
                                end;
                            end);
                            for v4778 = 1, 3 do
                                local v4779 = v4561.GAG:Clone();
                                v4779:SetPrimaryPartCFrame((v4562.StoicBoomEntrance.CFrame * CFrame.new(0, 3, 0)) * CFrame.Angles(0, math.rad((math.random(0, 360))), 1.5707963267948966));
                                v4779:ScaleTo(v4778 * 2.1);
                                local v4780 = {
                                    Model = v4779, 
                                    Info = TweenInfo.new(2, Enum.EasingStyle.Exponential), 
                                    T = 1
                                };
                                task.spawn(function()
                                    local l_Model_106 = v4780.Model;
                                    local v4782 = v4780.Info or TweenInfo.new(1, Enum.EasingStyle.Sine);
                                    local l_Start_109 = l_Model_106:FindFirstChild("Start");
                                    local l_End_107 = l_Model_106:FindFirstChild("End");
                                    local l_Stay_105 = v4780.Stay;
                                    local l_Anchor_106 = v4780.Anchor;
                                    local v4787 = v4780.EndT or 1;
                                    local l_Del_105 = v4780.Del;
                                    local l_Skip_105 = v4780.Skip;
                                    if l_Start_109 and l_End_107 then
                                        l_Model_106.PrimaryPart = l_Start_109;
                                        if not l_Skip_105 then
                                            for _, v4791 in pairs(l_Model_106:GetChildren()) do
                                                if v4791:IsA("BasePart") then
                                                    v4791.CanCollide = false;
                                                    v4791.Anchored = true;
                                                end;
                                            end;
                                        end;
                                        if l_Anchor_106 then
                                            l_Model_106:SetPrimaryPartCFrame(l_Anchor_106);
                                        end;
                                        if v4780.T then
                                            l_Start_109.Transparency = v4780.T;
                                        end;
                                        l_End_107.Transparency = 1;
                                        l_Model_106.Parent = workspace.Thrown;
                                        local l_Decal_106 = l_Start_109:FindFirstChildOfClass("Decal");
                                        local l_SpecialMesh_212 = l_Start_109:FindFirstChildOfClass("SpecialMesh");
                                        local l_SpecialMesh_213 = l_End_107:FindFirstChildOfClass("SpecialMesh");
                                        local v4795 = nil;
                                        do
                                            local l_v4795_0 = v4795;
                                            if l_Del_105 then
                                                game:GetService("TweenService"):Create(l_Start_109, v4782, {
                                                    Size = l_End_107.Size, 
                                                    CFrame = l_End_107.CFrame
                                                }):Play();
                                                task.delay(l_Del_105, function()
                                                    l_v4795_0 = game:GetService("TweenService"):Create(l_Start_109, v4782, {
                                                        Transparency = v4787
                                                    });
                                                    l_v4795_0:Play();
                                                    if l_Decal_106 then
                                                        for _, v4798 in pairs(l_Start_109:GetChildren()) do
                                                            if v4798:IsA("Decal") then
                                                                game:GetService("TweenService"):Create(v4798, v4782, {
                                                                    Transparency = v4787
                                                                }):Play();
                                                            end;
                                                        end;
                                                    end;
                                                    if l_SpecialMesh_212 then
                                                        l_v4795_0 = game:GetService("TweenService"):Create(l_SpecialMesh_212, v4782, {
                                                            Scale = l_SpecialMesh_213.Scale
                                                        }):Play();
                                                    end;
                                                end);
                                            else
                                                if l_SpecialMesh_212 then
                                                    game:GetService("TweenService"):Create(l_SpecialMesh_212, v4782, {
                                                        Scale = l_SpecialMesh_213.Scale
                                                    }):Play();
                                                end;
                                                if l_Decal_106 then
                                                    for _, v4800 in pairs(l_Start_109:GetChildren()) do
                                                        if v4800:IsA("Decal") then
                                                            game:GetService("TweenService"):Create(v4800, v4782, {
                                                                Transparency = v4787
                                                            }):Play();
                                                        end;
                                                    end;
                                                    l_v4795_0 = game:GetService("TweenService"):Create(l_Start_109, v4782, {
                                                        Size = l_End_107.Size, 
                                                        CFrame = l_End_107.CFrame
                                                    });
                                                    l_v4795_0:Play();
                                                else
                                                    l_v4795_0 = game:GetService("TweenService"):Create(l_Start_109, v4782, {
                                                        Size = l_End_107.Size, 
                                                        Transparency = v4787, 
                                                        CFrame = l_End_107.CFrame
                                                    });
                                                    l_v4795_0:Play();
                                                end;
                                            end;
                                            if not l_Stay_105 then
                                                if l_Del_105 then
                                                    task.wait(l_Del_105 + 0.1);
                                                end;
                                                l_v4795_0.Completed:Once(function()
                                                    l_Model_106:Destroy();
                                                end);
                                            end;
                                        end;
                                    end;
                                end);
                            end;
                            task.spawn(function()
                                for v4801 = 1, 3 do
                                    local v4802 = v4561.Brother:Clone();
                                    v4802:SetPrimaryPartCFrame((v4562.StoicBoomEntrance.CFrame * CFrame.new(0, 8 * v4801, 0)) * CFrame.Angles(0, math.rad((math.random(0, 360))), 1.5707963267948966));
                                    v4802:ScaleTo((0.5 * v4801) * 2.1);
                                    if v4801 == 3 then
                                        local v4803 = {
                                            Model = v4802, 
                                            Info = TweenInfo.new(0.15 * v4801, Enum.EasingStyle.Exponential), 
                                            T = 1
                                        };
                                        task.spawn(function()
                                            local l_Model_107 = v4803.Model;
                                            local v4805 = v4803.Info or TweenInfo.new(1, Enum.EasingStyle.Sine);
                                            local l_Start_110 = l_Model_107:FindFirstChild("Start");
                                            local l_End_108 = l_Model_107:FindFirstChild("End");
                                            local l_Stay_106 = v4803.Stay;
                                            local l_Anchor_107 = v4803.Anchor;
                                            local v4810 = v4803.EndT or 1;
                                            local l_Del_106 = v4803.Del;
                                            local l_Skip_106 = v4803.Skip;
                                            if l_Start_110 and l_End_108 then
                                                l_Model_107.PrimaryPart = l_Start_110;
                                                if not l_Skip_106 then
                                                    for _, v4814 in pairs(l_Model_107:GetChildren()) do
                                                        if v4814:IsA("BasePart") then
                                                            v4814.CanCollide = false;
                                                            v4814.Anchored = true;
                                                        end;
                                                    end;
                                                end;
                                                if l_Anchor_107 then
                                                    l_Model_107:SetPrimaryPartCFrame(l_Anchor_107);
                                                end;
                                                if v4803.T then
                                                    l_Start_110.Transparency = v4803.T;
                                                end;
                                                l_End_108.Transparency = 1;
                                                l_Model_107.Parent = workspace.Thrown;
                                                local l_Decal_107 = l_Start_110:FindFirstChildOfClass("Decal");
                                                local l_SpecialMesh_214 = l_Start_110:FindFirstChildOfClass("SpecialMesh");
                                                local l_SpecialMesh_215 = l_End_108:FindFirstChildOfClass("SpecialMesh");
                                                local v4818 = nil;
                                                do
                                                    local l_v4818_0 = v4818;
                                                    if l_Del_106 then
                                                        game:GetService("TweenService"):Create(l_Start_110, v4805, {
                                                            Size = l_End_108.Size, 
                                                            CFrame = l_End_108.CFrame
                                                        }):Play();
                                                        task.delay(l_Del_106, function()
                                                            l_v4818_0 = game:GetService("TweenService"):Create(l_Start_110, v4805, {
                                                                Transparency = v4810
                                                            });
                                                            l_v4818_0:Play();
                                                            if l_Decal_107 then
                                                                for _, v4821 in pairs(l_Start_110:GetChildren()) do
                                                                    if v4821:IsA("Decal") then
                                                                        game:GetService("TweenService"):Create(v4821, v4805, {
                                                                            Transparency = v4810
                                                                        }):Play();
                                                                    end;
                                                                end;
                                                            end;
                                                            if l_SpecialMesh_214 then
                                                                l_v4818_0 = game:GetService("TweenService"):Create(l_SpecialMesh_214, v4805, {
                                                                    Scale = l_SpecialMesh_215.Scale
                                                                }):Play();
                                                            end;
                                                        end);
                                                    else
                                                        if l_SpecialMesh_214 then
                                                            game:GetService("TweenService"):Create(l_SpecialMesh_214, v4805, {
                                                                Scale = l_SpecialMesh_215.Scale
                                                            }):Play();
                                                        end;
                                                        if l_Decal_107 then
                                                            for _, v4823 in pairs(l_Start_110:GetChildren()) do
                                                                if v4823:IsA("Decal") then
                                                                    game:GetService("TweenService"):Create(v4823, v4805, {
                                                                        Transparency = v4810
                                                                    }):Play();
                                                                end;
                                                            end;
                                                            l_v4818_0 = game:GetService("TweenService"):Create(l_Start_110, v4805, {
                                                                Size = l_End_108.Size, 
                                                                CFrame = l_End_108.CFrame
                                                            });
                                                            l_v4818_0:Play();
                                                        else
                                                            l_v4818_0 = game:GetService("TweenService"):Create(l_Start_110, v4805, {
                                                                Size = l_End_108.Size, 
                                                                Transparency = v4810, 
                                                                CFrame = l_End_108.CFrame
                                                            });
                                                            l_v4818_0:Play();
                                                        end;
                                                    end;
                                                    if not l_Stay_106 then
                                                        if l_Del_106 then
                                                            task.wait(l_Del_106 + 0.1);
                                                        end;
                                                        l_v4818_0.Completed:Once(function()
                                                            l_Model_107:Destroy();
                                                        end);
                                                    end;
                                                end;
                                            end;
                                        end);
                                    else
                                        local v4824 = {
                                            Model = v4802, 
                                            Info = TweenInfo.new(0.15, Enum.EasingStyle.Exponential), 
                                            T = 1, 
                                            EndT = 0
                                        };
                                        task.spawn(function()
                                            local l_Model_108 = v4824.Model;
                                            local v4826 = v4824.Info or TweenInfo.new(1, Enum.EasingStyle.Sine);
                                            local l_Start_111 = l_Model_108:FindFirstChild("Start");
                                            local l_End_109 = l_Model_108:FindFirstChild("End");
                                            local l_Stay_107 = v4824.Stay;
                                            local l_Anchor_108 = v4824.Anchor;
                                            local v4831 = v4824.EndT or 1;
                                            local l_Del_107 = v4824.Del;
                                            local l_Skip_107 = v4824.Skip;
                                            if l_Start_111 and l_End_109 then
                                                l_Model_108.PrimaryPart = l_Start_111;
                                                if not l_Skip_107 then
                                                    for _, v4835 in pairs(l_Model_108:GetChildren()) do
                                                        if v4835:IsA("BasePart") then
                                                            v4835.CanCollide = false;
                                                            v4835.Anchored = true;
                                                        end;
                                                    end;
                                                end;
                                                if l_Anchor_108 then
                                                    l_Model_108:SetPrimaryPartCFrame(l_Anchor_108);
                                                end;
                                                if v4824.T then
                                                    l_Start_111.Transparency = v4824.T;
                                                end;
                                                l_End_109.Transparency = 1;
                                                l_Model_108.Parent = workspace.Thrown;
                                                local l_Decal_108 = l_Start_111:FindFirstChildOfClass("Decal");
                                                local l_SpecialMesh_216 = l_Start_111:FindFirstChildOfClass("SpecialMesh");
                                                local l_SpecialMesh_217 = l_End_109:FindFirstChildOfClass("SpecialMesh");
                                                local v4839 = nil;
                                                do
                                                    local l_v4839_0 = v4839;
                                                    if l_Del_107 then
                                                        game:GetService("TweenService"):Create(l_Start_111, v4826, {
                                                            Size = l_End_109.Size, 
                                                            CFrame = l_End_109.CFrame
                                                        }):Play();
                                                        task.delay(l_Del_107, function()
                                                            l_v4839_0 = game:GetService("TweenService"):Create(l_Start_111, v4826, {
                                                                Transparency = v4831
                                                            });
                                                            l_v4839_0:Play();
                                                            if l_Decal_108 then
                                                                for _, v4842 in pairs(l_Start_111:GetChildren()) do
                                                                    if v4842:IsA("Decal") then
                                                                        game:GetService("TweenService"):Create(v4842, v4826, {
                                                                            Transparency = v4831
                                                                        }):Play();
                                                                    end;
                                                                end;
                                                            end;
                                                            if l_SpecialMesh_216 then
                                                                l_v4839_0 = game:GetService("TweenService"):Create(l_SpecialMesh_216, v4826, {
                                                                    Scale = l_SpecialMesh_217.Scale
                                                                }):Play();
                                                            end;
                                                        end);
                                                    else
                                                        if l_SpecialMesh_216 then
                                                            game:GetService("TweenService"):Create(l_SpecialMesh_216, v4826, {
                                                                Scale = l_SpecialMesh_217.Scale
                                                            }):Play();
                                                        end;
                                                        if l_Decal_108 then
                                                            for _, v4844 in pairs(l_Start_111:GetChildren()) do
                                                                if v4844:IsA("Decal") then
                                                                    game:GetService("TweenService"):Create(v4844, v4826, {
                                                                        Transparency = v4831
                                                                    }):Play();
                                                                end;
                                                            end;
                                                            l_v4839_0 = game:GetService("TweenService"):Create(l_Start_111, v4826, {
                                                                Size = l_End_109.Size, 
                                                                CFrame = l_End_109.CFrame
                                                            });
                                                            l_v4839_0:Play();
                                                        else
                                                            l_v4839_0 = game:GetService("TweenService"):Create(l_Start_111, v4826, {
                                                                Size = l_End_109.Size, 
                                                                Transparency = v4831, 
                                                                CFrame = l_End_109.CFrame
                                                            });
                                                            l_v4839_0:Play();
                                                        end;
                                                    end;
                                                    if not l_Stay_107 then
                                                        if l_Del_107 then
                                                            task.wait(l_Del_107 + 0.1);
                                                        end;
                                                        l_v4839_0.Completed:Once(function()
                                                            l_Model_108:Destroy();
                                                        end);
                                                    end;
                                                end;
                                            end;
                                        end);
                                    end;
                                    task.wait(0.015);
                                end;
                            end);
                            v4562.Main = v4562._maid:give(v4561.Main:Clone());
                            v4562.Main:SetPrimaryPartCFrame(v4562.Impact.PrimaryPart.CFrame * CFrame.new(0, 4, 0));
                            v713({
                                FX = v4562.Main, 
                                Scale = 0.22499999999999998
                            });
                            v707({
                                FX = v4562.Main, 
                                Count = 5
                            });
                            v4562.Main.Parent = workspace.Thrown;
                            v4562.Main:ScaleTo(2.1);
                            v738(v4562.Main);
                            v4562.Ray = v4562._maid:give(v4561.Ray:Clone());
                            v4562.Ray:SetPrimaryPartCFrame(v4562.Impact.PrimaryPart.CFrame * CFrame.new(0, 0, 0));
                            v713({
                                FX = v4562.Ray, 
                                Scale = 0.405
                            });
                            v707({
                                FX = v4562.Ray, 
                                Count = 5
                            });
                            v4562.Ray.Parent = workspace.Thrown;
                            v4562.Ray:ScaleTo(4.2);
                            v738(v4562.Ray);
                        end, 
                        [208] = function()
                            for _, v4846 in pairs(v4562.StoicBombSpeedLines:GetDescendants()) do
                                if v4846:IsA("ParticleEmitter") then
                                    v4846.Enabled = false;
                                end;
                            end;
                            for v4847, _ in pairs(v4562.Ranges) do
                                TweenService:Create(v4847, TweenInfo.new(0.3, Enum.EasingStyle.Sine), {
                                    Range = 0
                                }):Play();
                            end;
                        end, 
                        [79] = function()
                            local v4849 = v464({
                                orig = l_char_19.Torso.Position, 
                                dir = Vector3.new(0, -200, 0, 0)
                            });
                            v4849 = {
                                Position = l_char_19.PrimaryPart.Position - Vector3.new(0, 2.4000000953674316, 0, 0)
                            };
                            if v4849 then
                                v4562.StoicBoomEntrance = v4562._maid:give(v4561["stoic bomb boom entrance"]:Clone());
                                v4562.StoicBoomEntrance.Position = v4849.Position + Vector3.new(0, -0.5, 0, 0);
                                v4562.StoicBoomEntrance.Parent = workspace.Thrown;
                                v738(v4562.StoicBoomEntrance.smok);
                                v738(v4562.StoicBoomEntrance.Attachment);
                                v4562.StoicBoomEntrance["BOMB.TWO."]:Emit(v4562.StoicBoomEntrance["BOMB.TWO."]:GetAttribute("EmitCount"));
                                for v4850 = 1, 3 do
                                    local v4851 = v4561.Outty:Clone();
                                    v4851:SetPrimaryPartCFrame(v4562.StoicBoomEntrance.CFrame * CFrame.new(0, 4 * v4850, 0));
                                    v4851:ScaleTo(0.5 * v4850);
                                    local v4852 = {
                                        Model = v4851, 
                                        Info = TweenInfo.new(3, Enum.EasingStyle.Exponential), 
                                        T = 0.8
                                    };
                                    task.spawn(function()
                                        local l_Model_109 = v4852.Model;
                                        local v4854 = v4852.Info or TweenInfo.new(1, Enum.EasingStyle.Sine);
                                        local l_Start_112 = l_Model_109:FindFirstChild("Start");
                                        local l_End_110 = l_Model_109:FindFirstChild("End");
                                        local l_Stay_108 = v4852.Stay;
                                        local l_Anchor_109 = v4852.Anchor;
                                        local v4859 = v4852.EndT or 1;
                                        local l_Del_108 = v4852.Del;
                                        local l_Skip_108 = v4852.Skip;
                                        if l_Start_112 and l_End_110 then
                                            l_Model_109.PrimaryPart = l_Start_112;
                                            if not l_Skip_108 then
                                                for _, v4863 in pairs(l_Model_109:GetChildren()) do
                                                    if v4863:IsA("BasePart") then
                                                        v4863.CanCollide = false;
                                                        v4863.Anchored = true;
                                                    end;
                                                end;
                                            end;
                                            if l_Anchor_109 then
                                                l_Model_109:SetPrimaryPartCFrame(l_Anchor_109);
                                            end;
                                            if v4852.T then
                                                l_Start_112.Transparency = v4852.T;
                                            end;
                                            l_End_110.Transparency = 1;
                                            l_Model_109.Parent = workspace.Thrown;
                                            local l_Decal_109 = l_Start_112:FindFirstChildOfClass("Decal");
                                            local l_SpecialMesh_218 = l_Start_112:FindFirstChildOfClass("SpecialMesh");
                                            local l_SpecialMesh_219 = l_End_110:FindFirstChildOfClass("SpecialMesh");
                                            local v4867 = nil;
                                            do
                                                local l_v4867_0 = v4867;
                                                if l_Del_108 then
                                                    game:GetService("TweenService"):Create(l_Start_112, v4854, {
                                                        Size = l_End_110.Size, 
                                                        CFrame = l_End_110.CFrame
                                                    }):Play();
                                                    task.delay(l_Del_108, function()
                                                        l_v4867_0 = game:GetService("TweenService"):Create(l_Start_112, v4854, {
                                                            Transparency = v4859
                                                        });
                                                        l_v4867_0:Play();
                                                        if l_Decal_109 then
                                                            for _, v4870 in pairs(l_Start_112:GetChildren()) do
                                                                if v4870:IsA("Decal") then
                                                                    game:GetService("TweenService"):Create(v4870, v4854, {
                                                                        Transparency = v4859
                                                                    }):Play();
                                                                end;
                                                            end;
                                                        end;
                                                        if l_SpecialMesh_218 then
                                                            l_v4867_0 = game:GetService("TweenService"):Create(l_SpecialMesh_218, v4854, {
                                                                Scale = l_SpecialMesh_219.Scale
                                                            }):Play();
                                                        end;
                                                    end);
                                                else
                                                    if l_SpecialMesh_218 then
                                                        game:GetService("TweenService"):Create(l_SpecialMesh_218, v4854, {
                                                            Scale = l_SpecialMesh_219.Scale
                                                        }):Play();
                                                    end;
                                                    if l_Decal_109 then
                                                        for _, v4872 in pairs(l_Start_112:GetChildren()) do
                                                            if v4872:IsA("Decal") then
                                                                game:GetService("TweenService"):Create(v4872, v4854, {
                                                                    Transparency = v4859
                                                                }):Play();
                                                            end;
                                                        end;
                                                        l_v4867_0 = game:GetService("TweenService"):Create(l_Start_112, v4854, {
                                                            Size = l_End_110.Size, 
                                                            CFrame = l_End_110.CFrame
                                                        });
                                                        l_v4867_0:Play();
                                                    else
                                                        l_v4867_0 = game:GetService("TweenService"):Create(l_Start_112, v4854, {
                                                            Size = l_End_110.Size, 
                                                            Transparency = v4859, 
                                                            CFrame = l_End_110.CFrame
                                                        });
                                                        l_v4867_0:Play();
                                                    end;
                                                end;
                                                if not l_Stay_108 then
                                                    if l_Del_108 then
                                                        task.wait(l_Del_108 + 0.1);
                                                    end;
                                                    l_v4867_0.Completed:Once(function()
                                                        l_Model_109:Destroy();
                                                    end);
                                                end;
                                            end;
                                        end;
                                    end);
                                end;
                                task.wait(0.1);
                                local v4873 = v4561.Outty:Clone();
                                v4873:SetPrimaryPartCFrame((v4562.StoicBoomEntrance.CFrame * CFrame.new(0, 3, 0)) * CFrame.Angles(3.141592653589793, 0, 0));
                                v4873:ScaleTo(3);
                                local v4874 = {
                                    Model = v4873, 
                                    Info = TweenInfo.new(2, Enum.EasingStyle.Exponential), 
                                    T = 0.8
                                };
                                task.spawn(function()
                                    local l_Model_110 = v4874.Model;
                                    local v4876 = v4874.Info or TweenInfo.new(1, Enum.EasingStyle.Sine);
                                    local l_Start_113 = l_Model_110:FindFirstChild("Start");
                                    local l_End_111 = l_Model_110:FindFirstChild("End");
                                    local l_Stay_109 = v4874.Stay;
                                    local l_Anchor_110 = v4874.Anchor;
                                    local v4881 = v4874.EndT or 1;
                                    local l_Del_109 = v4874.Del;
                                    local l_Skip_109 = v4874.Skip;
                                    if l_Start_113 and l_End_111 then
                                        l_Model_110.PrimaryPart = l_Start_113;
                                        if not l_Skip_109 then
                                            for _, v4885 in pairs(l_Model_110:GetChildren()) do
                                                if v4885:IsA("BasePart") then
                                                    v4885.CanCollide = false;
                                                    v4885.Anchored = true;
                                                end;
                                            end;
                                        end;
                                        if l_Anchor_110 then
                                            l_Model_110:SetPrimaryPartCFrame(l_Anchor_110);
                                        end;
                                        if v4874.T then
                                            l_Start_113.Transparency = v4874.T;
                                        end;
                                        l_End_111.Transparency = 1;
                                        l_Model_110.Parent = workspace.Thrown;
                                        local l_Decal_110 = l_Start_113:FindFirstChildOfClass("Decal");
                                        local l_SpecialMesh_220 = l_Start_113:FindFirstChildOfClass("SpecialMesh");
                                        local l_SpecialMesh_221 = l_End_111:FindFirstChildOfClass("SpecialMesh");
                                        local v4889 = nil;
                                        do
                                            local l_v4889_0 = v4889;
                                            if l_Del_109 then
                                                game:GetService("TweenService"):Create(l_Start_113, v4876, {
                                                    Size = l_End_111.Size, 
                                                    CFrame = l_End_111.CFrame
                                                }):Play();
                                                task.delay(l_Del_109, function()
                                                    l_v4889_0 = game:GetService("TweenService"):Create(l_Start_113, v4876, {
                                                        Transparency = v4881
                                                    });
                                                    l_v4889_0:Play();
                                                    if l_Decal_110 then
                                                        for _, v4892 in pairs(l_Start_113:GetChildren()) do
                                                            if v4892:IsA("Decal") then
                                                                game:GetService("TweenService"):Create(v4892, v4876, {
                                                                    Transparency = v4881
                                                                }):Play();
                                                            end;
                                                        end;
                                                    end;
                                                    if l_SpecialMesh_220 then
                                                        l_v4889_0 = game:GetService("TweenService"):Create(l_SpecialMesh_220, v4876, {
                                                            Scale = l_SpecialMesh_221.Scale
                                                        }):Play();
                                                    end;
                                                end);
                                            else
                                                if l_SpecialMesh_220 then
                                                    game:GetService("TweenService"):Create(l_SpecialMesh_220, v4876, {
                                                        Scale = l_SpecialMesh_221.Scale
                                                    }):Play();
                                                end;
                                                if l_Decal_110 then
                                                    for _, v4894 in pairs(l_Start_113:GetChildren()) do
                                                        if v4894:IsA("Decal") then
                                                            game:GetService("TweenService"):Create(v4894, v4876, {
                                                                Transparency = v4881
                                                            }):Play();
                                                        end;
                                                    end;
                                                    l_v4889_0 = game:GetService("TweenService"):Create(l_Start_113, v4876, {
                                                        Size = l_End_111.Size, 
                                                        CFrame = l_End_111.CFrame
                                                    });
                                                    l_v4889_0:Play();
                                                else
                                                    l_v4889_0 = game:GetService("TweenService"):Create(l_Start_113, v4876, {
                                                        Size = l_End_111.Size, 
                                                        Transparency = v4881, 
                                                        CFrame = l_End_111.CFrame
                                                    });
                                                    l_v4889_0:Play();
                                                end;
                                            end;
                                            if not l_Stay_109 then
                                                if l_Del_109 then
                                                    task.wait(l_Del_109 + 0.1);
                                                end;
                                                l_v4889_0.Completed:Once(function()
                                                    l_Model_110:Destroy();
                                                end);
                                            end;
                                        end;
                                    end;
                                end);
                                task.spawn(function()
                                    while not v4562.Impact do
                                        local v4895 = v4561.WindTime:Clone();
                                        v4895:ScaleTo(v75(1, 2));
                                        local v4896 = {
                                            Model = v4895, 
                                            T = 0.9
                                        };
                                        local l_CFrame_14 = l_PrimaryPart_28.CFrame;
                                        local l_Angles_16 = CFrame.Angles;
                                        local v4899 = -15;
                                        local v4900 = 15;
                                        local l_v68_90 = v68;
                                        if not v4900 and v4899 then
                                            v4900 = v4899;
                                            v4899 = 1;
                                        end;
                                        if not v4900 and not v4899 then
                                            v4899 = 0;
                                            v4900 = 1;
                                        end;
                                        local v4902 = math.rad((l_v68_90:NextNumber(v4899, v4900)));
                                        v4900 = 0;
                                        l_v68_90 = 360;
                                        local l_v68_91 = v68;
                                        if not l_v68_90 and v4900 then
                                            l_v68_90 = v4900;
                                            v4900 = 1;
                                        end;
                                        if not l_v68_90 and not v4900 then
                                            v4900 = 0;
                                            l_v68_90 = 1;
                                        end;
                                        local v4904 = math.rad((l_v68_91:NextNumber(v4900, l_v68_90)));
                                        l_v68_90 = -15;
                                        l_v68_91 = 15;
                                        local l_v68_92 = v68;
                                        if not l_v68_91 and l_v68_90 then
                                            l_v68_91 = l_v68_90;
                                            l_v68_90 = 1;
                                        end;
                                        if not l_v68_91 and not l_v68_90 then
                                            l_v68_90 = 0;
                                            l_v68_91 = 1;
                                        end;
                                        v4896.Anchor = l_CFrame_14 * l_Angles_16(v4902, v4904, (math.rad((l_v68_92:NextNumber(l_v68_90, l_v68_91)))));
                                        local l_new_30 = TweenInfo.new;
                                        l_Angles_16 = 0.2;
                                        v4902 = 0.3;
                                        v4904 = v68;
                                        if not v4902 and l_Angles_16 then
                                            v4902 = l_Angles_16;
                                            l_Angles_16 = 1;
                                        end;
                                        if not v4902 and not l_Angles_16 then
                                            l_Angles_16 = 0;
                                            v4902 = 1;
                                        end;
                                        v4896.Info = l_new_30(v4904:NextNumber(l_Angles_16, v4902), Enum.EasingStyle.Sine);
                                        local l_v4896_0 = v4896 --[[ copy: 1 -> 12 ]];
                                        task.spawn(function()
                                            local l_Model_111 = l_v4896_0.Model;
                                            local v4909 = l_v4896_0.Info or TweenInfo.new(1, Enum.EasingStyle.Sine);
                                            local l_Start_114 = l_Model_111:FindFirstChild("Start");
                                            local l_End_112 = l_Model_111:FindFirstChild("End");
                                            local l_Stay_110 = l_v4896_0.Stay;
                                            local l_Anchor_111 = l_v4896_0.Anchor;
                                            local v4914 = l_v4896_0.EndT or 1;
                                            local l_Del_110 = l_v4896_0.Del;
                                            local l_Skip_110 = l_v4896_0.Skip;
                                            if l_Start_114 and l_End_112 then
                                                l_Model_111.PrimaryPart = l_Start_114;
                                                if not l_Skip_110 then
                                                    for _, v4918 in pairs(l_Model_111:GetChildren()) do
                                                        if v4918:IsA("BasePart") then
                                                            v4918.CanCollide = false;
                                                            v4918.Anchored = true;
                                                        end;
                                                    end;
                                                end;
                                                if l_Anchor_111 then
                                                    l_Model_111:SetPrimaryPartCFrame(l_Anchor_111);
                                                end;
                                                if l_v4896_0.T then
                                                    l_Start_114.Transparency = l_v4896_0.T;
                                                end;
                                                l_End_112.Transparency = 1;
                                                l_Model_111.Parent = workspace.Thrown;
                                                local l_Decal_111 = l_Start_114:FindFirstChildOfClass("Decal");
                                                local l_SpecialMesh_222 = l_Start_114:FindFirstChildOfClass("SpecialMesh");
                                                local l_SpecialMesh_223 = l_End_112:FindFirstChildOfClass("SpecialMesh");
                                                local v4922 = nil;
                                                do
                                                    local l_v4922_0 = v4922;
                                                    if l_Del_110 then
                                                        game:GetService("TweenService"):Create(l_Start_114, v4909, {
                                                            Size = l_End_112.Size, 
                                                            CFrame = l_End_112.CFrame
                                                        }):Play();
                                                        task.delay(l_Del_110, function()
                                                            l_v4922_0 = game:GetService("TweenService"):Create(l_Start_114, v4909, {
                                                                Transparency = v4914
                                                            });
                                                            l_v4922_0:Play();
                                                            if l_Decal_111 then
                                                                for _, v4925 in pairs(l_Start_114:GetChildren()) do
                                                                    if v4925:IsA("Decal") then
                                                                        game:GetService("TweenService"):Create(v4925, v4909, {
                                                                            Transparency = v4914
                                                                        }):Play();
                                                                    end;
                                                                end;
                                                            end;
                                                            if l_SpecialMesh_222 then
                                                                l_v4922_0 = game:GetService("TweenService"):Create(l_SpecialMesh_222, v4909, {
                                                                    Scale = l_SpecialMesh_223.Scale
                                                                }):Play();
                                                            end;
                                                        end);
                                                    else
                                                        if l_SpecialMesh_222 then
                                                            game:GetService("TweenService"):Create(l_SpecialMesh_222, v4909, {
                                                                Scale = l_SpecialMesh_223.Scale
                                                            }):Play();
                                                        end;
                                                        if l_Decal_111 then
                                                            for _, v4927 in pairs(l_Start_114:GetChildren()) do
                                                                if v4927:IsA("Decal") then
                                                                    game:GetService("TweenService"):Create(v4927, v4909, {
                                                                        Transparency = v4914
                                                                    }):Play();
                                                                end;
                                                            end;
                                                            l_v4922_0 = game:GetService("TweenService"):Create(l_Start_114, v4909, {
                                                                Size = l_End_112.Size, 
                                                                CFrame = l_End_112.CFrame
                                                            });
                                                            l_v4922_0:Play();
                                                        else
                                                            l_v4922_0 = game:GetService("TweenService"):Create(l_Start_114, v4909, {
                                                                Size = l_End_112.Size, 
                                                                Transparency = v4914, 
                                                                CFrame = l_End_112.CFrame
                                                            });
                                                            l_v4922_0:Play();
                                                        end;
                                                    end;
                                                    if not l_Stay_110 then
                                                        if l_Del_110 then
                                                            task.wait(l_Del_110 + 0.1);
                                                        end;
                                                        l_v4922_0.Completed:Once(function()
                                                            l_Model_111:Destroy();
                                                        end);
                                                    end;
                                                end;
                                            end;
                                        end);
                                        v4896 = v4561.InWind:Clone();
                                        v4904, v4899, v4900 = l_char_19.HumanoidRootPart.CFrame:ToOrientation();
                                        v4896:SetPrimaryPartCFrame((CFrame.new(l_char_19.Torso.Position) * CFrame.Angles(0, v4899, 0)) * CFrame.Angles(math.rad((math.random(-15, 15))), math.rad((math.random(0, 360))), (math.rad((math.random(-15, 15))))));
                                        v4896:ScaleTo(v75(0.6, 1));
                                        l_new_30 = {
                                            Model = v4896
                                        };
                                        l_CFrame_14 = TweenInfo.new;
                                        v4902 = 0.7;
                                        v4904 = 1.5;
                                        v4899 = v68;
                                        if not v4904 and v4902 then
                                            v4904 = v4902;
                                            v4902 = 1;
                                        end;
                                        if not v4904 and not v4902 then
                                            v4902 = 0;
                                            v4904 = 1;
                                        end;
                                        l_new_30.Info = l_CFrame_14(v4899:NextNumber(v4902, v4904), Enum.EasingStyle.Exponential);
                                        l_new_30.T = 0.9;
                                        task.spawn(function()
                                            local l_Model_112 = l_new_30.Model;
                                            local v4929 = l_new_30.Info or TweenInfo.new(1, Enum.EasingStyle.Sine);
                                            local l_Start_115 = l_Model_112:FindFirstChild("Start");
                                            local l_End_113 = l_Model_112:FindFirstChild("End");
                                            local l_Stay_111 = l_new_30.Stay;
                                            local l_Anchor_112 = l_new_30.Anchor;
                                            local v4934 = l_new_30.EndT or 1;
                                            local l_Del_111 = l_new_30.Del;
                                            local l_Skip_111 = l_new_30.Skip;
                                            if l_Start_115 and l_End_113 then
                                                l_Model_112.PrimaryPart = l_Start_115;
                                                if not l_Skip_111 then
                                                    for _, v4938 in pairs(l_Model_112:GetChildren()) do
                                                        if v4938:IsA("BasePart") then
                                                            v4938.CanCollide = false;
                                                            v4938.Anchored = true;
                                                        end;
                                                    end;
                                                end;
                                                if l_Anchor_112 then
                                                    l_Model_112:SetPrimaryPartCFrame(l_Anchor_112);
                                                end;
                                                if l_new_30.T then
                                                    l_Start_115.Transparency = l_new_30.T;
                                                end;
                                                l_End_113.Transparency = 1;
                                                l_Model_112.Parent = workspace.Thrown;
                                                local l_Decal_112 = l_Start_115:FindFirstChildOfClass("Decal");
                                                local l_SpecialMesh_224 = l_Start_115:FindFirstChildOfClass("SpecialMesh");
                                                local l_SpecialMesh_225 = l_End_113:FindFirstChildOfClass("SpecialMesh");
                                                local v4942 = nil;
                                                do
                                                    local l_v4942_0 = v4942;
                                                    if l_Del_111 then
                                                        game:GetService("TweenService"):Create(l_Start_115, v4929, {
                                                            Size = l_End_113.Size, 
                                                            CFrame = l_End_113.CFrame
                                                        }):Play();
                                                        task.delay(l_Del_111, function()
                                                            l_v4942_0 = game:GetService("TweenService"):Create(l_Start_115, v4929, {
                                                                Transparency = v4934
                                                            });
                                                            l_v4942_0:Play();
                                                            if l_Decal_112 then
                                                                for _, v4945 in pairs(l_Start_115:GetChildren()) do
                                                                    if v4945:IsA("Decal") then
                                                                        game:GetService("TweenService"):Create(v4945, v4929, {
                                                                            Transparency = v4934
                                                                        }):Play();
                                                                    end;
                                                                end;
                                                            end;
                                                            if l_SpecialMesh_224 then
                                                                l_v4942_0 = game:GetService("TweenService"):Create(l_SpecialMesh_224, v4929, {
                                                                    Scale = l_SpecialMesh_225.Scale
                                                                }):Play();
                                                            end;
                                                        end);
                                                    else
                                                        if l_SpecialMesh_224 then
                                                            game:GetService("TweenService"):Create(l_SpecialMesh_224, v4929, {
                                                                Scale = l_SpecialMesh_225.Scale
                                                            }):Play();
                                                        end;
                                                        if l_Decal_112 then
                                                            for _, v4947 in pairs(l_Start_115:GetChildren()) do
                                                                if v4947:IsA("Decal") then
                                                                    game:GetService("TweenService"):Create(v4947, v4929, {
                                                                        Transparency = v4934
                                                                    }):Play();
                                                                end;
                                                            end;
                                                            l_v4942_0 = game:GetService("TweenService"):Create(l_Start_115, v4929, {
                                                                Size = l_End_113.Size, 
                                                                CFrame = l_End_113.CFrame
                                                            });
                                                            l_v4942_0:Play();
                                                        else
                                                            l_v4942_0 = game:GetService("TweenService"):Create(l_Start_115, v4929, {
                                                                Size = l_End_113.Size, 
                                                                Transparency = v4934, 
                                                                CFrame = l_End_113.CFrame
                                                            });
                                                            l_v4942_0:Play();
                                                        end;
                                                    end;
                                                    if not l_Stay_111 then
                                                        if l_Del_111 then
                                                            task.wait(l_Del_111 + 0.1);
                                                        end;
                                                        l_v4942_0.Completed:Once(function()
                                                            l_Model_112:Destroy();
                                                        end);
                                                    end;
                                                end;
                                            end;
                                        end);
                                        task.wait(0.2);
                                    end;
                                end);
                            end;
                        end
                    };
                    (function()
                        local v4949 = false;
                        local v4950 = 0;
                        local v4951 = nil;
                        local l_Frames_0 = game.ReplicatedStorage.Resources.StoicBomb.StoicBomb2.Frames;
                        local _ = workspace.CurrentCamera;
                        local _ = tick();
                        local _ = l_char_19.PrimaryPart;
                        local _ = game:GetService("TweenService");
                        if l_Frames_0.Parent:FindFirstChild("FOV") then
                            v4949 = true;
                        end;
                        v4951 = game:GetService("RunService").Heartbeat:Connect(function(v4957)
                            v4950 = v4950 + v4957 * 60;
                            local l_l_Frames_0_FirstChild_0 = l_Frames_0:FindFirstChild((tonumber((math.ceil(v4950)))));
                            if l_l_Frames_0_FirstChild_0 then
                                local _ = tonumber(l_l_Frames_0_FirstChild_0.Name);
                                for v4960, v4961 in pairs(v4948) do
                                    if v4960 <= v4950 and not v4571[v4960] then
                                        v4571[v4960] = true;
                                        v4961();
                                    end;
                                end;
                                return ;
                            else
                                v4951:Disconnect();
                                return ;
                            end;
                        end);
                    end)();
                end;
            end;
        end;
