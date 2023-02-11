///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", localize "STR_NAPA_NAME"] call _fnc_saveToTemplate;

switch (flagMode) do {
        case 1: {
			["flag", "Flag_SERBR_F"] call _fnc_saveToTemplate;
			flagX setFlagTexture "\SerbianFrontAssets\marker_serb_co.paa";
			["flagTexture", "\SerbianFrontAssets\marker_serb_co.paa"] call _fnc_saveToTemplate;

			MyInsignia = "shvr_serbr";
			publicVariable "MyInsignia";
			["flagMarkerType", "flag_SERBR"] call _fnc_saveToTemplate;
		};
		case 2: {
			["flag", "Flag_SERB_F"] call _fnc_saveToTemplate;
			flagX setFlagTexture "\SerbianFrontAssets\marker_serb_co.paa";
			["flagTexture", "\SerbianFrontAssets\marker_serb_co.paa"] call _fnc_saveToTemplate;

			MyInsignia = "shvr_serb";
			publicVariable "MyInsignia";
			["flagMarkerType", "flag_SERB"] call _fnc_saveToTemplate;
		};
};

MENU_COMMS_1 =
[
	[localize "STR_FLAGMODE_SELECT", false],
	[localize "STR_FlagMode_SERBR", [2], "", -5, [["expression",
			"flagX forceFlagTexture '\SerbianFrontAssets\marker_serbr_co.paa';
			A3A_faction_reb setVariable ['flag','Flag_SERBR_F',true];
			A3A_faction_reb setVariable ['flagTexture','\SerbianFrontAssets\marker_serbr_co.paa',true];
			A3A_faction_reb setVariable ['flagMarkerType','flag_SERBR', true];
			SDKFlag = A3A_faction_reb getVariable 'flag';
			SDKFlagTexture = A3A_faction_reb getVariable 'flagTexture';
			SDKFlagMarkerType = A3A_faction_reb getVariable 'flagMarkerType';
			publicVariable 'SDKFlag';
			publicVariable 'SDKFlagTexture';
			publicVariable 'SDKFlagMarkerType';
			{if (sidesX getVariable [_x,sideUnknown] == teamPlayer) then {[_x] call A3A_fnc_mrkUpdate};} forEach airportsX;
			MyInsignia = 'shvr_serbr';
			publicVariable 'MyInsignia';
			{[_x,MyInsignia] call BIS_fnc_setUnitInsignia;} forEach (allUnits select {alive _x && side _x == teamPlayer});"
			]], "1", "1", "\A3\ui_f\data\IGUI\Cfg\Cursors\iconcursorsupport_ca.paa"],
	[localize "STR_FlagMode_SERB",        [3], "", -5, [["expression",
			"flagX forceFlagTexture '\SerbianFrontAssets\marker_serb_co.paa';
			A3A_faction_reb setVariable ['flag','Flag_SERBR_F',true];
			A3A_faction_reb setVariable ['flagTexture','\SerbianFrontAssets\marker_serb_co.paa',true];
			A3A_faction_reb setVariable ['flagMarkerType','flag_SERBR', true];
			SDKFlag = A3A_faction_reb getVariable 'flag';
			SDKFlagTexture = A3A_faction_reb getVariable 'flagTexture';
			SDKFlagMarkerType = A3A_faction_reb getVariable 'flagMarkerType';
			publicVariable 'SDKFlag';
			publicVariable 'SDKFlagTexture';
			publicVariable 'SDKFlagMarkerType';
			{if (sidesX getVariable [_x,sideUnknown] == teamPlayer) then {[_x] call A3A_fnc_mrkUpdate};} forEach airportsX;
			MyInsignia = 'shvr_serb';
			publicVariable 'MyInsignia';
			{[_x,MyInsignia] call BIS_fnc_setUnitInsignia;} forEach (allUnits select {alive _x && side _x == teamPlayer});"
			]], "1", "1", "\A3\ui_f\data\IGUI\Cfg\Cursors\iconcursorsupport_ca.paa"]
];

publicVariable "MENU_COMMS_1";

["vehicleBasic", "av_uaz451_b"] call _fnc_saveToTemplate; 
["vehicleLightUnarmed", "av_r001_mg"] call _fnc_saveToTemplate;
["vehicleLightArmed", "av_tr_btr60"] call _fnc_saveToTemplate;
["vehicleTruck", "xs_zil_131_kung"] call _fnc_saveToTemplate;
["vehicleAT", "rhsgref_BRDM2_ATGM_vmf"] call _fnc_saveToTemplate;
["vehicleAA", "rhsgref_nat_ural_Zu23"] call _fnc_saveToTemplate;

["vehicleBoat", "I_Boat_Armed_01_minigun_F"] call _fnc_saveToTemplate;
["vehicleRepair", "xs_zil_131_repair"] call _fnc_saveToTemplate;
["vehicleFuel", "xs_zil_131_fuel"] call _fnc_saveToTemplate;

["vehiclePlane", "RHS_AN2"] call _fnc_saveToTemplate;
["vehiclePayloadPlane", "RHSGREF_A29B_HIDF"] call _fnc_saveToTemplate;
["vehicleHeli", "not_supported"] call _fnc_saveToTemplate;

["vehicleCivCar", "av_niva_04"] call _fnc_saveToTemplate;
["vehicleCivTruck", "av_zil_130a"] call _fnc_saveToTemplate;
["vehicleCivHeli", "RHS_Mi8t_civilian"] call _fnc_saveToTemplate;
["vehicleCivBoat", "C_Rubberboat"] call _fnc_saveToTemplate;
["vehicleCivSupply", "av_zil_130c"] call _fnc_saveToTemplate;

["staticMG", "rhsgref_ins_DSHKM"] call _fnc_saveToTemplate;
["staticAT", "rhsgref_nat_SPG9"] call _fnc_saveToTemplate;
["staticAA", "rhsgref_nat_ZU23"] call _fnc_saveToTemplate;
["staticMortar", "rhsgref_nat_2b14"] call _fnc_saveToTemplate;
["staticMortarMagHE", "rhs_mag_3vo18_10"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "rhs_mag_d832du_10"] call _fnc_saveToTemplate;

//Static weapon definitions
["baggedMGs", [["RHS_DShkM_Gun_Bag","RHS_DShkM_TripodHigh_Bag"]]] call _fnc_saveToTemplate;
["baggedAT", [["RHS_SPG9_Gun_Bag","RHS_SPG9_Tripod_Bag"]]] call _fnc_saveToTemplate;
["baggedAA", [["not_supported"]]] call _fnc_saveToTemplate;
["baggedMortars", [["RHS_Podnos_Gun_Bag","RHS_Podnos_Bipod_Bag"]]] call _fnc_saveToTemplate;

["mineAT", [
	"ATMine_Range_Mag",
	"rhs_mine_tm62m_mag",
	"rhs_mine_M19_mag",
	"rhs_mag_mine_ptm1",
	"SLAMDirectionalMine_Wire_Mag",
	"rhssaf_mine_tma4_mag",
	"rhs_mine_TM43_mag"
]] call _fnc_saveToTemplate;
["mineAPERS", [
	"rhs_mine_M7A2_mag",
	"APERSMine_Range_Mag",
	"rhs_mine_pmn2_mag",
	"APERSBoundingMine_Range_Mag",
	"rhs_mag_mine_pfm1",
	"rhsusf_mine_m14_mag",
	"ClaymoreDirectionalMine_Remote_Mag",
	"APERSTripMine_Wire_Mag",
	"rhssaf_tm100_mag",
	"rhssaf_tm200_mag",
	"rhssaf_tm500_mag",
	"rhssaf_mine_pma3_mag",
	"rhssaf_mine_mrud_a_mag",
	"rhssaf_mine_mrud_b_mag",
	"rhssaf_mine_mrud_c_mag",
	"rhssaf_mine_mrud_d_mag",
	"rhs_mine_smine35_press_mag",
	"rhs_mine_smine44_press_mag",
	"rhs_mine_stockmine43_2m_mag",
	"rhs_mine_stockmine43_4m_mag",
	"rhs_mine_M3_tripwire_mag",
	"rhs_mine_Mk2_tripwire_mag",
	"rhs_mine_mk2_pressure_mag",
	"rhs_mine_m3_pressure_mag",
	"rhs_mine_glasmine43_hz_mag",
	"rhs_mine_glasmine43_bz_mag",
	"rhs_mine_m2a3b_press_mag",
	"rhs_mine_m2a3b_trip_mag",
	"rhs_mine_a200_bz_mag",
	"rhs_mine_a200_dz35_mag",
	"rhs_mine_m2a3b_press_mag",
	"rhs_mine_m2a3b_trip_mag",
	"rhs_mine_smine35_trip_mag",
	"rhs_mine_smine44_trip_mag"
]] call _fnc_saveToTemplate;

["breachingExplosivesAPC", [["rhs_ec75_mag", 2], ["rhs_ec75_sand_mag", 2], ["rhs_ec200_mag", 1], ["rhs_ec200_sand_mag", 1], ["rhsusf_m112_mag", 1], ["DemoCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [["rhs_ec75_mag", 4], ["rhs_ec75_sand_mag", 4], ["rhs_ec200_mag", 2], ["rhs_ec200_sand_mag", 2], ["rhs_ec400_mag", 1], ["rhs_ec400_sand_mag", 1],["DemoCharge_Remote_Mag", 2], ["rhsusf_m112_mag", 2], ["rhsusf_m112x4_mag", 1], ["rhs_charge_M2tet_x2_mag", 1], ["SatchelCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

["uniforms", [
	"rhs_uniform_emr_patchless",
    "rhs_uniform_flora_patchless",
    "AV_Uniform_om_9",
    "rhssaf_uniform_m93_oakleaf_summer",
    "rhssaf_uniform_m93_oakleaf",
	"AV_Ghillie2_W",
    "rhs_uniform_vdv_emr"

]] call _fnc_saveToTemplate;

["headgear", [
    "rhs_beanie_green",
    "H_Bandanna_khk",
    "H_Cap_blk",
    "H_Cap_oli",
    "H_Cap_headphones",
    "rhssaf_helmet_m59_85_nocamo",
    "rhssaf_helmet_m59_85_oakleaf",
    "rhssaf_beret_green",
    "rhssaf_booniehat_woodland",
    "rhssaf_booniehat_md2camo",
    "rhs_headband"
]] call _fnc_saveToTemplate;

private _initialRebelEquipment = [
"rhs_bipod", "rhs_acc_tgpa", "rhs_acc_perst1ik",
    "rhs_acc_pbs1", "rhs_acc_dtk4short", "rhs_acc_tgpv", "rhs_acc_dtk4long",
    "rhs_acc_dtk4screws", "rhs_acc_muzzleFlash_dtk", "rhs_acc_dtk3", "rhs_acc_dtk1", "rhs_acc_dtk",
    "rhs_acc_dtk1l", "rhs_acc_ak5", "rhs_acc_1p29", "rhs_acc_1p78", "rhs_acc_pkas",
    "rhs_acc_ekp1", "rhs_acc_1p63", "rhs_acc_ekp1b", "rhs_acc_ekp1c",
    "rhs_acc_ekp1d", "rhs_acc_npz", "rhs_acc_pso1m2", "rhs_acc_pgo7v", "rhs_acc_1pn93_1", "rhs_acc_1pn93_2",
    "rhs_weap_m70b1n", "rhssaf_30Rnd_762x39mm_M67",
    "rhs_weap_m70b3n", "rhs_weap_m70b3n_pbg40", "rhs_VOG25",
    "rhs_weap_m84", "rhs_100Rnd_762x54mmR",
    "rhs_weap_m80",
    "rhs_weap_cz99_etched", "rhssaf_mag_15Rnd_9x19_FMJ", "rhs_weap_cz99",
    "rhs_weap_svdp_wd_npz", "rhs_acc_tgpv2", "rhs_acc_dh520x56", "rhs_10Rnd_762x54mmR_7N1",
    "rhs_weap_scorpion", "rhsgref_20rnd_765x17_vz61",
    "rhssaf_kitbag_md2camo", "rhssaf_kitbag_smb", "rhsgref_tortila_specter",
    "rhs_balaclava1_olive", "rhssaf_veil_Green",
    "rhssaf_helmet_m59_85_nocamo",
    "rhssaf_helmet_m59_85_oakleaf",
    "rhssaf_beret_green",
    "rhssaf_booniehat_woodland",
    "rhssaf_booniehat_md2camo",
    "rhssaf_vest_md98_rifleman",
    "rhssaf_vest_md98_woodland",
    "rhssaf_vest_md98_md2camo",
    "rhssaf_vest_otv_md2camo",
	"av_6b5_o",
	"av_6b5_c",
    "rhssaf_mag_brd_m83_white", "rhssaf_mag_br_m75",
    "rhssaf_mag_brk_m79", "rhssaf_mag_brz_m88",
    "rhssaf_mine_tma4_mag",
    "rhs_ec200_mag",
    "rhssaf_tm100_mag",
	"rhssaf_tm200_mag",
	"rhssaf_tm500_mag",
	"rhssaf_mine_pma3_mag",
	"rhssaf_mine_mrud_a_mag",
	"rhssaf_mine_mrud_b_mag",
	"rhssaf_mine_mrud_c_mag",
	"rhssaf_mine_mrud_d_mag",
    "ItemMap", "ItemWatch", "ItemCompass", "rhssaf_zrak_rd7j", "ItemRadio",
    "ItemGPS","Laserbatteries"];

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr","tf_anprc154","tf_anprc148jem"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment pushBack "tf_anprc155"};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr","TFAR_anprc154"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment pushBack "TFAR_anprc155"};
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////
["baseSoldiers", [ // Cases matter. Lower case here because allVariables on namespace returns lowercase
	/*["militia_unarmed", "I_G_Survivor_F"],
	["militia_rifleman", "rhsgref_nat_pmil_rifleman_akm"],
	["militia_staticcrew", "rhsgref_nat_pmil_rifleman_akm"],
	["militia_medic", "rhsgref_nat_medic"],
	["militia_sniper", "rhsgref_nat_pmil_rifleman_akm"],
	["militia_marksman", "rhsgref_nat_pmil_hunter"],
	["militia_lat", "rhsgref_nat_pmil_grenadier_rpg"],
	["militia_machinegunner", "rhsgref_nat_pmil_machinegunner"],
	["militia_explosivesexpert", "rhsgref_cdf_ngd_engineer"],
	["militia_grenadier", "rhsgref_cdf_para_grenadier"],
	["militia_squadleader", "rhsgref_nat_commander"],
	["militia_engineer", "rhsgref_cdf_ngd_engineer"],
	["militia_at", "rhsgref_nat_pmil_grenadier_rpg"],
	["militia_aa", "rhsgref_nat_pmil_grenadier_rpg"],
	["militia_petros", "rhsgref_nat_warlord"]*/
]] call _fnc_saveToTemplate;
lootCrate = "Box_Syndicate_Ammo_F";
rallyPoint = "B_RadioBag_01_wdl_F";

//black market stuff
shop_UAV = ["rhs_pchela1t_vvs"];
shop_AA = ["av_zsu234", "I_LT_01_AA_F", "min_rf_sa_22"];
shop_MRAP = ["av_rus_tigr4", "av_r001_hmg"];
shop_wheel_apc = ["av_tr_btr70", "av_btr80_vv", "av_btr80a_vv", "av_APC_Wheeled_F"];
shop_track_apc = ["rhsgref_hidf_m113a3_m2", "rhsgref_cdf_bmd1k", "rhsgref_cdf_bmp2e","rhs_bmp3mera_msv"];
shop_heli = ["rhs_uh1h_hidf_gunship", "rhsgref_cdf_reg_Mi17Sh"];
shop_tank = ["rhs_t90sab_tv", "rhs_t90sm_tv", "rhs_t80um", "rhs_t72be_tv"];
shop_plane = ["RHSGREF_A29B_HIDF", "RHS_Su25SM_vvs", "rhs_mig29sm_vvs"];

additionalShopLight = ["rhssaf_m1151_olive_pkm", "rhssaf_m1025_olive_m2", "rhs_tigr_sts_vmf"];
additionalShopAtgmVehicles = [];
additionalShopManpadsVehicles = [];
additionalShopArtillery = ["RHS_BM21_MSV_01", "rhs_9k79", "rhs_D30_vmf"];

//military building models (common for all sides)
smallBunker = "Land_BagBunker_Small_F";
sandbag = "Land_BagFence_Long_F";

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

//     DO NOT GO PAST THIS LINE

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData setVariable ["rifles", []];
_loadoutData setVariable ["carbines", []];
_loadoutData setVariable ["grenadeLaunchers", []];
_loadoutData setVariable ["SMGs", []];
_loadoutData setVariable ["machineGuns", []]; 			//this line determines machine guns -- Example: ["arifle_MX_SW_F","arifle_MX_SW_Hamr_pointer_F"] -- Array, can contain multiple assets
_loadoutData setVariable ["marksmanRifles", []];
_loadoutData setVariable ["sniperRifles", []];
_loadoutData setVariable ["lightATLaunchers", []];
_loadoutData setVariable ["ATLaunchers", []];
_loadoutData setVariable ["missileATLaunchers", []];
_loadoutData setVariable ["AALaunchers", []];
_loadoutData setVariable ["sidearms", []];

_loadoutData setVariable ["ATMines", []];
_loadoutData setVariable ["APMines", []];
_loadoutData setVariable ["lightExplosives", []];
_loadoutData setVariable ["heavyExplosives", []];

_loadoutData setVariable ["antiInfantryGrenades", []];
_loadoutData setVariable ["antiTankGrenades", []];
_loadoutData setVariable ["smokeGrenades", []];




_loadoutData setVariable ["maps", ["ItemMap"]];
_loadoutData setVariable ["watches", ["ItemWatch"]];
_loadoutData setVariable ["voice", ["Male01RUS", "Male02RUS", "Male03RUS"]];//, "Male02RUS", "Male03RUS"
_loadoutData setVariable ["compasses", ["ItemCompass"]];
_loadoutData setVariable ["radios", ["tf_anprc148jem"]];
_loadoutData setVariable ["gpses", []];
_loadoutData setVariable ["NVGs", []];
_loadoutData setVariable ["binoculars", ["Binocular"]];

_loadoutData setVariable ["uniforms", [
    "rhs_uniform_emr_patchless",
    "rhs_uniform_flora_patchless",
    "AV_Uniform_om_9",
    "rhssaf_uniform_m93_oakleaf_summer",
    "rhssaf_uniform_m93_oakleaf",
	"AV_Ghillie2_W",
    "rhs_uniform_vdv_emr"
]];
_loadoutData setVariable ["vests", []];
_loadoutData setVariable ["backpacks", []];
_loadoutData setVariable ["longRangeRadios", []];
_loadoutData setVariable ["helmets", []];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData setVariable ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData setVariable ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData setVariable ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData setVariable ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];


_loadoutData setVariable ["items_squadleader_extras", []];
_loadoutData setVariable ["items_rifleman_extras", []];
_loadoutData setVariable ["items_medic_extras", []];
_loadoutData setVariable ["items_grenadier_extras", []];
_loadoutData setVariable ["items_explosivesExpert_extras", []];
_loadoutData setVariable ["items_engineer_extras", ["Toolkit", "MineDetector"]];// 
_loadoutData setVariable ["items_lat_extras", []];
_loadoutData setVariable ["items_at_extras", []];
_loadoutData setVariable ["items_aa_extras", []];
_loadoutData setVariable ["items_machineGunner_extras", []];
_loadoutData setVariable ["items_marksman_extras", []];
_loadoutData setVariable ["items_sniper_extras", []];
_loadoutData setVariable ["items_police_extras", []];
_loadoutData setVariable ["items_crew_extras", []];
_loadoutData setVariable ["items_unarmed_extras", []];

////////////////////////
//  Rebel Unit Types  //
///////////////////////.

private _squadLeaderTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["backpacks"] call _fnc_setBackpack;

	[["grenadeLaunchers", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;


	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_squadLeader_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["antiTankGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["binoculars"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _riflemanTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 8] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_rifleman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["antiTankGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _medicTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["carbines"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_medic"] call _fnc_addItemSet;
	["items_medic_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _grenadierTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["grenadeLaunchers"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;


	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_grenadier_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 4] call _fnc_addItem;
	["antiTankGrenades", 3] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;


	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_explosivesExpert_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["lightExplosives", 2] call _fnc_addItem;
	if (random 1 > 0.5) then {["heavyExplosives", 1] call _fnc_addItem;};
	if (random 1 > 0.5) then {["atMines", 1] call _fnc_addItem;};
	if (random 1 > 0.5) then {["apMines", 1] call _fnc_addItem;};

	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _engineerTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["carbines"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_engineer_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	if (random 1 > 0.5) then {["lightExplosives", 1] call _fnc_addItem;};

	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _latTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 8] call _fnc_addMagazines;

	[["lightATLaunchers", "ATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 1] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_lat_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["antiTankGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	[selectRandom ["ATLaunchers", "missileATLaunchers"]] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 2] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_at_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["antiTankGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	["AALaunchers"] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 2] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_aa_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["machineGuns"] call _fnc_setPrimary;
	["primary", 4] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_machineGunner_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _marksmanTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["marksmanRifles"] call _fnc_setPrimary;
	["primary", 8] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_marksman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _sniperTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["sniperRifles"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_sniper_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _policeTemplate = {
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["smgs", "carbines"]] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_police_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
};

private _crewTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["smgs"] call _fnc_setPrimary;
	["primary", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_basic"] call _fnc_addItemSet;
	["items_crew_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["NVGs"] call _fnc_addNVGs;
};

private _unarmedTemplate = {
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["items_medical_basic"] call _fnc_addItemSet;
	["items_unarmed_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
};

private _prefix = "militia";
private _unitTypes = [
	["Petros", _squadLeaderTemplate],
	["SquadLeader", _squadLeaderTemplate],
	["Rifleman", _riflemanTemplate],
	["staticCrew", _riflemanTemplate],
	["Medic", _medicTemplate, [["medic", true]]],
	["Engineer", _engineerTemplate, [["engineer", true]]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]]],
	["Grenadier", _grenadierTemplate],
	["LAT", _latTemplate],
	["AT", _atTemplate],
	["AA", _aaTemplate],
	["MachineGunner", _machineGunnerTemplate],
	["Marksman", _marksmanTemplate],
	["Sniper", _sniperTemplate],
	["Unarmed", _unarmedTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
