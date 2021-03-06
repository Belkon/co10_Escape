/*
 * Description: This file contains the vehicle types and unit types for the units spawned in the mission, and the weapons and magazines found in ammo boxes/cars.
 * "Random array" (used below) means that array will be used to spawn units, and that chance is 1/n that each element will be spawned on each spawn. The array can contain 
 * many elements of the same type, so the example array ["Offroad_DSHKM_INS", "Pickup_PK_INS", "Pickup_PK_INS"] will spawn an Offroad with 1/3 probability, and a 
 * Pickup with 2/3 probability.
 */

private ["_enemyFrequency"];

_enemyFrequency = _this select 0;

A3E_VAR_Side_Blufor = east;
A3E_VAR_Side_Opfor = west;
A3E_VAR_Side_Ind = resistance;

A3E_VAR_Flag_Opfor = "\gm\gm_core\data\flags\gm_flag_ge_co.paa";
A3E_VAR_Flag_Ind = "\gm\gm_core\data\flags\gm_flag_dk_co.paa"; // Update 3: Placeholder for Syndikat flag.
 
A3E_VAR_Side_Blufor_Str = format["%1",A3E_VAR_Side_Blufor];
A3E_VAR_Side_Opfor_Str = format["%1",A3E_VAR_Side_Opfor];
A3E_VAR_Side_Ind_Str = format["%1",A3E_VAR_Side_Ind];

// Random array. Start position guard types around the prison
a3e_arr_Escape_StartPositionGuardTypes = [
	"gm_dk_army_rifleman_gvm95_90_win",
	"gm_dk_army_rifleman_gvm95_90_win",
	"gm_dk_army_squadleader_gvm95_p2a1_90_win",
	"gm_dk_army_rifleman_gvm95_90_win"];

// Prison backpack secondary weapon (and corresponding magazine type).
a3e_arr_PrisonBackpackWeapons = [];
a3e_arr_PrisonBackpackWeapons pushback ["gm_p1_blk","gm_8rnd_9x19mm_b_dm11_p1_blk"];
a3e_arr_PrisonBackpackWeapons pushback ["gm_pm_blk","gm_8rnd_9x18mm_b_pst_pm_blk"];
a3e_arr_PrisonBackpackWeapons pushback ["gm_p1_blk","gm_8rnd_9x19mm_b_dm11_p1_blk"];
a3e_arr_PrisonBackpackWeapons pushback ["gm_pm_blk","gm_8rnd_9x18mm_b_pst_pm_blk"];
a3e_arr_PrisonBackpackWeapons pushback ["gm_p1_blk","gm_8rnd_9x19mm_b_dm11_p1_blk"];
a3e_arr_PrisonBackpackWeapons pushback ["gm_pm_blk","gm_8rnd_9x18mm_b_pst_pm_blk"];
a3e_arr_PrisonBackpackWeapons pushback ["gm_mp2a1_blk", "gm_32rnd_9x19mm_b_dm51_mp2_blk"];

// Random array. Civilian vehicle classes for ambient traffic.
a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses = [
	"gm_ge_civ_u1300l"
	,"gm_ge_civ_u1300l"
	,"gm_ge_civ_typ1200"
	,"gm_ge_civ_typ1200"
	,"gm_ge_civ_typ1200"
	,"gm_ge_civ_typ1200"
	,"gm_ge_civ_typ1200"
	,"gm_ge_ff_typ1200"
	,"gm_ge_pol_typ1200"
	,"gm_ge_dbp_typ1200"
	,"gm_ge_pol_bicycle_01_grn"
	,"gm_ge_dbp_bicycle_01_ylw"];
	if(Param_UseDLCContact==1) then {
	a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "C_Tractor_01_F";
	};

// Random arrays. Enemy vehicle classes for ambient traffic.
// Variable _enemyFrequency applies to server parameter, and can be one of the values 1 (Few), 2 (Some) or 3 (A lot).
switch (_enemyFrequency) do {
    case 1: {//Few (1-3)
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses = [
		"gm_ge_army_bicycle_01_oli"
		,"gm_ge_army_k125"
		,"gm_ge_army_iltis_cargo_win"
		,"gm_ge_army_iltis_cargo_win"
		,"gm_ge_army_iltis_milan_win"
		,"gm_ge_army_iltis_milan_win"
		,"gm_ge_army_kat1_454_cargo_win"
		,"gm_ge_army_u1300l_container_win"
		,"gm_ge_army_u1300l_medic_win_rc"
		,"gm_ge_army_u1300l_repair_win"
		,"gm_ge_army_u1300l_cargo_win"
		,"gm_ge_army_u1300l_cargo_win"
		,"gm_ge_army_kat1_451_reammo_win"
		,"gm_ge_army_kat1_451_container_win"
		,"gm_ge_army_kat1_451_refuel_win"
		,"gm_ge_army_kat1_451_cargo_win"
		,"gm_ge_army_kat1_451_cargo_win"
		,"gm_ge_army_typ1200_cargo_olw"
		,"gm_ge_army_gepard1a1_win"
		,"gm_ge_army_m113a1g_apc_win"
		,"gm_ge_army_m113a1g_apc_milan_win"
		,"gm_ge_army_m113a1g_command_win"
		,"gm_ge_army_m113a1g_medic_win_rc"
		,"gm_ge_army_fuchsa0_command_win"
		,"gm_ge_army_fuchsa0_engineer_win"
		,"gm_ge_army_fuchsa0_reconnaissance_win"
		,"gm_ge_army_fuchsa0_reconnaissance_win"
		,"gm_ge_army_bpz2a0_win"
		,"gm_ge_army_Leopard1a1_olw"
		,"gm_ge_army_Leopard1a1a1_win"
		,"gm_ge_army_Leopard1a1a2_win"
		,"gm_ge_army_Leopard1a3_win"
		,"gm_ge_army_Leopard1a3a1_win"
		,"gm_ge_army_Leopard1a5_win"];
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND = [
		"gm_dk_army_m113a1dk_apc_win"
		,"gm_dk_army_m113a1dk_command_win"
		,"gm_dk_army_m113a1dk_engineer_win"
		,"gm_dk_army_m113a1dk_medic_win_rc"
		,"gm_dk_army_m113a2dk_win"
		,"gm_dk_army_u1300l_container_win"
		,"gm_dk_army_u1300l_container_win"
		,"gm_dk_army_typ1200_cargo_olw"
		,"gm_dk_army_typ1200_cargo_olw"
		,"gm_dk_army_bpz2a0_win"
		,"gm_dk_army_Leopard1a3_win"];
    };
    case 2: {//Some (4-6)
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses = [
		"gm_ge_army_bicycle_01_oli"
		,"gm_ge_army_k125"
		,"gm_ge_army_iltis_cargo_win"
		,"gm_ge_army_iltis_cargo_win"
		,"gm_ge_army_iltis_milan_win"
		,"gm_ge_army_iltis_milan_win"
		,"gm_ge_army_kat1_454_cargo_win"
		,"gm_ge_army_u1300l_container_win"
		,"gm_ge_army_u1300l_medic_win_rc"
		,"gm_ge_army_u1300l_repair_win"
		,"gm_ge_army_u1300l_cargo_win"
		,"gm_ge_army_u1300l_cargo_win"
		,"gm_ge_army_kat1_451_reammo_win"
		,"gm_ge_army_kat1_451_container_win"
		,"gm_ge_army_kat1_451_refuel_win"
		,"gm_ge_army_kat1_451_cargo_win"
		,"gm_ge_army_kat1_451_cargo_win"
		,"gm_ge_army_typ1200_cargo_olw"
		,"gm_ge_army_gepard1a1_win"
		,"gm_ge_army_m113a1g_apc_win"
		,"gm_ge_army_m113a1g_apc_milan_win"
		,"gm_ge_army_m113a1g_command_win"
		,"gm_ge_army_m113a1g_medic_win_rc"
		,"gm_ge_army_fuchsa0_command_win"
		,"gm_ge_army_fuchsa0_engineer_win"
		,"gm_ge_army_fuchsa0_reconnaissance_win"
		,"gm_ge_army_fuchsa0_reconnaissance_win"
		,"gm_ge_army_bpz2a0_win"
		,"gm_ge_army_Leopard1a1_olw"
		,"gm_ge_army_Leopard1a1a1_win"
		,"gm_ge_army_Leopard1a1a2_win"
		,"gm_ge_army_Leopard1a3_win"
		,"gm_ge_army_Leopard1a3a1_win"
		,"gm_ge_army_Leopard1a5_win"];
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND = [
		"gm_dk_army_m113a1dk_apc_win"
		,"gm_dk_army_m113a1dk_command_win"
		,"gm_dk_army_m113a1dk_engineer_win"
		,"gm_dk_army_m113a1dk_medic_win_rc"
		,"gm_dk_army_m113a2dk_win"
		,"gm_dk_army_u1300l_container_win"
		,"gm_dk_army_u1300l_container_win"
		,"gm_dk_army_typ1200_cargo_olw"
		,"gm_dk_army_typ1200_cargo_olw"
		,"gm_dk_army_bpz2a0_win"
		,"gm_dk_army_Leopard1a3_win"];
    };
    default {//A lot (7-8)
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses = [
		"gm_ge_army_bicycle_01_oli"
		,"gm_ge_army_k125"
		,"gm_ge_army_iltis_cargo_win"
		,"gm_ge_army_iltis_cargo_win"
		,"gm_ge_army_iltis_milan_win"
		,"gm_ge_army_iltis_milan_win"
		,"gm_ge_army_kat1_454_cargo_win"
		,"gm_ge_army_u1300l_container_win"
		,"gm_ge_army_u1300l_medic_win_rc"
		,"gm_ge_army_u1300l_repair_win"
		,"gm_ge_army_u1300l_cargo_win"
		,"gm_ge_army_u1300l_cargo_win"
		,"gm_ge_army_kat1_451_reammo_win"
		,"gm_ge_army_kat1_451_container_win"
		,"gm_ge_army_kat1_451_refuel_win"
		,"gm_ge_army_kat1_451_cargo_win"
		,"gm_ge_army_kat1_451_cargo_win"
		,"gm_ge_army_typ1200_cargo_olw"
		,"gm_ge_army_gepard1a1_win"
		,"gm_ge_army_m113a1g_apc_win"
		,"gm_ge_army_m113a1g_apc_milan_win"
		,"gm_ge_army_m113a1g_command_win"
		,"gm_ge_army_m113a1g_medic_win_rc"
		,"gm_ge_army_fuchsa0_command_win"
		,"gm_ge_army_fuchsa0_engineer_win"
		,"gm_ge_army_fuchsa0_reconnaissance_win"
		,"gm_ge_army_fuchsa0_reconnaissance_win"
		,"gm_ge_army_bpz2a0_win"
		,"gm_ge_army_Leopard1a1_olw"
		,"gm_ge_army_Leopard1a1a1_win"
		,"gm_ge_army_Leopard1a1a2_win"
		,"gm_ge_army_Leopard1a3_win"
		,"gm_ge_army_Leopard1a3a1_win"
		,"gm_ge_army_Leopard1a5_win"];
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND = [
		"gm_dk_army_m113a1dk_apc_win"
		,"gm_dk_army_m113a1dk_command_win"
		,"gm_dk_army_m113a1dk_engineer_win"
		,"gm_dk_army_m113a1dk_medic_win_rc"
		,"gm_dk_army_m113a2dk_win"
		,"gm_dk_army_u1300l_container_win"
		,"gm_dk_army_u1300l_container_win"
		,"gm_dk_army_typ1200_cargo_olw"
		,"gm_dk_army_typ1200_cargo_olw"
		,"gm_dk_army_bpz2a0_win"
		,"gm_dk_army_Leopard1a3_win"];
    };
};

// Random array. General infantry types. E.g. village patrols, ambient infantry, etc. (for ammo depot guards and communication center guards see further down in this file at fn_InitGuardedLocations)
a3e_arr_Escape_InfantryTypes = [
	"gm_ge_army_engineer_g3a4_parka_80_win"
	,"gm_ge_army_engineer_g3a4_parka_80_win"
	,"gm_ge_army_engineer_g3a4_parka_80_win"
	,"gm_ge_army_medic_g3a3_parka_80_win"
	,"gm_ge_army_medic_g3a3_parka_80_win"
	,"gm_ge_army_medic_g3a3_parka_80_win"
	,"gm_ge_army_antitank_assistant_g3a3_pzf44_parka_80_win"
	,"gm_ge_army_machinegunner_assistant_g3a3_mg3_parka_80_win"
	,"gm_ge_army_machinegunner_assistant_g3a3_mg3_parka_80_win"
	,"gm_ge_army_antitank_assistant_g3a3_pzf84_parka_80_win"
	,"gm_ge_army_antitank_assistant_g3a3_pzf84_parka_80_win"
	,"gm_ge_army_marksman_g3a3_parka_80_win"
	,"gm_ge_army_marksman_g3a3_parka_80_win"
	,"gm_ge_army_marksman_g3a3_parka_80_win"
	,"gm_ge_army_antitank_g3a3_milan_parka_80_win"
	,"gm_ge_army_antitank_g3a3_milan_parka_80_win"
	,"gm_ge_army_demolition_g3a4_parka_80_win"
	,"gm_ge_army_demolition_g3a4_parka_80_win"
	,"gm_ge_army_rifleman_g3a3_parka_80_win"
	,"gm_ge_army_rifleman_g3a3_parka_80_win"
	,"gm_ge_army_rifleman_g3a3_parka_80_win"
	,"gm_ge_army_grenadier_g3a3_parka_80_win"
	,"gm_ge_army_grenadier_g3a3_parka_80_win"
	,"gm_ge_army_grenadier_g3a3_parka_80_win"
	,"gm_ge_army_antitank_g3a3_pzf84_parka_80_win"
	,"gm_ge_army_antitank_g3a3_pzf84_parka_80_win"
	,"gm_ge_army_machinegunner_mg3_parka_80_win"
	,"gm_ge_army_machinegunner_mg3_parka_80_win"
	,"gm_ge_army_machinegunner_mg3_parka_80_win"
	,"gm_ge_army_antitank_g3a3_pzf44_parka_80_win"
	,"gm_ge_army_antitank_g3a3_pzf44_parka_80_win"
	,"gm_ge_army_squadleader_g3a3_p2a1_parka_80_win"
	,"gm_ge_army_squadleader_g3a3_p2a1_parka_80_win"];
a3e_arr_Escape_InfantryTypes_Ind = [
	"gm_dk_army_squadleader_gvm95_p2a1_90_win"
	,"gm_dk_army_rifleman_gvm95_90_win"
	,"gm_dk_army_rifleman_gvm95_90_win"
	,"gm_dk_army_rifleman_gvm95_90_win"
	,"gm_dk_army_rifleman_gvm95_90_win"
	,"gm_dk_army_medic_gvm95_90_win"
	,"gm_dk_army_medic_gvm95_90_win"
	,"gm_dk_army_marksman_g3a3_90_win"
	,"gm_dk_army_machinegunner_mg3_90_win"
	,"gm_dk_army_machinegunner_assistant_gvm95_mg3_90_win"
	,"gm_dk_army_antitank_gvm95_pzf84_90_win"
	,"gm_dk_army_antitank_assistant_gvm95_pzf84_90_win"
	,"gm_dk_army_demolition_gvm95_90_win"];
a3e_arr_recon_InfantryTypes = [
	"gm_ge_bgs_rifleman_g3a3_80_smp"
	,"gm_ge_bgs_machinegunner_mg3_80_smp"
	,"gm_ge_bgs_machinegunner_assistant_g3a3_mg3_80_smp"
	,"gm_ge_bgs_squadleader_g3a3_p2a1_80_smp"];
a3e_arr_recon_I_InfantryTypes = [
	"gm_dk_army_squadleader_g3a3_p2a1_84_win"
	,"gm_dk_army_squadleader_g3a3_p2a1_84_win"
	,"gm_dk_army_demolition_g3a4_84_win"
	,"gm_dk_army_demolition_g3a4_84_win"
	,"gm_dk_army_antitank_g3a3_pzf84_84_win"
	,"gm_dk_army_antitank_g3a3_pzf84_84_win"
	,"gm_dk_army_antitank_assistant_g3a3_pzf84_84_win"
	,"gm_dk_army_machinegunner_mg3_84_win"
	,"gm_dk_army_machinegunner_mg3_84_win"
	,"gm_dk_army_machinegunner_assistant_g3a3_mg3_84_win"
	,"gm_dk_army_marksman_g3a3_84_win"
	,"gm_dk_army_marksman_g3a3_84_win"
	,"gm_dk_army_medic_g3a3_84_win"
	,"gm_dk_army_medic_g3a3_84_win"
	,"gm_dk_army_rifleman_g3a3_84_win"
	,"gm_dk_army_rifleman_g3a3_84_win"];

// Random array. A roadblock has a manned vehicle. This array contains possible manned vehicles (can be of any kind, like cars, armored and statics).
a3e_arr_Escape_RoadBlock_MannedVehicleTypes = [
	"gm_ge_army_iltis_milan_win"
	,"gm_ge_army_fuchsa0_reconnaissance_win"
	,"gm_ge_army_m113a1g_apc_win"
	,"gm_ge_army_m113a1g_apc_milan_win"
	,"gm_ge_army_milan_launcher_tripod"];
a3e_arr_Escape_RoadBlock_MannedVehicleTypes_Ind = [
	"gm_dk_army_m113a1dk_apc_win"
	,"gm_dk_army_m113a2dk_win"];

// Random array. Vehicle classes (preferrably trucks) transporting enemy reinforcements.
a3e_arr_Escape_ReinforcementTruck_vehicleClasses = [
	"gm_ge_army_iltis_cargo_win"
	,"gm_ge_army_u1300l_cargo_win"
	,"gm_ge_army_kat1_451_cargo_win"
	,"gm_ge_army_kat1_454_cargo_win"
	,"gm_ge_army_fuchsa0_command_win"];
a3e_arr_Escape_ReinforcementTruck_vehicleClasses_Ind = [
	"gm_dk_army_typ1200_cargo_olw"
	,"gm_dk_army_m113a1dk_command_win"];


// Random array. Motorized search groups are sometimes sent to look for you. This array contains possible class definitions for the vehicles.
a3e_arr_Escape_MotorizedSearchGroup_vehicleClasses = [
	"gm_ge_army_fuchsa0_reconnaissance_win"
	,"gm_ge_army_m113a1g_apc_milan_win"
	,"gm_ge_army_iltis_milan_win"];

// A communication center is guarded by vehicles depending on variable _enemyFrequency. 1 = a random light armor. 2 = a random heavy armor. 3 = a random 
// light *and* a random heavy armor.

// Random array. Light armored vehicles guarding the communication centers.
a3e_arr_ComCenDefence_lightArmorClasses = [
	"gm_ge_army_m113a1g_apc_win"
	,"gm_ge_army_m113a1g_apc_milan_win"
	,"gm_ge_army_fuchsa0_reconnaissance_win"];
// Random array. Heavy armored vehicles guarding the communication centers.
a3e_arr_ComCenDefence_heavyArmorClasses = [
	"gm_ge_army_gepard1a1_win"
	,"gm_ge_army_Leopard1a1a1_win"
	,"gm_ge_army_Leopard1a3_win"
	,"gm_ge_army_Leopard1a5_win"];

// A communication center contains two static weapons (in two corners of the communication center).
// Random array. Possible static weapon types for communication centers.
a3e_arr_ComCenStaticWeapons = [
	"B_HMG_01_high_F"
	,"B_HMG_01_high_F"
	,"gm_ge_army_milan_launcher_tripod"];
// A communication center have two parked and empty vehicles of the following possible types.
a3e_arr_ComCenParkedVehicles = [
	"gm_ge_army_k125"
	,"gm_ge_army_iltis_cargo_win"
	,"gm_ge_army_iltis_milan_win"
	,"gm_ge_army_u1300l_container_win"
	,"gm_ge_army_u1300l_medic_win_rc"
	,"gm_ge_army_u1300l_repair_win"
	,"gm_ge_army_m113a1g_apc_milan_win"
	,"gm_ge_army_m113a1g_medic_win_rc"
	,"gm_ge_army_kat1_451_cargo_win"
	,"gm_ge_army_kat1_451_refuel_win"
	,"gm_ge_army_fuchsa0_reconnaissance_win"
	,"gm_ge_army_bpz2a0_win"];

// Random array. Enemies sometimes use civilian vehicles in their unconventional search for players. The following car types may be used.
a3e_arr_Escape_EnemyCivilianCarTypes = [
	"gm_ge_civ_u1300l"
	,"gm_ge_civ_u1300l"
	,"gm_ge_civ_typ1200"
	,"gm_ge_civ_typ1200"
	,"gm_ge_civ_typ1200"
	,"gm_ge_civ_typ1200"
	,"gm_ge_civ_typ1200"
	,"gm_ge_ff_typ1200"
	,"gm_ge_pol_typ1200"
	,"gm_ge_dbp_typ1200"];

// Vehicles, weapons and ammo at ammo depots

// Random array. An ammo depot contains one static weapon of the following types:
a3e_arr_Escape_AmmoDepot_StaticWeaponClasses = [
	"CUP_B_M2StaticMG_GER_Fleck"
	,"CUP_B_M2StaticMG_GER_Fleck"
	,"CUP_B_M2StaticMG_MiniTripod_GER_Fleck"
	,"gm_ge_army_milan_launcher_tripod"];
// An ammo depot have one parked and empty vehicle of the following possible types.
a3e_arr_Escape_AmmoDepot_ParkedVehicleClasses = [
	"gm_dk_army_typ1200_cargo_olw"
	,"gm_dk_army_u1300l_container_win"
	,"gm_ge_army_k125"
	,"gm_ge_army_iltis_cargo_win"
	,"gm_ge_army_iltis_milan_win"
	,"gm_ge_army_kat1_454_cargo_win"
	,"gm_ge_army_u1300l_container_win"
	,"gm_ge_army_u1300l_medic_win_rc"
	,"gm_ge_army_u1300l_repair_win"
	,"gm_ge_army_u1300l_cargo_win"
	,"gm_ge_army_kat1_451_reammo_win"
	,"gm_ge_army_kat1_451_container_win"
	,"gm_ge_army_kat1_451_refuel_win"
	,"gm_ge_army_kat1_451_cargo_win"
	,"gm_ge_army_typ1200_cargo_olw"
	,"gm_ge_army_m113a1g_medic_win_rc"
	,"gm_ge_army_m113a1g_command_win"
	,"gm_ge_army_m113a1g_apc_win"
	,"gm_ge_army_bicycle_01_oli"];

//Random array. Types of helicopters to spawn
a3e_arr_O_attack_heli = [
	//"B_Heli_Attack_01_dynamicLoadout_F"];
	"CUP_B_UH1D_gunship_GER_KSK"];
	//"O_Heli_Attack_02_black_F"
	//,"O_T_VTOL_02_infantry_F"];
a3e_arr_O_transport_heli = [
	//"B_Heli_Transport_01_F"];
	"CUP_B_UH1D_GER_KSK"
	,"CUP_B_UH1D_slick_GER_KSK"
	,"CUP_B_CH53E_GER"];
	//"O_Heli_Light_02_unarmed_F"];
a3e_arr_O_pilots = [
	"gm_ge_army_crew_mp2a1_80_oli"];
a3e_arr_I_transport_heli = [
	//"I_Heli_light_03_unarmed_F"];
	"CUP_I_UH1H_TK_GUE"];
a3e_arr_I_pilots = [
	"gm_dk_army_crew_84_oli"];


// The following arrays define weapons and ammo contained at the ammo depots
// Index 0: Weapon classname.
// Index 1: Weapon's probability of presence (in percent, 0-100).
// Index 2: If weapon exists, crate contains at minimum this number of weapons of current class.
// Index 3: If weapon exists, crate contains at maximum this number of weapons of current class.
// Index 4: Array of magazine classnames. Magazines of these types are present if weapon exists.
// Index 5: Number of magazines per weapon that exists.

// Weapons and ammo in the basic weapons box
a3e_arr_AmmoDepotBasicWeapons = [];
// CSAT weapons
a3e_arr_AmmoDepotBasicWeapons pushback ["gm_p1_blk", 50, 4, 8, ["gm_8rnd_9x19mm_b_dm51_p1_blk"], 6];
a3e_arr_AmmoDepotBasicWeapons pushback ["gm_mp2a1_blk", 50, 4, 8, ["gm_32rnd_9x19mm_b_dm51_mp2_blk"], 6];
a3e_arr_AmmoDepotBasicWeapons pushback ["gm_g3a3_oli", 100, 2, 4, ["gm_20rnd_762x51mm_b_t_dm21a1_g3_blk"], 6];
a3e_arr_AmmoDepotBasicWeapons pushback ["gm_mg3_blk", 50, 2, 4, ["gm_120rnd_762x51mm_b_t_dm21_mg3_grn"], 3];
a3e_arr_AmmoDepotBasicWeapons pushback ["gm_g3a4_oli", 50, 2, 4, ["gm_20rnd_762x51mm_b_t_dm21a2_g3_blk"], 6];
a3e_arr_AmmoDepotBasicWeapons pushback ["gm_g3a3_oli", 50, 2, 4, ["gm_20rnd_762x51mm_b_t_dm21a1_g3_blk", "gm_1rnd_67mm_heat_dm22a1_g3"], 6];
// non-CSAT weapons
a3e_arr_AmmoDepotBasicWeapons pushback ["gm_m16a1_blk", 50, 1, 3, ["gm_20Rnd_556x45mm_b_M855_stanag_gry"], 6];
a3e_arr_AmmoDepotBasicWeapons pushback ["gm_m16a2_blk", 40, 1, 3, ["gm_30Rnd_556x45mm_b_M855_stanag_gry"], 6];

// Weapons and ammo in the special weapons box
a3e_arr_AmmoDepotSpecialWeapons = [];
// CSAT weapons
a3e_arr_AmmoDepotSpecialWeapons pushback ["gm_g3a3_oli_feroz24", 50, 2, 4, ["gm_20Rnd_762x51mm_b_DM41_g3_blk"], 5];
a3e_arr_AmmoDepotSpecialWeapons pushback ["gm_p2a1_blk", 50, 2, 4, ["gm_1Rnd_265mm_flare_multi_red_gc", "gm_1Rnd_265mm_flare_para_yel_DM16"], 5];
a3e_arr_AmmoDepotSpecialWeapons pushback ["gm_p2a1_launcher_blk", 5, 1, 2, ["gm_1Rnd_2650mm_potato_dm11"], 5];

// non-CSAT weapons
a3e_arr_AmmoDepotSpecialWeapons pushback ["gm_c7a1_oli", 40, 2, 4, ["gm_20Rnd_556x45mm_b_t_M856_stanag_gry"], 6];

// Weapons and ammo in the launchers box
a3e_arr_AmmoDepotLaunchers = [];
// CSAT weapons
a3e_arr_AmmoDepotLaunchers pushback ["gm_pzf44_2_oli", 50, 3, 5, ["gm_1rnd_44x537mm_heat_dm32_pzf44_2"], 2];
a3e_arr_AmmoDepotLaunchers pushback ["gm_pzf84_oli", 50, 1, 2, ["gm_1rnd_84x245mm_heat_t_dm12a1_carlgustaf"], 3];
a3e_arr_AmmoDepotLaunchers pushback ["gm_pzf84_oli", 50, 1, 2, ["gm_1rnd_84x245mm_heat_t_dm22_carlgustaf", "gm_1rnd_84x245mm_illum_dm16_carlgustaf"], 2];
// non-CSAT weapons
a3e_arr_AmmoDepotLaunchers pushback ["gm_rpg7_prp", 20, 1, 2, ["gm_1rnd_40mm_heat_pg7v_rpg7"], 3];
//a3e_arr_AmmoDepotLaunchers pushback ["launch_I_Titan_F", 100, 1, 1, ["Titan_AA"], 3];
//a3e_arr_AmmoDepotLaunchers pushback ["launch_I_Titan_short_F", 100, 1, 1, ["Titan_AP", "Titan_AT"], 3];
//a3e_arr_AmmoDepotLaunchers pushback ["launch_B_Titan_F", 100, 1, 1, ["Titan_AA"], 3];
//a3e_arr_AmmoDepotLaunchers pushback ["launch_B_Titan_short_F", 100, 1, 1, ["Titan_AP", "Titan_AT"], 3];


// Weapons and ammo in the ordnance box
a3e_arr_AmmoDepotOrdnance = [];
// General weapons
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["gm_explosive_petn_charge"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["gm_mine_ap_dm31"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["gm_mine_at_dm21"], 5];

// Weapons and ammo in the vehicle box (the big one)
// Some high volumes (mostly for immersion)
a3e_arr_AmmoDepotVehicle = [];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["gm_handgrenade_frag_dm51", "gm_handgrenade_frag_dm51a1"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["gm_1rnd_67mm_heat_dm22a1_g3"], 20];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["gm_smokeshell_grn_dm21", "gm_smokeshell_red_dm23", "gm_smokeshell_yel_dm26", "gm_smokeshell_org_dm32", "gm_smokeshell_wht_dm25"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 30, 1, 1, ["gm_handgrenade_conc_dm51"], 5];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["gm_1Rnd_265mm_flare_para_yel_DM16", "gm_1Rnd_265mm_flare_single_wht_DM15", "gm_1Rnd_265mm_flare_single_red_DM13", "gm_1Rnd_265mm_flare_single_grn_DM11", "gm_1Rnd_265mm_flare_single_yel_DM10"], 25];
a3e_arr_AmmoDepotVehicle pushback [objNull, 10, 1, 1, ["gm_1Rnd_265mm_flare_multi_wht_DM25", "gm_1Rnd_265mm_flare_multi_red_DM23", "gm_1Rnd_265mm_flare_multi_grn_DM21", "gm_1Rnd_265mm_flare_multi_yel_DM20"], 5];
a3e_arr_AmmoDepotVehicle pushback [objNull, 10, 1, 1, ["gm_1Rnd_265mm_smoke_single_yel_DM19", "gm_1Rnd_265mm_smoke_single_org_DM22", "gm_1Rnd_265mm_smoke_single_vlt_DM24"], 5];
//a3e_arr_AmmoDepotVehicle pushback [objNull, 10, 1, 1, ["1Rnd_HE_Grenade_shell", "3Rnd_HE_Grenade_shell"], 5];
a3e_arr_AmmoDepotVehicleItems = [];
a3e_arr_AmmoDepotVehicleItems pushback ["gm_repairkit_01", 20, 1, 1, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["gm_ge_army_medkit_80", 20, 1, 1, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["gm_ge_army_gauzeBandage", 100, 10, 50, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["gm_ge_facewear_m65", 50, 1, 3, [], 0];
a3e_arr_AmmoDepotVehicleBackpacks = ["gm_ge_army_backpack_80_oli"];
// Items

// Index 0: Item classname.
// Index 1: Item's probability of presence (in percent, 0-100)..
// Index 2: Minimum amount.
// Index 3: Maximum amount.

a3e_arr_AmmoDepotItems = [];
//a3e_arr_AmmoDepotItems pushback ["Laserdesignator_02_ghex_F", 10, 1, 2];
/*if(Param_NoNightvision==0) then {
	a3e_arr_AmmoDepotItems pushback ["O_NVGoggles_ghex_F", 10, 1, 3];
};*/
a3e_arr_AmmoDepotItems pushback ["gm_ferod16_oli", 50, 2, 3, [], 0];
//a3e_arr_AmmoDepotItems pushback ["Rangefinder", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["gm_ge_army_conat2", 50, 1, 3];
//a3e_arr_AmmoDepotItems pushback ["ItemGPS", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["ItemMap", 50, 1, 3];
a3e_arr_AmmoDepotItems pushback ["ItemRadio", 50, 1, 10];
a3e_arr_AmmoDepotItems pushback ["gm_watch_kosei_80", 50, 1, 10];
//a3e_arr_AmmoDepotItems pushback ["acc_flashlight", 50, 1, 5];
//a3e_arr_AmmoDepotItems pushback ["acc_pointer_IR", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["muzzle_snds_B", 10, 1, 2]; //G3
a3e_arr_AmmoDepotItems pushback ["gm_feroz24_blk", 30, 1, 2]; //G3
a3e_arr_AmmoDepotItems pushback ["gm_c79a1_blk", 10, 1, 2]; //C7
a3e_arr_AmmoDepotItems pushback ["gm_pso1_gry", 20, 1, 3]; //SVD
a3e_arr_AmmoDepotItems pushback ["gm_zfk4x25_blk", 20, 1, 3]; //AK
a3e_arr_AmmoDepotItems pushback ["gm_feroz2x17_pzf44_2_blk", 25, 1, 2];
a3e_arr_AmmoDepotItems pushback ["gm_feroz2x17_pzf84_blk", 25, 1, 2];
a3e_arr_AmmoDepotItems pushback ["gm_pgo7v_blk", 10, 1, 2];
/*if(Param_NoNightvision==0) then {
	a3e_arr_AmmoDepotItems pushback ["optic_tws", 10, 1, 1];
	a3e_arr_AmmoDepotItems pushback ["optic_tws_mg", 10, 1, 1];
	a3e_arr_AmmoDepotItems pushback ["optic_NVS", 10, 1, 2];
	a3e_arr_AmmoDepotItems pushback ["optic_Nightstalker", 10, 1, 1];
};*/


// Weapons that may show up in civilian cars

// Index 0: Weapon classname.
// Index 1: Magazine classname.
// Index 2: Number of magazines.
a3e_arr_CivilianCarWeapons = [];
a3e_arr_CivilianCarWeapons pushback ["gm_p1_blk", "gm_8rnd_9x19mm_b_dm11_p1_blk", 5];
a3e_arr_CivilianCarWeapons pushback ["gm_p1_blk", "gm_8rnd_9x19mm_b_dm51_p1_blk", 5];
a3e_arr_CivilianCarWeapons pushback ["gm_p2a1_blk", "gm_1Rnd_265mm_flare_multi_red_gc", 6];
a3e_arr_CivilianCarWeapons pushback ["gm_p2a1_blk", "gm_1Rnd_265mm_flare_para_yel_DM16", 6];
a3e_arr_CivilianCarWeapons pushback ["gm_p2a1_blk", "gm_1Rnd_265mm_flare_multi_nbc_DM47", 6];
a3e_arr_CivilianCarWeapons pushback ["gm_m16a1_blk", "gm_20Rnd_556x45mm_b_M855_stanag_gry", 6];
a3e_arr_CivilianCarWeapons pushback ["gm_mp2a1_blk", "gm_32rnd_9x19mm_b_dm11_mp2_blk", 6];
a3e_arr_CivilianCarWeapons pushback ["gm_rpg7_prp", "gm_1rnd_40mm_heat_pg7v_rpg7", 2];
//a3e_arr_CivilianCarWeapons pushback ["arifle_MXM_SOS_pointer_F", "30Rnd_65x39_caseless_mag_Tracer", 7];
//a3e_arr_CivilianCarWeapons pushback ["arifle_Katiba_C_F", "30Rnd_65x39_caseless_green", 5];
//a3e_arr_CivilianCarWeapons pushback ["arifle_Mk20_GL_ACO_F", "UGL_FlareWhite_F", 8];
//a3e_arr_CivilianCarWeapons pushback ["SMG_01_Holo_F", "30Rnd_45ACP_Mag_SMG_01_Tracer_Green", 5];
//a3e_arr_CivilianCarWeapons pushback ["SMG_02_ACO_F", "30Rnd_9x21_Mag", 12];
//a3e_arr_CivilianCarWeapons pushback ["srifle_DMR_06_camo_khs_F", "20Rnd_762x51_Mag", 8];
//a3e_arr_CivilianCarWeapons pushback ["launch_RPG32_F", "RPG32_F", 2];
a3e_arr_CivilianCarWeapons pushback ["MineDetector", objNull, 0];
//a3e_arr_CivilianCarWeapons pushback ["gm_ge_army_medkit_80", objNull, 0];
//a3e_arr_CivilianCarWeapons pushback ["gm_repairkit_01", objNull, 0];
a3e_arr_CivilianCarWeapons pushback ["gm_ferod16_oli", objNull, 0];
a3e_arr_CivilianCarWeapons pushback [objNull, "gm_explosive_petn_charge", 2];
a3e_arr_CivilianCarWeapons pushback [objNull, "gm_handgrenade_frag_dm51", 5];
a3e_arr_CivilianCarWeapons pushback [objNull, "gm_smokeshell_wht_dm25", 5];

// Here is a list of scopes, might get randomly added to enemy patrols:
a3e_arr_Scopes = [
	"gm_feroz24_blk"
	,"gm_c79a1_blk"];
//	"optic_Aco"
//	"optic_ACO_grn"
//	,"optic_Arco"
//	,"optic_Hamr"
//	,"optic_MRCO"
//	,"optic_Holosight"];
a3e_arr_Scopes_SMG = [];
a3e_arr_Scopes_Sniper = [
	"gm_feroz24_blk"
	,"gm_c79a1_blk"];
a3e_arr_NightScopes = [];
a3e_arr_TWSScopes = [];

// Here is a list of bipods, might get randomly added to enemy patrols:
a3e_arr_Bipods = [];

//////////////////////////////////////////////////////////////////
// RunExtraction.sqf
// Helicopters that come to pick you up
//////////////////////////////////////////////////////////////////
a3e_arr_extraction_chopper = [
	"CUP_O_Mi17_TK"
	];
a3e_arr_extraction_chopper_escort = [
	//"O_Heli_Attack_02_dynamicLoadout_F"
	"CUP_O_Mi24_D_Dynamic_TK"
	];

//////////////////////////////////////////////////////////////////
// RunExtractionBoat.sqf
// Boats that come to pick you up
//////////////////////////////////////////////////////////////////
a3e_arr_extraction_boat = [
	"O_T_Boat_Armed_01_hmg_F"];
a3e_arr_extraction_boat_escort = [
	"O_T_Boat_Armed_01_hmg_F"];
	
//////////////////////////////////////////////////////////////////
// EscapeSurprises.sqf and CreateSearchDrone.sqf
// Classnames of drones
//////////////////////////////////////////////////////////////////
a3e_arr_searchdrone = [
	"B_UAV_01_F"];

//////////////////////////////////////////////////////////////////
// CreateSearchChopper.sqf
// first chopper that's called when you escape
// Two arrays for "Easy" and "Hard" parameter, both used on stadard setting
//////////////////////////////////////////////////////////////////
a3e_arr_searchChopperEasy = [
	"CUP_B_MH6J_OBS_USA"];
	//"CUP_B_UH1D_GER_KSK"];
a3e_arr_searchChopperHard = [
	"CUP_I_UH1H_gunship_TK_GUE"];
	//"CUP_B_UH1D_gunship_GER_KSK"];
a3e_arr_searchChopper_pilot = [
	"gm_dk_army_crew_84_oli"];
a3e_arr_searchChopper_crew = [
	"gm_dk_army_crew_84_oli"];

if(Param_SearchChopper==0) then {
	a3e_arr_searchChopper = a3e_arr_searchChopperEasy + a3e_arr_searchChopperHard;
};
if(Param_SearchChopper==1) then {
	a3e_arr_searchChopper = a3e_arr_searchChopperEasy;
};
if(Param_SearchChopper==2) then {
	a3e_arr_searchChopper = a3e_arr_searchChopperHard;
};

//////////////////////////////////////////////////////////////////
// fn_AmbientInfantry
// only INS is used
//is this even used?
//////////////////////////////////////////////////////////////////
a3e_arr_AmbientInfantry_Inf_INS = a3e_arr_Escape_InfantryTypes;
a3e_arr_AmbientInfantry_Inf_GUE = a3e_arr_Escape_InfantryTypes_Ind;

//////////////////////////////////////////////////////////////////
// fn_InitGuardedLocations
// Units spawned to guard ammo camps and com centers
// Only INS used
//////////////////////////////////////////////////////////////////
a3e_arr_InitGuardedLocations_Inf_INS = a3e_arr_Escape_InfantryTypes;
a3e_arr_InitGuardedLocations_Inf_GUE = a3e_arr_Escape_InfantryTypes_Ind;

//////////////////////////////////////////////////////////////////
// fn_roadblocks
// units spawned on roadblocks
// Only INS used
// vehicle arrays not used, uses a3e_arr_Escape_RoadBlock_MannedVehicleTypes and a3e_arr_Escape_RoadBlock_MannedVehicleTypes_Ind instead
//////////////////////////////////////////////////////////////////
a3e_arr_roadblocks_Inf_INS = a3e_arr_Escape_InfantryTypes;
a3e_arr_roadblocks_Inf_GUE = a3e_arr_Escape_InfantryTypes_Ind;

a3e_arr_roadblocks_Veh_INS = a3e_arr_Escape_RoadBlock_MannedVehicleTypes;
a3e_arr_roadblocks_Veh_GUE = a3e_arr_Escape_RoadBlock_MannedVehicleTypes_Ind;

//////////////////////////////////////////////////////////////////
// fn_PopulateAquaticPatrol
// boats that are spawned
//////////////////////////////////////////////////////////////////
a3e_arr_AquaticPatrols = [
	"CUP_B_RHIB_USMC"
	,"CUP_B_Zodiac_USMC"];

//////////////////////////////////////////////////////////////////
// fn_AmmoDepot
// What kind of weapon boxes are spawned when the parameter "additional weapons" is activated
// use to add boxes from mods to the ammo depots
//////////////////////////////////////////////////////////////////
a3e_additional_weapon_box_1 = "gm_AmmoBox_1000Rnd_762x51mm_b_DM41_g3";
a3e_additional_weapon_box_2 = "gm_AmmoBox_4Rnd_44x537mm_heat_DM32_pzf44_2";

//////////////////////////////////////////////////////////////////
// fn_MortarSite
// mortar spawned in the mortar camps
//////////////////////////////////////////////////////////////////
a3e_arr_MortarSite = [
	"CUP_B_M252_US"];

//////////////////////////////////////////////////////////////////
// fn_CallCAS.sqf
// Classnames of planes for the CAS module
//////////////////////////////////////////////////////////////////
a3e_arr_CASplane = [
	"CUP_O_L39_TK"
	,"CUP_I_L39_AAF"];

//////////////////////////////////////////////////////////////////
// fn_CrashSite
// Random crashsite of west heli with west weapons
//////////////////////////////////////////////////////////////////
// The following arrays define weapons and ammo contained at crash sites
// Index 0: Weapon classname.
// Index 1: Weapon's probability of presence (in percent, 0-100).
// Index 2: If weapon exists, crate contains at minimum this number of weapons of current class.
// Index 3: If weapon exists, crate contains at maximum this number of weapons of current class.
// Index 4: Array of magazine classnames. Magazines of these types are present if weapon exists.
// Index 5: Number of magazines per weapon that exists.
a3e_arr_CrashSiteWrecks = [
	"cwa_C130Wreck"
	,"Land_Wreck_C130J_EP1_ruins"
	,"Land_Wreck_C130J_EP1_ruins"];
a3e_arr_CrashSiteCrew = [
	"gm_gc_army_crew_mpiaks74nk_80_blk"
	,"gm_gc_army_crew_mpiaks74nk_80_blk"];
a3e_arr_CrashSiteWrecksCar = [
	"Land_Wreck_HMMWV_F"
	,"M113Wreck"
	,"M113Wreck"];
a3e_arr_CrashSiteCrewCar = [
	"gm_gc_army_crew_mpiaks74nk_80_blk"
	,"gm_gc_bgs_rifleman_mpikm72_80_str"];
// Weapons and ammo in crash site box
a3e_arr_CrashSiteWeapons = [];
a3e_arr_CrashSiteWeapons pushback ["gm_rpg7_prp", 20, 1, 2, ["gm_1rnd_40mm_heat_pg7v_rpg7"], 3];
a3e_arr_CrashSiteWeapons pushback ["gm_svd_wud", 10, 1, 2, ["gm_10Rnd_762x54mmR_api_7bz3_svd_blk"], 2];
a3e_arr_CrashSiteWeapons pushback ["gm_svd_wud", 10, 1, 2, ["gm_10Rnd_762x54mmR_b_t_7t2_svd_blk"], 8];
a3e_arr_CrashSiteWeapons pushback ["gm_mpikms72_brn", 50, 2, 4, ["gm_30rnd_762x39mm_b_t_m43_ak47_blk"], 6];
a3e_arr_CrashSiteWeapons pushback ["gm_akm_wud", 75, 2, 4, ["gm_30rnd_762x39mm_b_t_m43_ak47_blk"], 6];
a3e_arr_CrashSiteWeapons pushback ["gm_hmgpkm_prp", 30, 1, 2, ["gm_100rnd_762x54mm_b_t_t46_pk_grn"], 6];
a3e_arr_CrashSiteWeapons pushback ["gm_lmgrpk74n_prp", 30, 1, 2, ["gm_45rnd_545x39mm_b_t_7t3_ak74_prp"], 8];
a3e_arr_CrashSiteWeapons pushback ["gm_lp1_blk", 50, 1, 2, ["gm_1Rnd_265mm_flare_multi_nbc_DM47","gm_1Rnd_265mm_flare_single_grn_gc"], 8];
// Attachments and other items in crash site box
a3e_arr_CrashSiteItems = [];
a3e_arr_CrashSiteItems pushback ["gm_pso1_gry", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["gm_zfk4x25_blk", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["gm_pgo7v_blk", 20, 1, 3];