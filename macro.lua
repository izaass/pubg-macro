--------------------------------------------------------------------------
-- tất cả chế độ bấm caplock | all mod press caplock
-- chuyển chế độ bấm scroll lock | scroll lock to switch mode
-- numlock sáng đèn là đã có macro | numlock shine it will have mode
--------------------------------------------------------------------------

---- key bind for g502----
local beryl_key = 7 ---beryl=groza
local ump9_key = 10  -- smg gun
local akm_key = 8 ---akm=K2
local m16a4_key = 9 --m16=mutal -- auto mode not tap
local m416_key = 4 ---m416=scarL=G36C=QBZ=AUG=P90=ACE
local mg3_key = 11 ---mg3=m249
local set_off_key = 6 -- disable all macro

----using with Logitech keyboard ----
-- sử dụng với bàn phím logitech: KHÔNG DÙNG.

local ump9_gkey = nil
local akm_gkey = nil
local m16a4_gkey = nil
local m416_gkey = nil
local scarl_gkey = nil
local uzi_gkey = nil
local qbz_gkey = nil
local set_off_gkey = nil

---- control_key ----

local control_key = "lctrl"

---- can use "lalt", "ralt", "alt" "lshift", "rshift", "shift" "lctrl", "rctrl", "ctrl"

local ignore_key = "lalt" --- ignore key
local hold_breath_key = "lshift"

--- fastloot setting---
--- Press controlkey and and ignore_key and click Left mouse button ---
--- "lctrl" + "lalt" + mousebutton

local control_key = "lctrl"
local fastloot = false ---if you don't need it, you can close it by true to false.
local move = 40 ----1920*1080

---- only can use "numlock", "capslock", "scrolllock"

local full_mode_key = "capslock"
local mode_switch_key = "scrolllock"
local lighton_key = "numlock"

--- Sensitivity in Game

local vertical_sensitivity = 1.0 --- default is 0.7
local target_sensitivity = 50 --- default is 50.0
local scope_sensitivity = 50 --- default is 50.0
local scope4x_sensitivity = 50 --- default is 50.0

-- close these by true to false

local hold_breath_mode = true
local full_mode = true

---- Obfs setting
-- local obfs_mode = false
local obfs_mode = false
local interval_ratio = 0.75
local random_seed = 1

local auto_reloading = false

-- if auto_mode = true ,the guns need to switch automatic shooting mode,except m16 single.

local auto_mode = true
--------------------------------------------------------------------------
---------------- Recoil Table ------------------------------
--------------------------------------------------------------------------
--- recoil times
--- modify the value of all_recoil_Times or recoil_table{times}
local all_recoil_times = 1

local recoil_table = {}
recoil_table["m16a4"] = {
    basic = {30, 31, 32, 33, 34, 35, 36, 37, 38, 39},
    basictimes = 1,
    full = {30, 31, 32, 33, 34, 35, 36, 37, 38, 39},
    fulltimes = 1,
    quadruple = {
        27,28,29,30,36,39,40,40,41,40,40,41,42,41,42,43,44,44,45,45,44,43,43,43,43,43,43,43,45,45
    },
    quadrupletimes = 5.2,
    fullof4x = {
        27,28,29,30,36,39,40,40,41,40,40,41,42,41,42,43,44,44,45,45,44,43,43,43,43,43,43,43,45,45
    },
    fullof4xtimes = 6,
    speed = 90,
    maxbullets = 40,
    holdbreathtimes = 3.2,
    fullholdbreathtimes = 1.25
}

recoil_table["beryl"] = {
    basic = {50, 45, 50, 52, 56, 58, 60, 62, 64, 64, 66, 66, 66, 66, 68, 68, 68, 69, 69},
    basictimes = 1 * 0.8,
    full = {50, 45, 50, 52, 56, 58, 60, 62, 64, 64, 66, 66, 66, 66, 68, 68, 68, 69, 69},
    fulltimes = 1 * 0.8,
    quadruple = {50, 45, 50, 52, 56, 58, 60, 62, 64, 65, 67, 67, 67, 67, 69, 69, 69, 70, 70},
    quadrupletimes = 2,
    fullof4x = {50, 45, 50, 52, 56, 58, 60, 62, 64, 65, 67, 67, 67, 67, 69, 69, 69, 70, 70},
    fullof4xtimes = 2,
    speed = 65,
    maxbullets = 40,
    holdbreathtimes = 0,
    fullholdbreathtimes = 0
}

recoil_table["akm"] = {
    basic = {60.5, 45, 52, 54, 60, 62, 64, 66, 68, 64, 64, 66, 66, 66, 66, 67, 69, 69, 69},
    basictimes = 1 * 0.7,
    full = {60.5, 45, 52, 54, 60, 62, 64, 66, 68, 64, 64, 66, 66, 66, 66, 67, 69, 69, 69},
    fulltimes = 1 * 0.7,
    quadruple = {60.5, 45, 52, 54, 60, 62, 64, 66, 68, 64, 64, 66, 66, 66, 66, 67, 69, 69, 69},
    quadrupletimes = 1.8,
    fullof4x = {60.5, 45, 52, 54, 60, 62, 64, 66, 68, 64, 64, 66, 66, 66, 66, 67, 69, 69, 69},
    fullof4xtimes = 1.8,
    speed = 100,
    maxbullets = 40,
    holdbreathtimes = 0,
    fullholdbreathtimes = 0
}

recoil_table["m416"] = {
    basic = {50, 49, 44, 45.5, 51, 53.1, 54.4, 55, 56.5, 56.6, 57.5, 58.5, 58, 59, 59, 59, 59, 59},
    basictimes = 1 * 0.65,
    full = {50, 49, 44, 45.5, 51, 53.1, 54.4, 55, 56.5, 56.6, 57.5, 58.5, 58, 59, 59, 59, 59, 59},
    fulltimes = 1 * 0.65,
    quadruple = {50, 49, 44, 45.5, 51, 53.1, 54.4, 55, 56.5, 56.6, 57.5, 58.5, 58, 59, 59, 59, 59, 59},
    quadrupletimes = 1.55,
    fullof4x = {50, 49, 44, 45.5, 51, 53.1, 54.4, 55, 56.5, 56.6, 57.5, 58.5, 58, 59, 59, 59, 59, 59},
    fullof4xtimes = 1.55,
    speed = 90,
    maxbullets = 40,
    holdbreathtimes = 0,
    fullholdbreathtimes = 0
}

recoil_table["ump9"] = {
    basic = {33.5, 19.2, 30.5, 35.7, 39.3, 39.0, 38.7, 40.2, 41.8, 44.0, 43.8, 43.8, 46.5, 44.5, 47.5},
    basictimes = 0.7,
    full = {33.5, 19.2, 30.5, 35.7, 39.3, 39.0, 38.7, 40.2, 41.8, 44.0, 43.8, 43.8, 46.5, 44.5, 47.5},
    fulltimes = 0.7,
    quadruple = {33.5, 19.2, 30.5, 35.7, 39.3, 39.0, 38.7, 40.2, 41.8, 44.0, 43.8, 43.8, 46.5, 44.5, 47.5},
    quadrupletimes = 4 * 1 * 0.97,
    fullof4x = {33.5, 19.2, 30.5, 35.7, 39.3, 39.0, 38.7, 40.2, 41.8, 44.0, 43.8, 43.8, 46.5, 44.5, 47.5},
    fullof4xtimes = 4 * 0.75,
    speed = 90,
    maxbullets = 40,
    holdbreathtimes = 0,
    fullholdbreathtimes = 0
}

recoil_table["mg3"] = {
    basic = {60.5, 30.2, 30.5, 35.7, 39.3, 39.0, 38.7, 40.2, 41.8, 41.8, 41.8, 41.8, 40, 40, 40},
    basictimes = 0.4,
    full = {60.5, 30.2, 30.5, 35.7, 39.3, 39.0, 38.7, 40.2, 41.8, 41.8, 41.8, 41.8, 40, 40, 40},
    fulltimes = 0.4,
    quadruple = {33.5, 19.2, 30.5, 35.7, 39.3, 39.0, 38.7, 40.2, 41.8, 44.0, 43.8, 43.8, 46.5, 44.5, 47.5},
    quadrupletimes = 4 * 1 * 0.97,
    fullof4x = {33.5, 19.2, 30.5, 35.7, 39.3, 39.0, 38.7, 40.2, 41.8, 44.0, 43.8, 43.8, 46.5, 44.5, 47.5},
    fullof4xtimes = 4 * 0.75,
    speed = 90,
    maxbullets = 40,
    holdbreathtimes = 0,
    fullholdbreathtimes = 0
}

recoil_table["none"] = {
     basic={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
     basictimes = 1,
     full={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
     fulltimes = 1,
     holdbreathtimes = 1,
     quadruple={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
     quadrupletimes = 1,	
     fullof4x={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
     fullof4xtimes = 1,
     speed = 60,
     maxbullets = 40,
     holdbreathtimes = 0,
     fullholdbreathtimes = 0,
     }
--------------------------------------------------------------------------
---------------- Function ------------------------------
--------------------------------------------------------------------------

function convert_sens(unconvertedSens)
    return 0.002 * math.pow(10, unconvertedSens / 50)
end

function calc_sens_scale(sensitivity)
    return convert_sens(sensitivity) / convert_sens(50)
end

local target_scale = calc_sens_scale(target_sensitivity)
local scope_scale = calc_sens_scale(scope_sensitivity)
local scope4x_scale = calc_sens_scale(scope4x_sensitivity)

function recoil_mode()
    if not IsKeyLockOn(mode_switch_key) then
        if IsKeyLockOn(full_mode_key) and full_mode then
            return "full"
        else
            return "basic"
        end
    end

    if IsKeyLockOn(mode_switch_key) then
        if IsKeyLockOn(full_mode_key) and full_mode then
            return "fullof4x"
        else
            return "quadruple"
        end
    end
end

function single_value(value)
    return 10 * math.floor((value / 10) + 0.9)
end

function recoil_value(_weapon, _duration)
    local _mode = recoil_mode()
    local step = (math.floor(_duration / recoil_table[_weapon]["speed"])) + 1
    if step > #recoil_table[_weapon][_mode] then
        step = #recoil_table[_weapon][_mode]
    end

    local weapon_recoil = recoil_table[_weapon][_mode][step]
     OutputLogMessage("weapon_recoil = %s\n", weapon_recoil)

    local weapon_speed = recoil_table[_weapon]["speed"]
    local weapon_clickspeed = recoil_table[_weapon]["clickspeed"]
    local weapon_maxbullets = recoil_table[_weapon]["maxbullets"]
    local weapon_basictimes = recoil_table[_weapon]["basictimes"]
    local weapon_fulltimes = recoil_table[_weapon]["fulltimes"]
    local weapon_quadrupletimes = recoil_table[_weapon]["quadrupletimes"]
    local weapon_fullof4xtimes = recoil_table[_weapon]["fullof4xtimes"]
    local weapon_holdbreathtimes = recoil_table[_weapon]["holdbreathtimes"]
    local weapon_fullofholdbreathtimes = recoil_table[_weapon]["fullholdbreathtimes"]
    local weapon_intervals = weapon_speed
    local weapon_clicktime = weapon_clickspeed
    local weapon_bullets = weapon_maxbullets

    if obfs_mode then
        local coefficient = interval_ratio * (1 + random_seed * math.random())
        weapon_intervals = math.floor(coefficient * weapon_speed)
    end
    OutputLogMessage("weapon_intervals = %s\n", weapon_intervals)

    recoil_recovery = weapon_recoil
    recoil_times = all_recoil_times * 0.7 / vertical_sensitivity

    if recoil_mode() == "basic" and not IsModifierPressed(hold_breath_key) then
        recoil_recovery = recoil_recovery * recoil_times * weapon_basictimes
    end
    if recoil_mode() == "basic" and hold_breath_mode and IsModifierPressed(hold_breath_key) then
        recoil_recovery = recoil_recovery * weapon_holdbreathtimes * recoil_times * weapon_basictimes
    end

    if recoil_mode() == "full" and not IsModifierPressed(hold_breath_key) then
        recoil_recovery = recoil_recovery * recoil_times * weapon_fulltimes
    end
    if recoil_mode() == "full" and hold_breath_mode and IsModifierPressed(hold_breath_key) then
        recoil_recovery = recoil_recovery * weapon_fullofholdbreathtimes * recoil_times * weapon_fulltimes
    end

    if recoil_mode() == "quadruple" then
        recoil_recovery = recoil_recovery * recoil_times * weapon_quadrupletimes
    end

    if recoil_mode() == "fullof4x" then
        recoil_recovery = recoil_recovery * recoil_times * weapon_fullof4xtimes
    end

    -- issues/3
    if IsMouseButtonPressed(2) then
        recoil_recovery = recoil_recovery / target_scale
    elseif recoil_mode() == "basic" then
        recoil_recovery = recoil_recovery / scope_scale
    elseif recoil_mode() == "full" then
        recoil_recovery = recoil_recovery / scope_scale
    elseif recoil_mode() == "quadruple" then
        recoil_recovery = recoil_recovery / scope4x_scale
    elseif recoil_mode() == "fullof4x" then
        recoil_recovery = recoil_recovery / scope4x_scale
    end

    return weapon_intervals, recoil_recovery, weapon_clicktime, weapon_bullets
end

--------------------------------------------------------------------------
---------------- OnEvent ------------------------------
--------------------------------------------------------------------------


function ghi_log(weapon_key)
    local weapons = {
        [beryl_key] = "Beryl",
        [ump9_key] = "UMP9",
        [akm_key] = "AKM",
        [m16a4_key] = "M16A4",
        [m416_key] = "M416",
        [mg3_key] = "MG3",
        [set_off_key] = "OFF"
    }

    local weaponName = weapons[weapon_key] or "Unknown"

    OutputLogMessage("-----------------------------------------------------------------------------------------------------\n")
    OutputLogMessage(" Current Weapon: "..current_weapon.." | Recoil Mode: "..recoil_mode().."\n")
    OutputLogMessage("=====> [" .. weaponName .. "] MACRO\n")
    OutputLogMessage("-----------------------------------------------------------------------------------------------------\n\n")
end
--function thong bao

function OnEvent(event, arg)
    OutputLogMessage("event = %s, arg = %d\n", event, arg ,current_weapon)
    if (event == "PROFILE_ACTIVATED") then
        EnablePrimaryMouseButtonEvents(true)
        Fire = false
        current_weapon = "none"
        shoot_duration = 0.0
        if IsKeyLockOn(lighton_key) then
            PressAndReleaseKey(lighton_key)
        elseif IsKeyLockOn(full_mode_key) then
            PressAndReleaseKey(full_mode_key)
        elseif IsKeyLockOn(mode_switch_key) then
            PressAndReleaseKey(mode_switch_key)
        end
    elseif event == "PROFILE_DEACTIVATED" then
        OutputLogMessage("Profile deactivated.\n")
        ReleaseMouseButton(1)
    end

    if (event == "MOUSE_BUTTON_PRESSED" and arg == set_off_key) or (event == "G_PRESSED" and arg == set_off_gkey) then
        current_weapon = "none"
        ghi_log(set_off_gkey)
        OutputLogMessage("=====> MACRO \t< OFF >\n")
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == akm_key) or (event == "G_PRESSED" and arg == akm_gkey) then
        current_weapon = "akm"
        ghi_log(akm_gkey)
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == m16a4_key) or (event == "G_PRESSED" and arg == m16a4_gkey) then
        current_weapon = "m16a4"
        ghi_log(m16a4_gkey)
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == m416_key) or (event == "G_PRESSED" and arg == m416_gkey) then
        current_weapon = "m416"
        ghi_log(m416_gkey)
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == ump9_key) or (event == "G_PRESSED" and arg == ump9_gkey) then
        current_weapon = "ump9"
        ghi_log(ump9_gkey)
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == uzi_key) or (event == "G_PRESSED" and arg == uzi_gkey) then
        current_weapon = "uzi"
        ghi_log(uzi_gkey)
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == scarl_key) or (event == "G_PRESSED" and arg == scarl_gkey) then
        current_weapon = "scarl"
        ghi_log(scarl_gkey)
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == qbz_key) or (event == "G_PRESSED" and arg == qbz_gkey) then
        current_weapon = "qbz"
        ghi_log(qbz_gkey)
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == beryl_key) or (event == "G_PRESSED" and arg == beryl_gkey) then
        current_weapon = "beryl"
        ghi_log(beryl_gkey)
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == mg3_key) or (event == "G_PRESSED" and arg == mg3_gkey) then
        current_weapon = "mg3"
        ghi_log(mg3_gkey)
    elseif (event == "M_RELEASED" and arg == 3 and Fire) then
        local intervals, recovery, clicktime, bullets = recoil_value(current_weapon, shoot_duration)
        if shoot_duration % (single_value(intervals) / 2) == 0 then
            PressAndReleaseMouseButton(1)
        end
        MoveMouseRelative(0, recovery / 10)
        Sleep(single_value(intervals) / 10)
        shoot_duration = shoot_duration + (single_value(intervals) / 10)
        if auto_reloading then
            if shoot_duration > (single_value(intervals) * bullets) + 100 then
                ReleaseMouseButton(1)
                PressAndReleaseKey("r")
                Sleep(200)
                Fire = false
            end
        end
        if not Fire then
            ReleaseMouseButton(1)
        elseif Fire then
            SetMKeyState(3)
        end
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == 1) then
        -- button 1 : Shoot
        if ((current_weapon == "none") or IsModifierPressed(ignore_key)) then
            PressMouseButton(1)
            repeat
                Sleep(30)
            until not IsMouseButtonPressed(1)
        elseif (current_weapon == "m16a4") then
            PressMouseButton(1)
            ReleaseMouseButton(1)
            Fire = true
            SetMKeyState(3)
        else
            if auto_mode then
                repeat
                    local intervals, recovery, clicktime, bullets = recoil_value(current_weapon, shoot_duration)
                    MoveMouseRelative(0, recovery / 10)
                    Sleep(intervals / 10)
                    shoot_duration = shoot_duration + (intervals / 10)
                    if auto_reloading then
                        if shoot_duration > (intervals * bullets) + 100 then
                            ReleaseMouseButton(1)
                            PressAndReleaseKey("r")
                            Sleep(200)
                        end
                    end
                until not IsMouseButtonPressed(1)
            else
                Fire = true
                SetMKeyState(3)
            end
        end
    elseif (event == "MOUSE_BUTTON_RELEASED" and arg == 1) then
        Fire = false
        shoot_duration = 0.0
    end

    while (event == "MOUSE_BUTTON_PRESSED" and arg == 1 and IsModifierPressed(control_key) and
        IsModifierPressed(ignore_key) and
        fastloot) do
        ReleaseMouseButton(1)
        PressMouseButton(1)
        for i = 0, 14 do
            MoveMouseRelative(move, 0)
            Sleep(2)
        end
        ReleaseMouseButton(1)
        for i = 0, 14 do
            MoveMouseRelative(-move, 0)
            Sleep(2)
        end
        Sleep(10)
    end
    if (current_weapon == "none") then
        if IsKeyLockOn(lighton_key) then
            PressAndReleaseKey(lighton_key)
        end
    else
        if not IsKeyLockOn(lighton_key) then
            PressAndReleaseKey(lighton_key)
        end
    end
end
