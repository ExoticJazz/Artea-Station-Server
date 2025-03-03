/// Generic away/offstation trim.
/datum/id_trim/away
	access = list(ACCESS_AWAY_GENERAL)

/// Trim for the hotel ruin. Not Hilbert's Hotel.
/datum/id_trim/away/hotel
	access = list(ACCESS_AWAY_GENERAL, ACCESS_AWAY_MAINTENANCE)

/// Trim for the hotel ruin. Not Hilbert's Hotel.
/datum/id_trim/away/hotel/security
	access = list(ACCESS_AWAY_GENERAL, ACCESS_AWAY_MAINTENANCE, ACCESS_AWAY_SEC)

/// Trim for the oldstation ruin/Charlie station
/datum/id_trim/away/old/sec
	access = list(ACCESS_AWAY_GENERAL, ACCESS_AWAY_SEC)
	assignment = "Charlie Station Security Officer"

/// Trim for the oldstation ruin/Charlie station
/datum/id_trim/away/old/sci
	access = list(ACCESS_AWAY_GENERAL, ACCESS_AWAY_SCIENCE)
	assignment = "Charlie Station Scientist"

/// Trim for the oldstation ruin/Charlie station
/datum/id_trim/away/old/eng
	access = list(ACCESS_AWAY_GENERAL, ACCESS_AWAY_ENGINEERING)
	assignment = "Charlie Station Engineer"

/// Trim for the oldstation ruin/Charlie station to access APCs and other equipment
/datum/id_trim/away/old/apc
	access = list(ACCESS_ENGINEERING, ACCESS_ENGINE_EQUIP)
	assignment = "Engineering Equipment Access"

/// Trim for the oldstation ruin/Charlie station to access robots, and downloading of paper publishing software for experiments
/datum/id_trim/away/old/robo
	access = list(ACCESS_AWAY_GENERAL, ACCESS_ROBOTICS, ACCESS_ORDNANCE)

/// Trim for the cat surgeon ruin.
/datum/id_trim/away/cat_surgeon
	assignment = "Cat Surgeon"
	trim_state = "dept-medical"
	department_color = COLOR_MEDICAL_BLUE
	subdepartment_color = COLOR_SERVICE_LIME
	access = list(ACCESS_AWAY_GENERAL, ACCESS_AWAY_MAINTENANCE)

/// Trim for Hilbert in Hilbert's Hotel.
/datum/id_trim/away/hilbert
	assignment = "Head Researcher"
	department_color = COLOR_COMMAND_BLUE
	subdepartment_color = COLOR_SCIENCE_PINK
	trim_state = "dept-science"
	department_state = "departmenthead"
	access = list(ACCESS_AWAY_GENERIC3, ACCESS_RESEARCH)

/// Trim for beach bum lifeguards.
/datum/id_trim/lifeguard
	assignment = "Lifeguard"

/// Trim for beach bum bartenders.
/datum/id_trim/space_bartender
	assignment = "Space Bartender"
	trim_state = "dept-service"
	department_color = COLOR_SERVICE_LIME
	subdepartment_color = COLOR_SERVICE_LIME
	access = list(ACCESS_BAR, ACCESS_KITCHEN)

/// Trim for various Centcom corpses.
/datum/id_trim/centcom/corpse/bridge_officer
	assignment = "Bridge Officer"
	access = list(ACCESS_CENT_CAPTAIN)

/// Trim for various Centcom corpses.
/datum/id_trim/centcom/corpse/commander
	assignment = "Commander"
	access = list(ACCESS_CENT_CAPTAIN, ACCESS_CENT_GENERAL, ACCESS_CENT_SPECOPS, ACCESS_CENT_MEDICAL, ACCESS_CENT_STORAGE)

/// Trim for various Centcom corpses.
/datum/id_trim/centcom/corpse/private_security
	assignment = JOB_CENTCOM_PRIVATE_SECURITY
	department_color = COLOR_CENTCOM_BLUE
	subdepartment_color = COLOR_CENTCOM_BLUE
	access = list(ACCESS_CENT_CAPTAIN, ACCESS_CENT_GENERAL, ACCESS_CENT_SPECOPS, ACCESS_CENT_MEDICAL, ACCESS_CENT_STORAGE, ACCESS_SECURITY, ACCESS_MECH_SECURITY)

/// Trim for various Centcom corpses.
/datum/id_trim/centcom/corpse/private_security/tradepost_officer
	assignment = "Tradepost Officer"
	subdepartment_color = COLOR_CARGO_BROWN

/// Trim for various Centcom corpses.
/datum/id_trim/centcom/corpse/assault
	assignment = "Nanotrasen Assault Force"
	access = list(ACCESS_CENT_CAPTAIN, ACCESS_CENT_GENERAL, ACCESS_CENT_SPECOPS, ACCESS_CENT_MEDICAL, ACCESS_CENT_STORAGE, ACCESS_SECURITY, ACCESS_MECH_SECURITY)

/// Trim for various various ruins.
/datum/id_trim/engioutpost
	assignment = "Senior Station Engineer"
	trim_state = "dept-engineering"
	department_color = COLOR_ENGINEERING_ORANGE
	subdepartment_color = COLOR_ENGINEERING_ORANGE
	access = list(ACCESS_AWAY_GENERAL, ACCESS_AWAY_ENGINEERING, ACCESS_ENGINEERING, ACCESS_ENGINE_EQUIP, ACCESS_MAINT_TUNNELS)

/// Trim for various various ruins.
/datum/id_trim/job/station_engineer/gunner
	assignment = "Gunner"
	template_access = null

/// Trim for pirates.
/datum/id_trim/pirate
	assignment = "Pirate"
	trim_state = "dept-deathsquad"
	department_color = COLOR_MOSTLY_PURE_RED
	subdepartment_color = COLOR_MOSTLY_PURE_RED
	access = list(ACCESS_SYNDICATE)

/// Trim for pirates.
/datum/id_trim/pirate/silverscale
	assignment = "Silver Scale Member"

/// Trim for the pirate captain.
/datum/id_trim/pirate/captain
	assignment = "Pirate Captain"
	trim_state = "dept-deathsquad-gold"

/// Trim for the pirate captain.
/datum/id_trim/pirate/captain/silverscale
	assignment = "Silver Scale VIP"

//Trims for waystation.dmm space ruin
/datum/id_trim/away/waystation/cargo_technician
	assignment = "Waystation Cargo Hauler"
	trim_state = "dept-cargo"
	department_color = COLOR_CARGO_BROWN
	access = list(ACCESS_AWAY_SUPPLY)

/datum/id_trim/away/waystation/quartermaster
	assignment = "Waystation Quartermaster"
	trim_state = "dept-cargo"
	department_color = COLOR_CARGO_BROWN
	access = list(ACCESS_AWAY_SUPPLY, ACCESS_AWAY_COMMAND)

/datum/id_trim/away/waystation/security
	assignment = "Waystation Security Officer"
	trim_state = "dept-security"
	department_color = COLOR_CARGO_BROWN
	access = list(ACCESS_AWAY_SUPPLY, ACCESS_AWAY_SEC)
