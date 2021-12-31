if not CombatTimer then return end

--
-- Some things do not cause the exit combat timer to reset, even though
-- the generic code thinks it does.  This is primarily caused by SPELL_AURA_APPLIED.
--
-- For now, just have a whitelist of SpellIDs that I will allow to occur and not
-- reset the timer.
--

CombatTimer.Quirks = {
	[6774] = true,	-- Slice and Dice (R2)
	[26669] = true, -- Evasion (R2)
	[31224] = true, -- Cloak of Shadows
	[11305] = true, -- Sprint (R3)
	[36554] = true, -- Shadowstep
	[14185] = true, -- Preparation
	[31230] = true, -- Cheat Death
	[13877] = true, -- Blade Flurry
	[13750] = true, -- Adrenaline Rush
	[14183] = true, -- Premeditation
	[14177] = true, -- Cold Blood
	[7744] = true, -- Will of the forsaken
	[20600] = true, -- Perception
	[20594] = true, -- Stoneform
	[20554] = true, -- Berserking
	[20572] = true, -- Blood Fury
	[31047] = true, -- Nightseye panther trinket
	[43716] = true, -- Berserker's call trinket
	[46784] = true, -- Shadowsong panther trinket
	[35166] = true, -- Bloodlust brooch trinket
	[51955] = true, -- Direbrew trinket
	[28093] = true, -- Lightning Speed
	[768] = true, -- Cat Form
	[783] = true, -- Travel Form
	[9634] = true, -- Dire Bear Form
	[5229] = true, -- Enrage
	[33357] = true, -- Dash
	[26999] = true, -- Frenzied Regen
	[9846] = true, -- Tiger's Fury
	[22812] = true, -- Barkskin
	[27045] = true, -- Aspect of the Wild
	[27044] = true, -- Aspect of the Hawk
	[34074] = true, -- Aspect of the Viper
	[13159] = true, -- Aspect of the Pack
	[13161] = true, -- Aspect of the Beast
	[5118] = true, -- Aspect of the Cheetah
	[13163] = true, -- Aspect of the Monkey
	[1002] = true, -- Eyes of the Beast
	[6197] = true, -- Eagle Eye
	[2641] = true, -- Dismiss Pet
	[883] = true, -- Call Pet
	[27046] = true, -- Mend Pet
	[34477] = true, -- Misdirection
	[5384] = true, -- Feign Death
	[13809] = true, -- Frost Trap
	[34600] = true, -- Snake Trap
	[27023] = true, -- Immolation trap
	[27025] = true, -- Explosive trap
	[14311] = true, -- Freezing trap
	[19880] = true, -- Track elementals
	[19885] = true, -- Track hidden
	[19884] = true, -- Track undead
	[19883] = true, -- Track humanoids
	[27125] = true, -- Mage Armor
	[66] = true, -- Invisibility
	[30482] = true, -- Molten Armor
	[27128] = true, -- Fire Ward
	[32796] = true, -- Frost Ward
	[27124] = true, -- Ice Armor
	[45438] = true, -- Ice Block
	[12043] = true, -- Presence of Mind
	[12042] = true, -- Arcane Power
	[11129] = true, -- Combustion
	[12472] = true, -- Icy Veins
	[31687] = true, -- Summon Water Ele
	[11958] = true, -- Cold Snap
	[20218] = true, -- Sanctity aura
	[14751] = true, -- Inner Focus
	[15473] = true, -- Shadowform
	[16188] = true, -- Nature's Swiftness
	[17116] = true, -- Nature's Swiftness
	[18788] = true, -- Demonic Sacrifice
	[19028] = true, -- Soul Link
	[18288] = true, -- Amplify curse
	[18095] = true, -- Nightfall
	[30302] = true, -- Nether protection
	[34939] = true, -- Backlash
	[12292] = true, -- Death Wish
	[30033] = true, -- Rampage
	[29838] = true, -- Second Wind
	[12975] = true, -- Last stand
	[13048] = true, -- Enrage
	[23920] = true, -- Spell reflect
	[2458] = true, -- Berseker stance
	[71] = true, -- Defensive stance
	[2457] = true, -- Battle stance
	[18499] = true, -- Berserker rage
	[2687] = true, -- Bloodrage
	[712] = true, -- Summon Succubus
	[691] = true, -- Summon Felhunter
	[697] = true, -- Summon Voidwalker
	[27260] = true, -- Demon armor
	[28189] = true, -- Fel Armor
	[28610] = true, -- Shadow Ward
	[2645] = true, -- Ghost Wolf
	[36936] = true, -- Totemic Recall
	[25485] = true, -- Rockbiter wep
	[25505] = true, -- WF wep
	[25500] = true, -- Frostbrand wep
	[25489] = true, -- Flametongue wep
	[31884] = true, -- Avenging Wrath
	[27153] = true, -- Fire resist aura
	[27149] = true, -- Devotion aura
	[32223] = true, -- Crusader aura
	[27152] = true, -- Frost resist aura
	[27150] = true, -- Retribution aura
	[27151] = true, -- Shadow resist aura
	[19746] = true, -- Concentration aura
	[14325] = true, -- Hunter's Mark
	[38067] = true, -- Guard's Mark
	[1543] = true -- Flare
};

