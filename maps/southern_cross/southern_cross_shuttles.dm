//Shuttle Consoles

/obj/machinery/computer/shuttle_control/multi/response
	name = "response shuttle console"
	shuttle_tag = "Response Operations"
	req_access = list(access_cent_specops)

/obj/machinery/computer/shuttle_control/multi/shuttle1
	name = "shuttle control console"
	shuttle_tag = "shuttle1"
	icon_screen = "shuttle"

/obj/machinery/computer/shuttle_control/multi/shuttle2
	name = "shuttle control console"
	shuttle_tag = "shuttle2"
	icon_screen = "shuttle"

/obj/machinery/computer/shuttle_control/centcom
	name = "shuttle control console"
	req_access = list(access_cent_general)
	shuttle_tag = "centcom"

/obj/machinery/computer/shuttle_control/administration
	name = "shuttle control console"
	req_access = list(access_cent_general)
	shuttle_tag = "administration"

/obj/machinery/computer/shuttle_control/multi/skipjack
	name = "skipjack control console"
	req_access = list(access_syndicate)
	shuttle_tag = "Skipjack"

/obj/machinery/computer/shuttle_control/multi/syndicate
	name = "mercenary shuttle control console"
	req_access = list(access_syndicate)
	shuttle_tag = "Mercenary"

/obj/machinery/computer/shuttle_control/multi/ninja
	name = "stealth shuttle control console"
	req_access = list(access_syndicate)
	shuttle_tag = "Ninja"

/obj/machinery/computer/shuttle_control/merchant
	name = "merchant shuttle control console"
	icon_keyboard = "power_key"
	icon_screen = "shuttle"
	shuttle_tag = "Merchant"

//ERT Response Shuttle

datum/shuttle/multi_shuttle/response
	name = "Response Operations"
	warmup_time = 5
	origin = /area/shuttle/response_ship/start
	interim = /area/shuttle/response_ship/transit
	start_location = "Response Team Ship"
	destinations = list(
		"Northwest of First deck" = /area/shuttle/response_ship/firstdeck,
		"Southeast of Second deck" = /area/shuttle/response_ship/seconddeck,
		"Northeast of Third deck" = /area/shuttle/response_ship/thirddeck,
		"Planetside Site" = /area/shuttle/response_ship/planet,
		"Docking Port" = /area/shuttle/response_ship/arrivals_dock,
		)
	docking_controller_tag = "response_shuttle"
	destination_dock_targets = list(
		"Response Team Base" = "response_ship",
		"Docking Port" = "response_shuttle_dock_airlock",
		)

//Shuttle 1
/datum/shuttle/multi_shuttle/shuttle1
	name = "Shuttle1"
	warmup_time = 10
	origin = /area/shuttle/shuttle1/start
	interim = /area/shuttle/shuttle1/transit
	start_location = "Southern Cross Hangar One"
	destinations = list(
		"South of Second Deck" = /area/shuttle/shuttle1/seconddeck,
		"Planetside Site" = /area/shuttle/shuttle1/planet,
		"Docking Port" = /area/shuttle/shuttle1/arrivals_dock,
		)
	docking_controller_tag = "shuttle1_shuttle"
	destination_dock_targets = list(
		"Hangar One" = "hangar_ship",
		"Southern Cross Docking Port" = "shuttle1_dock_airlocksc",
		)
	announcer = "Southern Cross Docking Computer"
	arrival_message = "Attention, shuttle one returning. Clear Hangar Deck One."
	departure_message = "Attention, shuttle one departing. Clear Hangar Deck One."

//Shuttle 2
/datum/shuttle/multi_shuttle/shuttle2
	name = "Shuttle2"
	warmup_time = 10
	origin = /area/shuttle/shuttle2/start
	interim = /area/shuttle/shuttle2/transit
	start_location = "Southern Cross Hangar One"
	destinations = list(
		"South of Second Deck" = /area/shuttle/shuttle2/seconddeck,
		"Planetside Site" = /area/shuttle/shuttle2/planet,
		"Docking Port" = /area/shuttle/shuttle2/arrivals_dock,
		)
	docking_controller_tag = "shuttle2_shuttle"
	destination_dock_targets = list(
		"Hangar One" = "hangar_ship",
		"Southern Cross Docking Port" = "shuttle2_dock_airlocksc",
		)
	announcer = "Southern Cross Docking Computer"
	arrival_message = "Attention, shuttle one returning. Clear Hangar Deck Two."
	departure_message = "Attention, shuttle one departing. Clear Hangar Deck Two."

//Admin

/datum/shuttle/ferry/administration
	name = "Administration"
	location = 1
	warmup_time = 10	//want some warmup time so people can cancel.
	area_offsite = /area/shuttle/administration/centcom
	area_station = /area/shuttle/administration/station
	docking_controller_tag = "admin_shuttle"
	dock_target_station = "admin_shuttle_dock_airlock"
	dock_target_offsite = "admin_shuttle_bay"

//Transport

/datum/shuttle/ferry/centcom
	name = "Centcom"
	location = 1
	warmup_time = 10
	area_offsite = /area/shuttle/transport1/centcom
	area_station = /area/shuttle/transport1/station
	docking_controller_tag = "centcom_shuttle"
	dock_target_station = "centcom_shuttle_dock_airlock"
	dock_target_offsite = "centcom_shuttle_bay"

//Merc

/datum/shuttle/multi_shuttle/mercenary
	name = "Mercenary"
	warmup_time = 0
	origin = /area/syndicate_station/start
	interim = /area/syndicate_station/transit
	start_location = "Mercenary Ship"
	destinations = list(
		"Northwest of First Deck" = /area/syndicate_station/firstdeck,
		"Northeast of the Second deck" = /area/syndicate_station/seconddeck,
		"Southeast of Third deck" = /area/syndicate_station/thirddeck,
		"Planetside" = /area/syndicate_station/planet,
		"Docking Port" = /area/syndicate_station/arrivals_dock,
		)
	docking_controller_tag = "merc_shuttle"
	destination_dock_targets = list(
		"Forward Operating Base" = "merc_base",
		"Docking Port" = "nuke_shuttle_dock_airlock",
		)
	announcer = "Southern Cross Docking Computer"

/datum/shuttle/multi_shuttle/mercenary/New()
	arrival_message = "Attention, vessel docking with the Southern Cross."
	departure_message = "Attention, vessel docking with the Southern Cross."
	..()

//Skipjack

/datum/shuttle/multi_shuttle/skipjack
	name = "Skipjack"
	warmup_time = 0
	origin = /area/skipjack_station/start
	interim = /area/skipjack_station/transit
	destinations = list(
		"North of First deck" = /area/skipjack_station/firstdeck,
		"West of Second deck" = /area/skipjack_station/seconddeck,
		"East of Third deck" = /area/skipjack_station/thirddeck,
		"Planet" = /area/skipjack_station/planet,
		"Docking Port" = /area/skipjack_station/arrivals_dock,
		)
	docking_controller_tag = "skipjack_shuttle"
	destination_dock_targets = list(
		"Raider Outpost" = "skipjack_base",
		"Docking Port" = "skipjack_shuttle_dock_airlock",
		)
	announcer = "Automated Traffic Control"

/datum/shuttle/multi_shuttle/skipjack/New()
	arrival_message = "Attention.  Unidentified object approaching the station."
	departure_message = "Attention.  Unidentified object exiting local space.  Unidentified object expected to escape Kara gravity well with current velocity."
	..()

//Ninja Shuttle.
/datum/shuttle/multi_shuttle/ninja
	name = "Ninja"
	warmup_time = 0
	origin = /area/ninja_dojo/start
	interim = /area/ninja_dojo/transit
	start_location = "Clan Dojo"
	destinations = list(
		"South of First Deck" = /area/ninja_dojo/firstdeck,
		"North of Second Deck" = /area/ninja_dojo/seconddeck,
		"East of Third Deck" = /area/ninja_dojo/thirddeck,
		"Planet Outposts" = /area/ninja_dojo/planet,
		"Docking Port" = /area/ninja_dojo/arrivals_dock,
		)
	docking_controller_tag = "ninja_shuttle"
	destination_dock_targets = list(
		"Dojo Outpost" = "ninja_base",
		"Docking Port" = "ninja_shuttle_dock_airlock",
		)
	announcer = "Southern Cross Sensor Array"
	arrival_message = "Attention, anomalous sensor reading detected entering station proximity."
	departure_message = "Attention, anomalous sensor reading detected leaving station proximity."

//Trade Ship

/datum/shuttle/ferry/merchant
	name = "Merchant"
	warmup_time = 10
	docking_controller_tag = "trade_shuttle"
	dock_target_station = "trade_shuttle_bay"
	dock_target_offsite = "trade_shuttle_dock_airlock"
	area_station = /area/shuttle/merchant/home
	area_offsite = /area/shuttle/merchant/away

//Escape Pods

/datum/shuttle/ferry/emergency/centcom
	name = "Escape"
	location = 1
	warmup_time = 10
	area_offsite = /area/shuttle/escape/centcom
	area_station = /area/shuttle/escape/station
	area_transition = /area/shuttle/escape/transit
	docking_controller_tag = "escape_shuttle"
	dock_target_station = "escape_dock"
	dock_target_offsite = "centcom_dock"
	transit_direction = NORTH
	move_time = SHUTTLE_TRANSIT_DURATION_RETURN

/datum/shuttle/ferry/escape_pod/escape_pod_one
	name = "Escape Pod 1"
	location = 0
	warmup_time = 0
	area_station = /area/shuttle/escape_pod1/station
	area_offsite = /area/shuttle/escape_pod1/centcom
	area_transition = /area/shuttle/escape_pod1/transit
	docking_controller_tag = "escape_pod_1"
	dock_target_station = "escape_pod_1_berth"
	dock_target_offsite = "escape_pod_1_recovery"
	transit_direction = NORTH
	move_time = SHUTTLE_TRANSIT_DURATION_RETURN

/datum/shuttle/ferry/escape_pod/escape_pod_two
	name = "Escape Pod 2"
	location = 0
	warmup_time = 0
	area_station = /area/shuttle/escape_pod2/station
	area_offsite = /area/shuttle/escape_pod2/centcom
	area_transition = /area/shuttle/escape_pod2/transit
	docking_controller_tag = "escape_pod_2"
	dock_target_station = "escape_pod_2_berth"
	dock_target_offsite = "escape_pod_2_recovery"
	transit_direction = NORTH
	move_time = SHUTTLE_TRANSIT_DURATION_RETURN

/datum/shuttle/ferry/escape_pod/escape_pod_three
	name = "Escape Pod 3"
	location = 0
	warmup_time = 0
	area_station = /area/shuttle/escape_pod3/station
	area_offsite = /area/shuttle/escape_pod3/centcom
	area_transition = /area/shuttle/escape_pod3/transit
	docking_controller_tag = "escape_pod_3"
	dock_target_station = "escape_pod_3_berth"
	dock_target_offsite = "escape_pod_3_recovery"
	transit_direction = NORTH
	move_time = SHUTTLE_TRANSIT_DURATION_RETURN

/datum/shuttle/ferry/escape_pod/escape_pod_four
	name = "Escape Pod 4"
	location = 0
	warmup_time = 0
	area_station = /area/shuttle/escape_pod4/station
	area_offsite = /area/shuttle/escape_pod4/centcom
	area_transition = /area/shuttle/escape_pod4/transit
	docking_controller_tag = "escape_pod_4"
	dock_target_station = "escape_pod_4_berth"
	dock_target_offsite = "escape_pod_4_recovery"
	transit_direction = NORTH //should this be SOUTH? I have no idea.
	move_time = SHUTTLE_TRANSIT_DURATION_RETURN

/datum/shuttle/ferry/escape_pod/escape_pod_five
	name = "Escape Pod 5"
	location = 0
	warmup_time = 0
	area_station = /area/shuttle/escape_pod5/station
	area_offsite = /area/shuttle/escape_pod5/centcom
	area_transition = /area/shuttle/escape_pod5/transit
	docking_controller_tag = "escape_pod_5"
	dock_target_station = "escape_pod_5_berth"
	dock_target_offsite = "escape_pod_5_recovery"
	transit_direction = NORTH //should this be WEST? I have no idea.
	move_time = SHUTTLE_TRANSIT_DURATION_RETURN

/datum/shuttle/ferry/escape_pod/escape_pod_six
	name = "Escape Pod 6"
	location = 0
	warmup_time = 0
	area_station = /area/shuttle/escape_pod6/station
	area_offsite = /area/shuttle/escape_pod6/centcom
	area_transition = /area/shuttle/escape_pod6/transit
	docking_controller_tag = "escape_pod_6"
	dock_target_station = "escape_pod_6_berth"
	dock_target_offsite = "escape_pod_6_recovery"
	transit_direction = NORTH //should this be WEST? I have no idea.
	move_time = SHUTTLE_TRANSIT_DURATION_RETURN

/datum/shuttle/ferry/escape_pod/escape_pod_seven
	name = "Escape Pod 7"
	location = 0
	warmup_time = 10
	area_station = /area/shuttle/escape_pod7/station
	area_offsite = /area/shuttle/escape_pod7/centcom
	area_transition = /area/shuttle/escape_pod7/transit
	docking_controller_tag = "escape_pod_7"
	dock_target_station = "escape_pod_7_berth"
	dock_target_offsite = "escape_pod_7_recovery"
	transit_direction = WEST

/datum/shuttle/ferry/escape_pod/escape_pod_eight
	name = "Escape Pod 8"
	location = 0
	warmup_time = 10
	area_station = /area/shuttle/escape_pod8/station
	area_offsite = /area/shuttle/escape_pod8/centcom
	area_transition = /area/shuttle/escape_pod8/transit
	docking_controller_tag = "escape_pod_8"
	dock_target_station = "escape_pod_8_berth"
	dock_target_offsite = "escape_pod_8_recovery"
	transit_direction = EAST

/datum/shuttle/ferry/escape_pod/escape_pod_cryo
	name = "Cryostorage Shuttle"
	location = 0
	warmup_time = 0
	area_station = /area/shuttle/cryo/station
	area_offsite = /area/shuttle/cryo/centcom
	area_transition = /area/shuttle/cryo/transit
	docking_controller_tag = "cryostorage_shuttle"
	dock_target_station = "cryostorage_shuttle_berth"
	dock_target_offsite = "cryostorage_shuttle_recovery"
	transit_direction = NORTH
	move_time = SHUTTLE_TRANSIT_DURATION_RETURN

/datum/shuttle/ferry/escape_pod/large_escape_pod1
	name = "Large Escape Pod 1"
	location = 0
	warmup_time = 0
	area_station = /area/shuttle/large_escape_pod1/station
	area_offsite = /area/shuttle/large_escape_pod1/centcom
	area_transition = /area/shuttle/large_escape_pod1/transit
	docking_controller_tag = "large_escape_pod_1"
	dock_target_station = "large_escape_pod_1_berth"
	dock_target_offsite = "large_escape_pod_1_recovery"
	transit_direction = EAST
	move_time = SHUTTLE_TRANSIT_DURATION_RETURN

/datum/shuttle/ferry/escape_pod/large_escape_pod2
	name = "Large Escape Pod 2"
	location = 0
	warmup_time = 0
	area_station = /area/shuttle/large_escape_pod2/station
	area_offsite = /area/shuttle/large_escape_pod2/centcom
	area_transition = /area/shuttle/large_escape_pod2/transit
	docking_controller_tag = "large_escape_pod_2"
	dock_target_station = "large_escape_pod_2_berth"
	dock_target_offsite = "large_escape_pod_2_recovery"
	transit_direction = EAST
	move_time = SHUTTLE_TRANSIT_DURATION_RETURN