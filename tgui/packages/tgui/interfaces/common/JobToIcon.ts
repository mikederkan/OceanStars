export type AvailableJob = keyof typeof JOB2ICON;

/** Icon map of jobs to their fontawesome5 (free) counterpart. */
// SKYRAT EDIT START - ORIGINAL: export const JOB2ICONs = {
const BASEICONS = {
  // SKYRAT EDIT - END
  AI: 'eye',
  Assistant: 'toolbox',
  Bartender: 'cocktail',
  'Bit Avatar': 'code',
  Bitrunner: 'gamepad',
  Botanist: 'seedling',
  Captain: 'crown',
  'Cargo Technician': 'box',
  'CentCom Commander': 'star',
  'CentCom Head Intern': 'pen-fancy',
  'CentCom Intern': 'pen-alt',
  'CentCom Official': 'medal',
  Chaplain: 'cross',
  Chef: 'utensils',
  Chemist: 'prescription-bottle',
  'Chief Engineer': 'user-astronaut',
  'Chief Medical Officer': 'user-md',
  Clown: 'face-grin-tears',
  Cook: 'utensils',
  Curator: 'book',
  'Cyber Police': 'qrcode',
  Cyborg: 'robot',
  Detective: 'user-secret',
  Geneticist: 'dna',
  'Head of Personnel': 'dog',
  'Head of Security': 'user-shield',
  Janitor: 'soap',
  'Medical Doctor': 'staff-snake',
  Mime: 'comment-slash',
  Paramedic: 'truck-medical',
  'Personal AI': 'mobile-alt',
  Prisoner: 'lock',
  Psychologist: 'brain',
  Quartermaster: 'sack-dollar',
  'Research Director': 'user-graduate',
  Roboticist: 'battery-half',
  Scientist: 'flask',
  'Security Officer (Cargo)': 'shield-halved',
  'Security Officer (Engineering)': 'shield-halved',
  'Security Officer (Medical)': 'shield-halved',
  'Security Officer (Science)': 'shield-halved',
  'Security Officer': 'shield-halved',
  'Shaft Miner': 'digging',
  Shipbreaker: 'rocket',
  'Station Engineer': 'bolt-lightning',
  'Station Mechanic': 'gears',
  'Syndicate Operative': 'dragon',
  Warden: 'handcuffs',
} as const;

// SKYRAT EDIT START - ALT TITLES
const ALTTITLES = {
  // AI - eye
  'Station Intelligence': BASEICONS['AI'],
  'Automated Overseer': BASEICONS['AI'],
  // Assistant - toolbox
  Civilian: BASEICONS['Assistant'],
  Tourist: BASEICONS['Assistant'],
  Businessman: BASEICONS['Assistant'],
  Businesswoman: BASEICONS['Assistant'],
  Trader: BASEICONS['Assistant'],
  Entertainer: BASEICONS['Assistant'],
  Freelancer: BASEICONS['Assistant'],
  Artist: BASEICONS['Assistant'],
  'Off-Duty Staff': BASEICONS['Assistant'],
  'Off-Duty Crew': BASEICONS['Assistant'],
  // Bartender - cocktail
  Mixologist: BASEICONS['Bartender'],
  Barkeeper: BASEICONS['Bartender'],
  Barista: BASEICONS['Bartender'],
  // Botanist - seedling
  Hydroponicist: BASEICONS['Botanist'],
  Gardener: BASEICONS['Botanist'],
  'Botanical Researcher': BASEICONS['Botanist'],
  Herbalist: BASEICONS['Botanist'],
  Florist: BASEICONS['Botanist'],
  // Captain - crown
  'Station Commander': BASEICONS['Captain'],
  'Commanding Officer': BASEICONS['Captain'],
  'Site Manager': BASEICONS['Captain'],
  // Cargo Technician - box
  'Warehouse Technician': BASEICONS['Cargo Technician'],
  'Deck Worker': BASEICONS['Cargo Technician'],
  Mailman: BASEICONS['Cargo Technician'],
  'Union Associate': BASEICONS['Cargo Technician'],
  'Inventory Associate': BASEICONS['Cargo Technician'],
  // Chaplain - cross
  Priest: BASEICONS['Chaplain'],
  Preacher: BASEICONS['Chaplain'],
  Reverend: BASEICONS['Chaplain'],
  Oracle: BASEICONS['Chaplain'],
  Pontifex: BASEICONS['Chaplain'],
  Magister: BASEICONS['Chaplain'],
  'High Priest': BASEICONS['Chaplain'],
  Imam: BASEICONS['Chaplain'],
  Rabbi: BASEICONS['Chaplain'],
  Monk: BASEICONS['Chaplain'],
  // Chemist - prescription-bottle
  Pharmacist: BASEICONS['Chemist'],
  Pharmacologist: BASEICONS['Chemist'],
  'Trainee Pharmacist': BASEICONS['Chemist'],
  // Chief Engineer - user-astronaut
  'Engineering Foreman': BASEICONS['Chief Engineer'],
  'Head of Engineering': BASEICONS['Chief Engineer'],
  // Chief Medical Officer - user-md
  'Medical Director': BASEICONS['Chief Medical Officer'],
  'Head of Medical': BASEICONS['Chief Medical Officer'],
  'Chief Physician': BASEICONS['Chief Medical Officer'],
  'Head Physician': BASEICONS['Chief Medical Officer'],
  // Clown - face-grin-tears
  Jester: BASEICONS['Clown'],
  Joker: BASEICONS['Clown'],
  Comedian: BASEICONS['Clown'],
  // Cook/Chef - utensils
  Butcher: BASEICONS['Cook'],
  'Culinary Artist': BASEICONS['Cook'],
  'Sous-Chef': BASEICONS['Cook'],
  // Curator - book
  Librarian: BASEICONS['Curator'],
  Journalist: BASEICONS['Curator'],
  Archivist: BASEICONS['Curator'],
  // Cyborg - robot
  Robot: BASEICONS['Cyborg'],
  Android: BASEICONS['Cyborg'],
  // Detective - user-secret
  'Forensic Technician': BASEICONS['Detective'],
  'Private Investigator': BASEICONS['Detective'],
  'Forensic Scientist': BASEICONS['Detective'],
  // Geneticist - dna
  'Mutation Researcher': BASEICONS['Geneticist'],
  // Head of Personnel - dog
  'Executive Officer': BASEICONS['Head of Personnel'],
  'Employment Officer': BASEICONS['Head of Personnel'],
  'Crew Supervisor': BASEICONS['Head of Personnel'],
  // Head of Security - user-shield
  'Security Commander': BASEICONS['Head of Security'],
  'Chief Constable': BASEICONS['Head of Security'],
  'Chief of Security': BASEICONS['Head of Security'],
  Sheriff: BASEICONS['Head of Security'],
  // Janitor - soap
  Custodian: BASEICONS['Janitor'],
  'Custodial Technician': BASEICONS['Janitor'],
  'Sanitation Technician': BASEICONS['Janitor'],
  Concierge: BASEICONS['Janitor'],
  Maid: BASEICONS['Janitor'],
  // Medical Doctor - staff-snake
  Surgeon: BASEICONS['Medical Doctor'],
  Nurse: BASEICONS['Medical Doctor'],
  'General Practitioner': BASEICONS['Medical Doctor'],
  'Medical Resident': BASEICONS['Medical Doctor'],
  Physician: BASEICONS['Medical Doctor'],
  // Mime - comment-slash
  Pantomimist: BASEICONS['Mime'],
  // Paramedic - truck-medical
  'Emergency Medical Technician': BASEICONS['Paramedic'],
  'Search and Rescue Technician': BASEICONS['Paramedic'],
  // Prisoner - lock
  'Minimum Security Prisoner': BASEICONS['Prisoner'],
  'Maximum Security Prisoner': BASEICONS['Prisoner'],
  'SuperMax Security Prisoner': BASEICONS['Prisoner'],
  'Protective Custody Prisoner': BASEICONS['Prisoner'],
  Convict: BASEICONS['Prisoner'],
  Felon: BASEICONS['Prisoner'],
  Inmate: BASEICONS['Prisoner'],
  // Psychologist - brain
  Psychiatrist: BASEICONS['Psychologist'],
  Therapist: BASEICONS['Psychologist'],
  Counsellor: BASEICONS['Psychologist'],
  // Quartermaster - sack-dollar
  'Union Requisitions Officer': BASEICONS['Quartermaster'],
  'Deck Chief': BASEICONS['Quartermaster'],
  'Warehouse Supervisor': BASEICONS['Quartermaster'],
  'Supply Foreman': BASEICONS['Quartermaster'],
  'Head of Supply': BASEICONS['Quartermaster'],
  'Logistics Coordinator': BASEICONS['Quartermaster'],
  // Research Director - user-graduate
  'Silicon Administrator': BASEICONS['Research Director'],
  'Lead Researcher': BASEICONS['Research Director'],
  'Biorobotics Director': BASEICONS['Research Director'],
  'Research Supervisor': BASEICONS['Research Director'],
  'Chief Science Officer': BASEICONS['Research Director'],
  // Roboticist - battery-half
  'Biomechanical Engineer': BASEICONS['Roboticist'],
  'Mechatronic Engineer': BASEICONS['Roboticist'],
  'Apprentice Roboticist': BASEICONS['Roboticist'],
  // Scientist - flask
  'Circuitry Designer': BASEICONS['Scientist'],
  Xenobiologist: BASEICONS['Scientist'],
  Cytologist: BASEICONS['Scientist'],
  'Plasma Researcher': BASEICONS['Scientist'],
  Anomalist: BASEICONS['Scientist'],
  'Lab Technician': BASEICONS['Scientist'],
  'Theoretical Physicist': BASEICONS['Scientist'],
  'Ordnance Technician': BASEICONS['Scientist'],
  Xenoarchaeologist: BASEICONS['Scientist'],
  'Research Assistant': BASEICONS['Scientist'],
  'Graduate Student': BASEICONS['Scientist'],

  // Security Officer - shield-halved
  'Security Operative': BASEICONS['Security Officer'],
  Peacekeeper: BASEICONS['Security Officer'],
  'Security Cadet': BASEICONS['Security Officer'],
  // Shaft Miner - digging
  'Union Miner': BASEICONS['Shaft Miner'],
  Excavator: BASEICONS['Shaft Miner'],
  Spelunker: BASEICONS['Shaft Miner'],
  'Drill Technician': BASEICONS['Shaft Miner'],
  Prospector: BASEICONS['Shaft Miner'],
  // Shipbreaker: - rocket
  Shipbreaker: BASEICONS['Shipbreaker'],
  'Salvage Technician': BASEICONS['Shipbreaker'],
  'Systems Reclaimer': BASEICONS['Shipbreaker'],
  Scrapper: BASEICONS['Shipbreaker'],
  Junker: BASEICONS['Shipbreaker'],
  Breaker: BASEICONS['Shipbreaker'],
  'Ship Butcher': BASEICONS['Shipbreaker'],
  // Station Engineer - bolt-lightning
  'Station Engineer': BASEICONS['Station Engineer'],
  'Maintenance Engineer': BASEICONS['Station Engineer'],
  'HVAC Engineer': BASEICONS['Station Engineer'],
  Electrician: BASEICONS['Station Engineer'],
  'EVA Technician': BASEICONS['Station Engineer'],
  'Atmospheric Technician': BASEICONS['Station Engineer'],
  'Life Support Technician': BASEICONS['Station Engineer'],
  'Infrastructure Specialist': BASEICONS['Station Engineer'],
  'Solar Technician': BASEICONS['Station Engineer'],
  'Apprentice Engineer': BASEICONS['Station Engineer'],
  // Station Mechanic - gears
  'Station Mechanic': BASEICONS['Station Mechanic'],
  Plumber: BASEICONS['Station Mechanic'],
  Hydromechanic: BASEICONS['Station Mechanic'],
  'Fluid Systems Technician': BASEICONS['Station Mechanic'],
  'Mechanical Systems Specialist': BASEICONS['Station Mechanic'],
  // Virologist - virus
  Virologist: 'virus',
  Pathologist: BASEICONS['Virologist'],
  'Junior Pathologist': BASEICONS['Virologist'],
  // Warden - handcuffs
  'Brig Sergeant': BASEICONS['Warden'],
  'Dispatch Officer': BASEICONS['Warden'],
  'Brig Governor': BASEICONS['Warden'],
  Jailer: BASEICONS['Warden'],
} as const;

// Combine the Base icons and ALt titles
export const JOB2ICON = { ...BASEICONS, ...ALTTITLES } as const;
// SKYRAT EDIT END
