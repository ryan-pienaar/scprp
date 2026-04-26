# SCP: Roleplay — Server Planning Document
### Site-15 | "Secure. Contain. Protect."

> *This document outlines the complete design vision, lore, faction structure, gameplay systems, and operational standards for the SCP-RP server. It is intended as the authoritative reference for developers, staff, and senior players.*

---

## Table of Contents

1. [Executive Overview](#1-executive-overview)
2. [The SCP Foundation — Lore Primer](#2-the-scp-foundation--lore-primer)
3. [Site-15 — History & Setting](#3-site-15--history--setting)
4. [Site Layout & Zones](#4-site-layout--zones)
5. [Factions — Detailed Breakdown](#5-factions--detailed-breakdown)
6. [SCP Roster — Containment Files](#6-scp-roster--containment-files)
7. [The Chaos Insurgency](#7-the-chaos-insurgency)
8. [Gameplay Systems](#8-gameplay-systems)
9. [Economy & Pay Structure](#9-economy--pay-structure)
10. [Server Events](#10-server-events)
11. [Whitelist & Promotion System](#11-whitelist--promotion-system)
12. [Roleplay Standards & Rules](#12-roleplay-standards--rules)
13. [Staff Structure](#13-staff-structure)
14. [Future Development Roadmap](#14-future-development-roadmap)

---

## 1. Executive Overview

### Concept

This server is a **heavy roleplay SCP Foundation gamemode** built on the Helix framework for Garry's Mod. The experience centres on the tension between containment and chaos — Foundation personnel work together to maintain order within a classified research facility while anomalous entities test those boundaries from within, and the Chaos Insurgency probes them from without.

Unlike action-oriented SCP servers, this is a **narrative-first** environment. Every round tells a story. A containment breach is not just a combat event — it is a crisis that demands coordination between Security, Engineering, Medical, and MTF. A CI raid is not just a firefight — it is a calculated infiltration with intelligence objectives. A D-Class escaping D-Block is not just a rule violation — it is a character arc.

### Core Design Pillars

| Pillar | Description |
|--------|-------------|
| **Immersion** | Every system, sound, and interaction reinforces the fiction of a real Foundation site |
| **Consequence** | Actions matter. Deaths are meaningful. Breaches have lasting effects on the round |
| **Faction Identity** | Each faction has a distinct culture, purpose, and playstyle that encourages different player personalities |
| **Escalation** | Rounds naturally escalate from routine operations to full crisis scenarios and back |
| **Accessibility** | New players (D-Class) can participate meaningfully from day one without needing whitelist access |

### Target Audience

Players who enjoy serious, immersive roleplay. Players who have read SCP articles and want to inhabit that world. Players who value character development and inter-faction relationships over raw deathmatch. The minimum expected age of the player base is 16.

---

## 2. The SCP Foundation — Lore Primer

### What Is the SCP Foundation?

The SCP Foundation is a clandestine international organisation operating outside the boundaries of any government, accountable to no nation and no public institution. Its mandate is deceptively simple:

- **Secure** anomalous objects, entities, and phenomena before the general public becomes aware of them
- **Contain** those anomalies so that they cannot cause harm to the world
- **Protect** humanity from the knowledge of what lives alongside it

The Foundation operates globally with thousands of staff across dozens of sites. It employs scientists, soldiers, doctors, engineers, psychologists, and administrators — all bound by secrecy, all expendable.

### The Three Object Classes

Every anomaly the Foundation discovers is assigned an object class reflecting the difficulty of containment:

| Class | Description |
|-------|-------------|
| **Safe** | Easily and reliably contained. Often inert without activation |
| **Euclid** | Requires more resources or presents unpredictable behaviour |
| **Keter** | Extremely difficult to contain. Poses existential-level risk if lost |
| **Thaumiel** | Used by the Foundation itself as a containment tool (rare, classified) |
| **Neutralised** | No longer anomalous or terminated |

### Personnel Classification

Foundation employees are designated by class:

| Class | Description |
|-------|-------------|
| **Class A** | Most senior personnel. Never exposed to SCPs directly (O5 Council, etc.) |
| **Class B** | Senior staff with limited SCP exposure (Site Directors, Department Heads) |
| **Class C** | Regular personnel with routine SCP exposure (Researchers, Security, MTF) |
| **Class D** | Expendable test subjects. Convicted criminals conscripted for direct SCP interaction |
| **Class E** | Temporary designation for staff exposed to anomalous effects pending review |

### Clearance Levels

Access within Foundation facilities is controlled by a five-tier clearance system:

| Level | Label | Typical Holders |
|-------|-------|-----------------|
| 0 | Unclassified | D-Class, civilian contractors |
| 1 | Restricted | Junior staff, Security Officers |
| 2 | Confidential | Experienced staff, Security NCOs |
| 3 | Secret | Senior staff, MTF NCOs, Department Leads |
| 4 | Top Secret | Department Heads, MTF Commanders |
| 5 | Cosmic Top Secret | Site Directors, O5 Representatives |

### The O5 Council

The O5 Council — thirteen individuals designated O5-1 through O5-13 — is the supreme governing body of the Foundation. Their identities are classified even within the organisation. They never directly interact with SCP objects. Their decisions are final and cannot be appealed by any member of the Foundation below them.

---

## 3. Site-15 — History & Setting

### Designation

**Site-15** (Official Designation: Armed Biological and Keter Containment Area-15) is a large subterranean research and containment facility located beneath a remote mountain range. Its surface presence consists of a decommissioned mining company whose operations serve as cover for supply deliveries and personnel transit.

Site-15 is classified as a **containment area** rather than a research area, meaning its primary function is the housing and stabilisation of anomalies rather than their study. Research is secondary, conducted under carefully controlled conditions.

### Founding — 1962

Site-15 was established in the aftermath of **Incident Greenvale**, a classified event in which a previously unknown Keter-class entity (later designated SCP-682) was discovered by a Foundation field team in a remote mountain region. Initial containment using above-ground structures proved inadequate. The decision was made to construct a permanent subterranean facility at the discovery site, taking advantage of natural rock formations that appeared to dampen certain anomalous properties.

Construction took eleven years and required the displacement of two townships through Foundation-arranged land purchases. The facility opened in 1973.

### Notable Historical Incidents

#### The Greenvale Protocol Breach (1978)
Five years after opening, SCP-682's containment chamber suffered a structural failure during a seismic event. The entity breached containment for 17 hours. 23 Foundation personnel were killed before re-containment was achieved using experimental acid flooding procedures. The incident prompted a complete redesign of Site-15's containment architecture and established the modern standard for Keter-class containment chambers.

#### The 049 Acquisition (1984)
SCP-049 was transferred to Site-15 from Site-06-3 following a communication breakdown that resulted in a partial outbreak of SCP-049-2 instances at the originating site. Site-15 was selected due to its superior medical containment infrastructure and its distance from population centres.

#### The Black November Event (1997)
A coordinated Chaos Insurgency raid — the most sophisticated in the organisation's history at that time — targeted Site-15's SCP-914 research wing. CI operatives breached the perimeter, neutralised two MTF squads, and extracted an unspecified number of fine-processed outputs before withdrawal. The subsequent investigation revealed a CI informant embedded within Site-15's Engineering Department for over four years. The informant was terminated; twelve additional personnel were flagged for psychological re-evaluation.

The Black November Event permanently shaped Site-15's security doctrine. Counter-intelligence protocols were significantly enhanced. The CI is now assumed to have at least one active intelligence asset within the facility at any given time.

#### The 096 Incident (2003)
During a routine psychological evaluation, a junior researcher inadvertently viewed SCP-096's facial features through a security camera feed. The resulting breach resulted in the deaths of four personnel before a specially trained E-11 team managed re-containment. The incident gave rise to Site-15's standing "facial occlusion protocol" — all security feeds observing SCP-096's containment chamber are fitted with automated pixel-obscuring filters.

#### The 173 Synchronisation Event (2011)
SCP-173 achieved a simultaneous blink event with 11 personnel in the same corridor — an unprecedented situation in which every observer blinked within 0.3 seconds of each other. Seven personnel were killed. The subsequent investigation was inconclusive. SCP-173's chamber was relocated deeper into the facility, and a minimum three-person escort rule was formally codified.

### Current Status

Site-15 is currently rated at **Security Level 3 — Elevated** due to an uptick in Chaos Insurgency activity in the surrounding region over the past six months. Three personnel have been reported missing in circumstances suggesting external intelligence collection. The facility's O5 liaison has authorised expanded MTF deployment and an increase in D-Class processing intake to compensate for accelerated testing schedules.

The Site Director is **Dr. ████ ████**, a 22-year Foundation veteran who previously served as Head of Research at Site-19. Dr. ████ is known for maintaining strict operational discipline and a zero-tolerance approach to protocol deviation.

---

## 4. Site Layout & Zones

Site-15 is divided into six operational zones, each with distinct clearance requirements and functions. The facility extends approximately 400 metres below the surface across five levels.

### Zone A — Surface & Entrance
**Clearance Required:** None (surface), Level 1 (interior access)

The surface level includes the mining cover facility, vehicle access tunnels, helipad, and primary personnel transit. Below the surface entrance sits the main security checkpoint — the first choke point where all personnel are screened and credentials verified. D-Class are transported directly from surface staging to Level 2 via sealed transport elevators with no contact with the main entrance.

Key locations:
- **Main Gate** — Vehicle and personnel entry. Staffed by Security 24/7
- **Surface Checkpoint** — ID verification and weapons screening
- **Transit Hub** — Elevator banks to lower levels
- **Emergency Escape Tunnels** — Accessible only during lockdown; require Level 3+ keycard

### Zone B — Administrative Level (Level 1)
**Clearance Required:** Level 1 general access, Level 3 for restricted offices

The administrative heart of Site-15. Houses the Site Director's office, department administrative suites, staff cafeteria, medical bay, and the main briefing room.

Key locations:
- **Director's Office** — Accessible Level 4+
- **Staff Cafeteria** — Open to all Foundation personnel Level 1+
- **Main Medical Bay** — Operated by Medical Department
- **Security Briefing Room** — Security and MTF operational planning
- **Research Library** — Accessible Level 2+; contains classified research documents
- **Engineering Control Centre** — Monitors all facility systems

### Zone C — D-Class Housing & Testing (Level 2)
**Clearance Required:** Level 1 for authorised staff, Level 0 for D-Class (restricted zones only)

D-Class Housing and the primary testing block. D-Class live in this zone and are escorted to testing chambers by Security. Unauthorised access by D-Class beyond designated areas is a disciplinary violation. This zone has the highest concentration of Security personnel.

Key locations:
- **D-Block** — D-Class housing cells. Accessed by D-Class with no keycard; all exits require Level 1+ to open from the D-Block side
- **Testing Wing** — Individual testing chambers for SCP-D-Class interaction
- **Security Station Alpha** — Primary Security command post for this zone
- **Armoury** — Secured weapons storage. Level 2+ to access

### Zone D — Secondary Containment (Level 3)
**Clearance Required:** Level 2 general, Level 3 for containment chamber access

Houses Safe and Euclid-class SCPs. Research activity is most concentrated here. Engineering maintains the containment systems from this level.

Key locations:
- **SCP-049 Containment Chamber** — Biohazard-rated, medical support standing by
- **SCP-999 Containment Area** — Open-plan habitat, frequently used for psychological therapy sessions with Foundation staff
- **Secondary Research Labs** — Researcher workspace
- **Containment Engineering Bay** — ETS maintenance hub for this level

### Zone E — Primary Keter Containment (Level 4)
**Clearance Required:** Level 3 general, Level 4 for chamber access, Level 4+ for chamber interior

The most heavily secured zone of the facility. Houses Keter-class SCPs. Automated defensive systems are active at all times. Entry without a valid escort from E-11 or a Level 4+ researcher is a Serious Protocol Violation.

Key locations:
- **SCP-173 Containment Chamber** — Minimum 3-person escort required at all times. Viewing windows are monitored at all angles
- **SCP-096 Containment Chamber** — Entry forbidden except for authorised re-containment teams. All camera feeds auto-obscure facial region
- **SCP-106 Containment Chamber** — Femur breaker device present. Backup containment teams on standby
- **SCP-682 Containment Chamber** — Reinforced acid flooding capability. Emergency termination protocols pre-authorised
- **SCP-939 Multi-Chamber Unit** — Sound-dampening corridors. Personnel must maintain radio silence when entering
- **HCZ Security Station** — E-11 forward command post

### Zone F — Deep Infrastructure (Level 5)
**Clearance Required:** Level 4+ for access, Level 5 for O5 communications suite

The lowest level. Houses the primary reactor, backup systems, long-term archive storage, and the O5 communications suite. Few personnel have clearance here. This zone is ETS's domain — it is accessible only via a single elevator from Zone E.

Key locations:
- **Primary Reactor** — Powers the entire facility. ETS Senior Engineer access only
- **Archive Vault** — Sealed long-term storage for decommissioned SCP documentation
- **O5 Communication Suite** — Accessible Level 5 only; used by the Site Director on a scheduled basis
- **Emergency Flooding Controls** — Whole-facility chemical flooding capability, authorised only by O5 in catastrophic containment failure scenarios

---

## 5. Factions — Detailed Breakdown

### D-Class Personnel

**Role:** Test subjects and the lowest rung of the Foundation hierarchy.

**Lore:** D-Class are drawn primarily from death row inmates across Foundation-affiliated nations, though in recent years the Foundation has expanded intake to include individuals convicted of serious crimes who volunteered for the programme under promise of reduced sentencing. They are issued orange jumpsuits, assigned a numerical designation, and housed in D-Block. Their cooperation is extracted through a combination of incentives (reduced sentencing, improved conditions) and consequences (disciplinary confinement, exposure to aversive anomalies).

D-Class are routinely "cycled" — Foundation policy dictates that all D-Class be terminated on the last day of each month and replaced with fresh intake. This policy is not always strictly enforced at individual sites for practical reasons, but it is Foundation doctrine.

**Gameplay Role:** D-Class are the most free-form faction. They have no formal objectives other than survival. They may attempt to escape D-Block, negotiate with Security, covertly communicate with CI, assist researchers during testing, or simply survive long enough to earn trust and an improved situation. D-Class who survive long enough become increasingly valuable and increasingly interesting characters.

**Expected RP Behaviour:**
- Follow directives from Security. Refuse at your own risk
- RP the fear and desperation of your situation. You know what happens to D-Class
- Escape attempts should be deliberate and RP-driven, not just running for a door
- Relationships with Security and Researchers develop naturally over time
- CI contact should be subtle — overt cooperation with a known enemy is a death sentence

**Chain of Command:**
- D-Class Lead → D-Class Personnel
- D-Class Lead answers to Security, not the Foundation hierarchy

---

### Foundation Security Department (GENSEC)

**Role:** Internal security, D-Class management, checkpoint enforcement, first response.

**Lore:** Security is often called "the boots on the ground." They are the first thing most personnel encounter every morning — staffing checkpoints, patrolling corridors, escorting researchers, and keeping D-Class contained. Security officers are not MTF. They are not expected to re-contain Keter SCPs. Their job is to maintain order within the facility, respond to minor incidents, and hold the line long enough for MTF to arrive when something goes seriously wrong.

Security culture is paramilitary. Rank is everything. Orders flow downward without question, and deviation from protocol is viewed as a serious character flaw. At the same time, Security officers spend more time in genuine contact with D-Class than any other faction, and many develop complicated relationships with the subjects they guard — viewing some with contempt, others with pity, and a few with something approaching respect.

**Gameplay Role:** Security is the most consistently active faction on the server. There is always something for a Security officer to do — escorting, patrolling, checkpoint duty, responding to D-Class incidents, liaising with Research during testing. Security also handles arrest and detainment of any personnel acting in breach of protocols, regardless of faction (with appropriate authority).

**Chain of Command:**
```
Security Commander
    └── Security LT
        └── Security SGT
            ├── Security CPL
            │   └── Security LCPL
            │       ├── Security FTO (lateral — training role)
            │       └── Security Officer (baseline rank)
```

**Expected RP Behaviour:**
- Enforce protocols consistently. Favouritism undermines the department
- Escort D-Class during all testing. Never leave them unattended in a non-secured area
- Log incidents. Security maintains the operational record
- Know when to call MTF. Pride costs lives
- Treat D-Class as assets, not toys. Unnecessary brutalisation is a disciplinary matter

**Interactions:**
- Works closely with Research during testing operations
- Coordinates with E-11 and Nu-7 during breach events
- Reports to Site Administration on daily status
- Adversarial relationship with CI and breached SCPs

---

### Research Department

**Role:** Study and documentation of anomalous entities and objects.

**Lore:** Research is the intellectual heart of the Foundation. Without researchers, containment procedures would be guesses. Without experiments, the Foundation would never understand what it contains well enough to improve containment. Researchers are, by design, the people most willing to put themselves near dangerous things in the name of knowledge — a character trait that does not always serve their life expectancy.

Researchers must be accompanied by Security during all testing involving D-Class. They have high clearance for their rank but are not combat personnel. They rely entirely on Security and MTF for physical protection. This dependency shapes the culture: good researchers cultivate relationships with Security and MTF. Bad researchers issue orders they have no authority to give and end up as statistical outliers in the fatality reports.

The research hierarchy is meritocratic. Published containment procedures, successful experimental outcomes, and documented anomaly interactions build a researcher's career. Data falsification is the gravest academic sin in the Foundation and is treated as a termination-level offence.

**Chain of Command:**
```
Head Researcher
    └── Senior Researcher
        └── Researcher
            └── Junior Researcher
```

**Expected RP Behaviour:**
- All testing must be formally proposed and approved by appropriate level of hierarchy
- Document everything. The research document item exists for a reason
- Request Security escorts through proper channels — not at the last minute
- Engage SCPs intellectually when appropriate. SCP-049 and SCP-999 can hold conversations
- The anomaly scanner is a research tool, not a weapon. Use it appropriately

**Interactions:**
- Primary working relationship with Security (escort requests)
- Coordinates with Medical for biological anomaly testing
- Reports findings to Head Researcher and ultimately Site Administration
- Has authority to direct D-Class during approved testing within defined parameters

---

### Medical Department

**Role:** Health of all facility personnel, psychological support, biological anomaly management.

**Lore:** The Medical Department is smaller than people expect and more vital than people appreciate. In a facility where dozens of personnel are exposed to psychological stressors, physical hazards, and anomalous effects on a daily basis, the Medical Department is the difference between a functional workforce and a broken one.

Medical staff are not simply treating bullet wounds (though they do a lot of that). They are conducting psychological evaluations on personnel who have been exposed to cognitohazards, administering amnestics to individuals whose exposure to classified material exceeds their clearance level, and managing the complex biological effects of prolonged proximity to certain SCPs. The CMO holds authority to place any Foundation personnel on medical hold — including Security and MTF — if their mental or physical fitness is in question.

**Chain of Command:**
```
Chief Medical Officer
    └── Medical Doctor
        └── Field Medic
```

**Expected RP Behaviour:**
- Respond to casualties quickly. You are a support role and your absence is felt
- Conduct psychological evaluations on personnel after anomalous exposure events
- The defibrillator is a last resort. Exhausting conventional treatment first is good RP
- Coordinate with Research on SCP-049 and biological anomaly incidents
- The CMO's medical hold authority is to be used judiciously, not as a power tool

**Interactions:**
- Close coordination with Research on biological anomalies
- Provides casualty treatment in the aftermath of Security and MTF engagements
- Maintains psych records on all personnel — can flag individuals for review
- Works with Engineering on HAZMAT protocols for chemical/biological containment failures

---

### Engineering & Technical Services (ETS)

**Role:** Facility maintenance, containment system upkeep, infrastructure management.

**Lore:** ETS is the faction nobody thinks about until something goes wrong — and then they are the most important people in the building. Power grid management, containment chamber maintenance, door system overhauls, HVAC, water, communications — all of it runs through ETS. A Senior Engineer who has been at Site-15 for a decade knows the facility's weaknesses better than any Security Commander.

ETS occupies a unique position in the social hierarchy. They have high physical access to the facility due to maintenance requirements, but lower social status than Research or Medical. Engineers are the people who keep everyone else alive, and the Foundation's appreciation of that fact is... functional but not warm.

**Chain of Command:**
```
Senior Engineer
    └── Engineer
        └── Technician
```

**Expected RP Behaviour:**
- Prioritise containment system integrity. A failing containment chamber is an emergency
- Know the facility. Engineers should be able to navigate it blind
- Coordinate with Security when accessing secure zones for maintenance
- An EMP event (CI raid) is an all-hands emergency for ETS
- The wrench is a tool. Using it as a weapon is a last resort

**Interactions:**
- Receives work orders from all departments
- Closely tied to Security and MTF during breach events (securing doors, managing power)
- Coordinates with Medical on HAZMAT suit protocols
- Reports facility status to Site Administration

---

### MTF Nu-7 "Hammer Down"

**Role:** Heavy armed response. Breach suppression. Site defence against external incursions.

**Lore:** Nu-7 is the Foundation's sledgehammer. When a containment breach exceeds Security's capability, when CI operatives have breached the outer perimeter, when the situation has moved beyond what can be handled by normal means — Nu-7 arrives. They are combat-focused, heavily armed, and trained for high-intensity operations in the specific environment of a Foundation facility.

Nu-7 culture is military to the core. They function as a conventional fighting force, with fireteams, squad tactics, and clear chains of command. They do not negotiate. They do not deliberate. They receive a task, plan it, and execute. The tension between Nu-7's combat orientation and the more measured approach of E-11 is a constant source of inter-MTF friction — Nu-7 views E-11 as too cautious, E-11 views Nu-7 as too destructive.

**Chain of Command:**
```
Nu-7 Commander
    └── Nu-7 CPT
        └── Nu-7 LT
            └── Nu-7 SGT
                └── Nu-7 CPL
                    └── Nu-7 LCPL
                        └── Nu-7 Private
```

**Expected RP Behaviour:**
- Nu-7 deploys on orders. They do not self-deploy without authorisation from LT+
- Coordinate with Security, not replace them. Nu-7 supports; Security holds ground
- Know the difference between your objectives and E-11's. Don't accidentally disrupt re-containment
- CI raids are your primary external-threat response
- Lethal force on breached SCPs requires LT+ authorisation — note this includes SCP-999

**Interactions:**
- Coordinates with E-11 during breach events (Nu-7 secures zones, E-11 re-contains)
- Receives operational orders from Site Administration during major incidents
- Adversarial with CI — Nu-7 is the primary counter-insurgency force
- Works with Security to establish secure perimeters

---

### MTF Epsilon-11 "Nine-Tailed Fox"

**Role:** SCP re-containment. Internal security during breach events.

**Lore:** E-11 is the most technically specialised MTF unit at Site-15. Every member is trained in the specific containment protocols for every SCP housed at the facility. They know SCP-173's movement patterns, SCP-096's trigger conditions, SCP-106's pocket dimension entry signatures, and SCP-682's adaptation rate. This knowledge makes them extraordinarily valuable — and extraordinarily difficult to replace.

E-11 culture prizes precision over aggression. They are not afraid of violence, but they understand that in a containment context, unnecessary force often makes re-containment harder, not easier. An E-11 Specialist will spend twenty minutes preparing the correct approach to SCP-049 re-containment rather than trying to overpower it — because overpowering SCP-049 is both difficult and pointless if it means losing a team member to its touch.

The rivalry with Nu-7 is real but professional. Both units respect each other's capabilities. The friction is philosophical — E-11 believes in surgical containment; Nu-7 believes in overwhelming force. Both are right in different scenarios.

**Chain of Command:**
```
E-11 Commander
    └── E-11 LT
        └── E-11 SGT
            └── E-11 Specialist
                └── E-11 Containment Unit
```

**Expected RP Behaviour:**
- Study the SCP roster. Know each SCP's behaviour and triggers
- De-escalation is always preferred over lethal force against anomalies
- E-11 leads re-containment operations. Nu-7 supports perimeter control
- Lethal termination is authorised only by E-11 LT+ when re-containment is impossible
- Coordinate containment briefs with Security before operations

**Interactions:**
- Primary operational relationship with Security and Nu-7 during breaches
- Receives intelligence on SCP behaviour from Research
- Reports to Site Administration after each containment event
- Respectfully adversarial with Nu-7 on doctrine (managed IC friction, not OOC conflict)

---

### Site Administration

**Role:** Command authority. Policy. Strategic decision-making.

**Lore:** Administration is the top of the food chain within Site-15. The Site Director runs the facility day-to-day and bears ultimate responsibility for everything that happens within it. An O5 Representative on-site — a rare event — outranks everyone and operates with full O5 Council authority.

Administration does not patrol. Administration does not conduct experiments. Administration makes decisions, reviews reports, receives briefings, and guides the policies that govern everything else. A good Site Director is rarely visible; the facility runs smoothly under their direction without requiring their constant presence. They appear when the situation demands senior authority, and those appearances carry weight.

**Chain of Command:**
```
O5 Representative (if present — exceptional circumstances only)
    └── Site Director
```

**Expected RP Behaviour:**
- Administration is a roleplay-intensive role, not a combat role
- Issue standing orders through proper channels; direct intervention in operations is rare
- Receive briefings from Department Heads. Make policy decisions based on that intelligence
- PA announcements should be used for significant events, not routine updates
- The O5 Representative role should be used sparingly — their presence signals something extraordinary

---

### Chaos Insurgency

**Role:** External antagonist. Raid operations. Intelligence collection. Asset extraction.

**Lore:** The Chaos Insurgency began in 1924 as a splinter of the Foundation itself. A faction of Foundation operatives — convinced that the Foundation's policy of containment was both unsustainable and morally wrong — broke away, taking with them stolen SCP objects, classified documents, and operatives trained in Foundation methods. They have been the Foundation's most persistent adversary ever since.

The CI is not simply a terrorist organisation. They are a sophisticated paramilitary intelligence operation with their own command structure, research divisions, and strategic goals. Where the Foundation contains anomalies, the CI weaponises them. Where the Foundation suppresses public knowledge, the CI selectively reveals it to serve their ends.

At the operational level, CI raids on Foundation sites serve multiple purposes: acquiring SCP objects or their derivatives, extracting D-Class for conversion to operatives, gathering intelligence on Foundation strength and SCP behaviour, and demonstrating that the Foundation is not invulnerable.

CI operatives are trained in Foundation methods because many of them are former Foundation personnel. They know how sites are laid out, how Security responds to breaches, and how to exploit the assumption that a stranger in a lab coat is a researcher.

**Chain of Command:**
```
High Command (rare on-site presence)
    └── CI Commander
        └── CI Lieutenant
            └── CI Specialist
                └── CI Operative
```

**Operational Objectives (tiered by difficulty):**
1. **Intelligence Gathering** — Document site layout, personnel, and SCP status without being detected
2. **Asset Extraction** — Extract targeted D-Class personnel for CI conversion
3. **Item Acquisition** — Steal Foundation technology, research documents, or SCP derivatives
4. **SCP Liberation** — Breach a containment chamber to release an SCP as a distraction or for study
5. **Site Destabilisation** — Cause sufficient disruption to compromise the site's operational integrity

**Expected RP Behaviour:**
- CI does not announce raids. Infiltration is possible and should be pursued before direct assault
- Not every interaction with Foundation personnel should end in combat
- CI has intelligence objectives. Gather it. Use it
- Captured CI operatives should RP their situation — defection, resistance, negotiation are all valid
- Coordination between CI players is expected and encouraged

---

## 6. SCP Roster — Containment Files

### SCP-173 — "The Sculpture"

**Object Class:** Euclid
**Containment Zone:** Zone E, Chamber E-1
**Required Clearance:** Level 4 for chamber access

**Description:** SCP-173 appears to be a concrete statue of an unknown subject, constructed from rebar and poured concrete. It is animate and extremely hostile. The anomalous property of SCP-173 is a strict dependence on visual observation: it is only capable of movement when no sentient being has a direct line of sight to it. Movement ceases the instant it is observed. It kills by cervical dislocation — snapping the neck — or strangulation.

**Containment Procedure:** SCP-173 is contained in a 5m × 5m × 5m reinforced chamber. The chamber is kept under constant CCTV observation with redundant backup systems. A minimum of three personnel must be present during any access event, maintaining continuous visual contact at all times — including during blink events, which must be staggered. A mandatory voice count is required: personnel announce "eyes" when they can see SCP-173 and "blink" before blinking, ensuring at least two eyes remain on the entity at all times.

**Gameplay Notes:**
- SCP-173 cannot move if any player is looking at it (line-of-sight check)
- Movement speed is extremely high when unobserved
- Kill is instant on contact — no health pool interaction
- Re-containment requires E-11 with minimum 3-player escort
- The "blink mechanic" creates natural tension in every interaction

---

### SCP-049 — "The Plague Doctor"

**Object Class:** Euclid
**Containment Zone:** Zone D, Chamber D-1
**Required Clearance:** Level 3 for chamber access

**Description:** SCP-049 resembles a medieval plague doctor, including a full-length robe and distinctive beaked mask. It believes it is treating a pestilence it refers to only as "the Simpleminded" — a condition it claims to detect in most humans. Its touch causes instantaneous cardiac arrest in living subjects. It is capable of reanimating these subjects as SCP-049-2 instances — mindless, aggressive, shambling entities that serve no evident purpose except to threaten nearby Foundation personnel.

Despite its dangerous nature, SCP-049 is communicative, cooperative under the right conditions, and believes sincerely that its methods are beneficial. It has expressed regret at casualties caused during containment events. It will readily engage in conversation with medical staff, and its medical knowledge — though clearly derived from a different, anomalous framework — has occasionally proven useful.

**Containment Procedure:** SCP-049 is contained in a standard humanoid containment chamber with biohazard ratings. Contact is strictly forbidden without Level 3 approval and Medical Department oversight. Interaction sessions must be conducted through the chamber intercom unless a direct consultation with Level 4 approval is authorised.

**Gameplay Notes:**
- Touch causes immediate death to any player
- Can reanimate killed D-Class or Foundation personnel as SCP-049-2 NPCs
- Highly conversational — excellent RP target for researchers and medical staff
- Re-containment through communication is preferred over force
- SCP-049-2 instances must be terminated as a secondary objective during breach events

---

### SCP-096 — "The Shy Guy"

**Object Class:** Euclid
**Containment Zone:** Zone E, Chamber E-2
**Required Clearance:** Level 4 for chamber access — entry to chamber interior is forbidden except for E-11 re-containment operations

**Description:** SCP-096 is a pale, extremely emaciated humanoid approximately 2.38 metres in height. In its dormant state it is non-hostile, sitting with its knees drawn to its chest and its face covered. The trigger condition is the viewing of its facial features by any sentient being — directly, in a photograph, or on a screen. When triggered, SCP-096 enters a hyper-agitated state of extreme aggression and near-physical invincibility, pursuing the "trigger target" at any cost until that individual is deceased. After the kill, SCP-096 returns to docile state.

**Containment Procedure:** SCP-096's chamber has no interior cameras. All external cameras observing the chamber automatically apply facial pixel-blur algorithms. No image of SCP-096's face may be produced, transmitted, or stored. Any breach event requires immediate broadcast to all personnel to avoid visual contact. Re-containment teams must approach with eyes averted, using an approved opaque bag for facial occlusion.

**Gameplay Notes:**
- Trigger condition: any player looks directly at SCP-096's face
- Triggered state: massively increased speed, near-invulnerability, locks onto trigger target
- Non-triggered state: completely harmless
- The server-wide announcement when SCP-096 is triggered creates one of the most distinctive scenarios in any round
- Re-containment requires E-11 to approach without looking at SCP-096's face — a blindfolded approach mechanic

---

### SCP-106 — "The Old Man" / "Radical Larry"

**Object Class:** Keter
**Containment Zone:** Zone E, Chamber E-3
**Required Clearance:** Level 4 for chamber access

**Description:** SCP-106 appears as an elderly male humanoid of extreme age, moving with apparent slowness that is deceptive — it can cover distances with anomalous speed when unobserved. Its touch causes rapid necrotic breakdown of organic and certain inorganic materials, leaving a trail of black corrosive substance. Most dangerously, SCP-106 can phase through solid structures, making conventional containment inherently unreliable.

SCP-106 demonstrates predatory intelligence. It preferentially targets isolated individuals, phasing through walls to approach prey from unexpected directions. It maintains a pocket dimension — described by recovered test subjects as a dark, distorted version of the facility — in which it traps and slowly consumes prey.

**Containment Procedure:** SCP-106 is contained in a 5-metre corrosion-resistant chamber. A "femur breaker" device is installed — a lever-operated vice mechanism that, when activated, forces SCP-106 to return to its chamber by exploiting its predatory instinct to respond to the sound of breaking bone. Activation of the femur breaker requires a D-Class volunteer. This is not a comfortable protocol.

**Gameplay Notes:**
- Can phase through walls (move freely through most doors)
- Touch applies damage-over-time corrosion effect
- Re-containment via femur breaker requires a D-Class player to volunteer — enormous RP moment
- Creates extreme tension as SCP-106 can appear in unexpected locations
- The pocket dimension sends captured players to an isolated spawning zone temporarily

---

### SCP-682 — "The Hard-to-Destroy Reptile"

**Object Class:** Keter
**Containment Zone:** Zone E, Chamber E-4
**Required Clearance:** Level 4 for chamber access — chamber interior access is never authorised under any conditions

**Description:** SCP-682 is a large reptilian entity of unknown origin. Its biology is not fully understood — it appears to adapt rapidly to any damage inflicted upon it, developing biological resistances within hours or even minutes. Its physical size and configuration have varied significantly across containment events. Its hostility toward all life forms is total and apparently motivational — it seeks to destroy life not as a survival response but as an expressed preference.

Every termination attempt has failed. Documented methods attempted include hydrochloric acid immersion (682 developed acid resistance), high-explosive bombardment (682 regenerated), and exposure to SCP-409 (resulted in a containment event for both entities). SCP-682 has expressed verbal contempt for the Foundation and for humanity as a whole.

**Containment Procedure:** SCP-682 is contained in a sealed chamber flooded with hydrochloric acid maintained at a 35% concentration. This slows its regenerative capability but does not neutralise it. Emergency acid flooding can be activated remotely in the event of containment breach, flooding the immediate chamber zone and adjacent corridors. SCP-682 breaches are classified as Automatic Omega-level events requiring immediate mobilisation of all on-site MTF.

**Gameplay Notes:**
- SCP-682 has by far the highest health and armour of any playable SCP
- Re-containment requires overwhelming force — this is a multi-team, coordinated event
- 682 breach is the most serious event possible on the server, triggering full lockdown
- Even "contained" 682 events may require ETS to activate acid flooding
- A 682 breach that is not resolved within the round has narrative consequences for subsequent rounds

---

### SCP-939 — "With Many Voices"

**Object Class:** Euclid
**Containment Zone:** Zone E, Chamber E-5 (multi-chamber unit)
**Required Clearance:** Level 3 for chamber access

**Description:** SCP-939 are a pack-hunting species that resemble large, red-scaled hexapods with vestigial eyes. They are functionally blind but possess exceptional hearing (effective range approximately 10 metres) and olfactory senses. Most disturbingly, SCP-939 can perfectly mimic human speech — specifically the voices of their prior victims. They use this mimicry to lure prey, often repeating calls for help or familiar phrases in voices of deceased Foundation personnel.

SCP-939 are social entities. Individual instances cooperate during hunts. Site-15 contains three instances designated SCP-939-1, -2, and -3.

**Containment Procedure:** Individual chamber units connected by monitored passages. All personnel entering the chamber zone must maintain radio silence — verbal communication attracts the instances. Personnel must wear sound-dampening boots. Movement through the zone is via designated quiet routes only.

**Gameplay Notes:**
- Functionally blind — players can avoid SCP-939 by moving silently (crouching)
- Can detect players by sound (footsteps, weapon sounds, voice)
- Voice mimicry: can repeat things Foundation players have said aloud (RP mechanic)
- Pack behaviour — multiple SCP-939 players should coordinate
- Re-containment via tranquiliser deployment or isolation-room herding

---

### SCP-999 — "The Tickle Monster"

**Object Class:** Safe
**Containment Zone:** Zone D, Area D-2 (open habitat)
**Required Clearance:** Level 1 for interaction; no re-containment complexity

**Description:** SCP-999 is a large, orange, amorphous, gelatinous mass that is uniquely non-threatening. Contact with SCP-999 produces immediate, intense feelings of happiness and euphoria. SCP-999 is proactively friendly, seeking out distressed individuals and appearing to respond to emotional cues. Multiple studies have confirmed measurable healing properties associated with prolonged contact.

SCP-999 has become informally important to Site-15's psychological health. With staff approval, it is sometimes brought to the administrative level for "therapy sessions" following particularly traumatic breach events. It has expressed apparent affection for several long-term staff members.

**Containment Procedure:** SCP-999 is contained in a large open-habitat area with enrichment materials. It rarely attempts to leave and poses no containment challenge. Primary protocol is simply not to expose it to hostile environments that might distress it.

**Gameplay Notes:**
- SCP-999 is a passive SCP — it heals nearby players rather than harming them
- Touching SCP-999 gradually restores health
- SCP-999 players create interesting RP dynamics — escorting it to the medical bay, allowing it to interact with stressed D-Class, etc.
- SCP-999 is never re-contained by force — if loose, it is simply herded back with treats
- The most social SCP on the roster — SCP-999 players should engage extensively with other factions

---

## 7. The Chaos Insurgency

### History

The CI trace their origins to an internal Foundation schism in 1924, when a senior operative designated "The Administrator's Shadow" led a faction of researchers and field agents who believed the Foundation had become paralysed by bureaucracy and moral cowardice. This group argued that anomalous objects should be studied openly, weaponised where appropriate, and that the Foundation's policy of absolute secrecy was both impossible to maintain and ultimately harmful.

The schism was not peaceful. The break-away faction stole classified materials, weapons, and — most critically — a number of anomalous objects before the Foundation could respond. The Foundation attempted to pursue them and largely failed. The group that became the Chaos Insurgency disappeared into the shadows and re-emerged years later as a structured organisation with intelligence networks, research facilities, and combat capabilities that rivalled the Foundation's own.

### Goals

The CI's stated goals have evolved over the decades. Their current known objectives include:

1. **Acquisition of anomalous objects** — particularly Keter-class SCPs and items with weaponisation potential
2. **Undermining Foundation operational capability** — making it harder for the Foundation to contain and conceal anomalies
3. **Intelligence superiority** — knowing more about the Foundation's assets than the Foundation knows about CI capabilities
4. **D-Class conversion** — D-Class are a ready supply of individuals who have seen behind the curtain and have reason to resent the Foundation
5. **Ideological opposition** — The CI believes the world should know about anomalies. This is a genuine belief held by CI High Command, not merely rhetoric

### Structure

The CI operates in cells to limit damage from Foundation infiltration. Individual operatives rarely know more than their immediate chain of command. High Command is entirely unknown to Foundation intelligence — the CI's greatest operational security achievement.

At the field level, CI operatives are professional soldiers and intelligence agents. They are well-equipped, well-trained, and motivated. They are not the desperate criminals the Foundation sometimes portrays them as.

### Rules of Engagement (Ingame)

- CI may not initiate hostile action within 10 minutes of a server restart
- CI raids must be announced on CI radio before initiation (immersion: final briefing)
- CI operatives may not kill D-Class unless they refuse extraction or become security risks
- SCP liberation during raids is encouraged but not required — liberating SCP-682 or SCP-096 without a plan is considered a war crime even by CI standards
- Captured CI operatives should be sent to Security for interrogation, not executed on the spot

---

## 8. Gameplay Systems

### Character Creation

When a player first joins, they are assigned D-Class. Characters are created with:
- A name (Foundation assigns a numeric designation; the character retains a real name in RP)
- A short backstory (why are you here? What were you convicted of? Is it true?)
- Basic appearance selection (model choice from faction pool)
- Attribute point allocation (players receive a small number of starting points to distribute)

Whitelisted factions require separate character creation with more detailed backstory requirements (see Whitelist System).

### Attribute Progression

The six attributes (Strength, Endurance, Medical Knowledge, Research Aptitude, Firearms Proficiency, Stealth) are developed through use:

| Attribute | Gains Through |
|-----------|--------------|
| Strength | Melee combat, carrying heavy items |
| Endurance | Surviving damage, long patrols |
| Medical Knowledge | Using medical items, treating patients |
| Research Aptitude | Completing research documents, scanning anomalies |
| Firearms Proficiency | Accuracy over time with ranged weapons |
| Stealth | Moving undetected, crouching in CI/D-Class escape scenarios |

High attributes provide minor but meaningful bonuses (faster treatment, slightly better accuracy, etc.). Progression is slow and deliberate — this is an RP server, not a grind.

### The Clearance System

Clearance levels are determined by character class and supplemented by physical keycards. The practical effect:

- **Inherent clearance** (from class) allows access to general zones appropriate for that role
- **Physical keycards** can supplement or temporarily grant access above inherent clearance — useful for escorted access, stolen cards, or special authorisations
- **D-Class and CI** have no inherent clearance. A stolen keycard is their only route past checkpoints

Door access — when implemented with a compatible map — checks the Helix keycard data. The schema provides `ix.keycard.CanAccess(character, level)` for any door entity using the keycard library.

### Containment Breach System

Breaches are tracked server-wide by `ix.containment`. When an SCP breaches:

1. Facility-wide PA announcement triggers
2. E-11 and Nu-7 receive targeted alerts with re-containment priority
3. Security receives orders to lock down D-Block and secure checkpoints
4. The breach status is visible to all players with appropriate clearance (Security+ can see status on their HUD)
5. If multiple SCPs breach simultaneously, alert level escalates: ELEVATED at 2 breaches, CRITICAL at 3+

Containment status affects the atmosphere of the entire round. A CRITICAL status should feel like a catastrophe.

### Arrest & Detainment

Security can restrain any player using handcuffs. Restrained players:
- Cannot move above a slow walk
- Cannot attack
- Can still speak (RP continues)
- Must be transported to the brig or nearest Security post

Restraint without cause is a protocol violation. Security must have IC justification. Common justifications:
- D-Class outside permitted zones without escort
- Foundation personnel acting in violation of standing orders
- Unknown individuals not matching the staff roster
- Anyone who attacked Foundation personnel

### Radio System

Each faction has an encrypted radio channel:

| Faction | Channel | Name |
|---------|---------|------|
| Security | 1 | Security Net |
| Research | 2 | Research Net |
| Medical | 3 | Medical Net |
| Engineering | 4 | Engineering Net |
| Nu-7 | 5 | Nu-7 Tactical |
| E-11 | 6 | E-11 Containment |
| CI | 7 | CI Encrypted |
| Administration | 8 | Command (all-channel) |

Radios must be activated from inventory. A deactivated radio receives no transmissions. The radio item is issued to Foundation personnel; D-Class and SCPs have no access. CI use their own encrypted channel.

The EMP grenade (CI item) disrupts active radios within its blast radius for 10 seconds — a significant tactical tool during raids.

### Medical System

Medical treatment occurs through items and RP:
- **Bandage:** Minor bleeding, 20 HP
- **Medkit:** Substantial treatment, 60 HP (self or other)
- **Morphine:** Emergency stimulant, 30 HP + pain resistance
- **Defibrillator:** Medical-only; stabilises critical patients at 30 HP
- **SCP-500:** Complete restoration (extremely rare; admin-granted item)

Medical Department has authority to place personnel on medical hold. This is a powerful RP tool — a CMO who places a traumatised MTF operative on medical hold while SCP-682 is breaching creates dramatic tension.

### Research System

Research RP follows a structured flow:
1. Researcher submits a test proposal (OOC: requests admin approval or uses designated self-approval mechanic for simple tests)
2. Security escort is arranged
3. D-Class subject is assigned/volunteers
4. Test is conducted using the appropriate SCP's mechanics
5. Observations are recorded using the Research Notes item
6. Document is submitted, contributing to the researcher's progression record

Research findings affect the server in tangible ways — a researcher who documents that SCP-049 can be calmed by medical-flavoured conversation changes how E-11 approaches 049 breaches.

### PA Announcement System

The `ix.announcements` library provides a site-wide PA system. Announcement types:

| Type | Use | Display |
|------|-----|---------|
| INFO | Routine status updates, all-clear notifications | Blue |
| WARNING | Elevated threat, minor breach | Yellow |
| ALERT | Containment breach, CI raid, lockdown | Red |
| PA | Administrative announcements, general communication | White |

Site Administration controls full PA access. MTF Commanders can issue tactical alerts through their radio channels. The PA system is one of the primary tools for managing server atmosphere — a good Site Director uses it strategically.

---

## 9. Economy & Pay Structure

### Salary System

All Foundation personnel receive salary payments at regular intervals. Pay is structured to reflect rank and responsibility.

#### Base Faction Pay (Per Interval)

| Faction | Base Pay |
|---------|----------|
| D-Class | ₡0 |
| Security | ₡75 |
| Research | ₡100 |
| Medical | ₡125 |
| Engineering | ₡75 |
| MTF Nu-7 | ₡150 |
| MTF E-11 | ₡175 |
| CI | ₡50 |
| Administration | ₡250 |

#### Class Pay Bonuses (On Top of Faction Pay)

High-ranking classes receive a pay bonus proportional to their additional responsibilities:

| Class | Bonus |
|-------|-------|
| Security Commander | +₡75 |
| Security LT | +₡40 |
| Head Researcher | +₡100 |
| CMO | +₡100 |
| Nu-7 Commander | +₡100 |
| E-11 Commander | +₡100 |
| CI High Command | +₡150 |
| O5 Representative | +₡250 |

### Expenses & Economy Sinks

Currency can be spent on:
- **Items from the Foundation supply terminal:** Bandages (₡5), water (₡2), field rations (₡3), flashlights (₡5), medkits (₡25)
- **Upgrade requests:** Paying for equipment not standard to your class (requires supervisor approval in RP)
- **Bribes (D-Class RP):** D-Class may offer currency to Security in exchange for leniency or small privileges
- **Black market (CI):** CI operatives can trade with D-Class willing to act as intermediaries inside the facility

### D-Class Economy

D-Class receive no salary. Currency for D-Class comes from:
- **Compliance bonuses:** Foundation periodically rewards D-Class who cooperate with testing
- **Trading:** D-Class can trade items among themselves
- **Security bribes:** Some Security officers will trade small privileges for currency
- **CI contact:** CI may pay D-Class for intelligence or to carry items into the facility

This creates interesting player dynamics — a D-Class with money has options; a D-Class with nothing has only compliance or resistance.

---

## 10. Server Events

Events are the lifeblood of the server — structured scenarios that elevate routine roleplay into memorable moments.

### Standard Event Types

#### Containment Breach Event
**Trigger:** SCP player uses breach mechanic or admin-initiated
**Duration:** Until re-containment or termination
**Escalation levels:**
- Single SCP breach: Standard response, E-11 leads
- Two simultaneous breaches: Nu-7 supports, lockdown of non-essential zones
- Mass breach (3+): Full Omega-protocol, all hands, potential site evacuation

**Narrative hook:** Each SCP has a reason it breached. Was it poor containment maintenance (ETS negligence)? A CI device planted near the chamber? A D-Class being used as live bait? The story matters.

#### CI Raid Event
**Trigger:** CI faction organises and announces the raid
**Duration:** Until CI withdraw, CI are neutralised, or CI objectives complete
**Objective tiers:**
1. Reconnaissance only
2. Extract targeted D-Class
3. Steal research or equipment
4. Trigger SCP breach as cover
5. Full site assault

**Narrative hook:** CI raids have specific objectives. A raid focused on extracting a specific D-Class (one that has intel on a new SCP) tells a completely different story than a raid focused on stealing SCP-914 outputs.

#### Testing Event
**Trigger:** Researcher-initiated, after proper approval
**Duration:** Session-based
**Types:**
- D-Class exposed to Safe SCP for documentation
- SCP-049 interview session
- SCP-999 therapeutic contact session
- Cross-testing (two SCPs in same space — requires Level 4+ approval, extremely high-risk)

**Narrative hook:** Testing events are the server's quietest but most emotionally rich scenarios. A D-Class building trust with SCP-049 over multiple sessions before being asked to enter its chamber for a direct test is classic SCP fiction.

#### Administrative Event
**Trigger:** Site Administration or admin team
**Types:**
- Departmental review (formal evaluation of a department's performance)
- Disciplinary hearing (for a specific protocol violation)
- O5 inspection (rare, high-prestige event triggered when O5 Representative is active)
- Promotion ceremony (formal rank advancement events)
- Personnel reassignment (narrative-driven class changes)

#### Cross-Faction Diplomatic Event
**Trigger:** Rare — requires specific conditions
**Examples:**
- CI operatives surrendering and seeking Foundation asylum
- D-Class leading Security to a hidden CI asset in exchange for improved conditions
- Foundation researchers secretly communicating with CI to share anomalous data they believe the Foundation is mismanaging

These are the events that define a server's reputation. They require good faith from all players involved and result in stories worth remembering.

### Event Rotation Principles

- At least one structured event per hour on populated servers
- Containment breaches should vary in SCP type across a play session
- CI raids should not occur more than twice per play session without narrative justification
- Administrative events should happen weekly as scheduled server events
- Special events (mass breach, O5 inspection, major CI assault) should be monthly

---

## 11. Whitelist & Promotion System

### Whitelist Access

The Foundation is not open to all players by default. D-Class is the entry point; all Foundation factions require whitelist.

**Whitelist Application Requirements:**

| Faction | Minimum Server Time | Required | Notes |
|---------|-------------------|----------|-------|
| Security | 3 hours | Basic application | Default starting rank: Officer |
| Research | 5 hours | Application + interview | Basic knowledge of SCP lore expected |
| Medical | 5 hours | Application | Some understanding of medical RP |
| Engineering | 3 hours | Application | Technical RP aptitude |
| MTF Nu-7 | 10 hours | Application + security vetting | Must understand combat RP rules |
| MTF E-11 | 10 hours | Application + SCP knowledge test | Must know containment procedures for all site SCPs |
| Chaos Insurgency | 15 hours | Application + staff interview | Must demonstrate understanding of CI purpose |
| SCP Entities | 10 hours | Application per SCP | Each SCP is a separate whitelist |
| Administration | 20 hours | Staff nomination | Not applied for — must be nominated by existing staff |

### Promotion System

Within each whitelisted faction, advancement follows the chain of command.

**Promotion Criteria (General):**

1. **Time in current rank** — Minimum time requirements prevent rank inflation
2. **Activity** — Regular participation on the server in the role
3. **Conduct** — No outstanding disciplinary actions
4. **RP quality** — Demonstrated ability to contribute meaningfully to the faction's RP
5. **Superior recommendation** — At least one rank above must recommend the promotion
6. **Skill demonstration** — Some ranks require demonstrated competency (E-11 Specialist requires a test of SCP protocol knowledge)

**Minimum Time Requirements by Faction:**

| Rank Range | Minimum Time at Lower Rank |
|-----------|---------------------------|
| Entry → NCO (SGT equivalent) | 1 week active play |
| NCO → Junior Officer (LT equivalent) | 2 weeks active play |
| Junior Officer → Senior Officer (CPT/Commander) | 1 month active play |
| Senior Officer → Command | Staff recommendation + 2 months |

**Demotion:**

Demotions occur for:
- Repeated protocol violations
- Abuse of rank authority
- Inactivity beyond 2 weeks without notice
- OOC conduct issues
- Being captured and debriefed by CI (IC demotion for security compromise — handled by server staff)

### SCP Whitelist Process

Each SCP requires a separate whitelist application demonstrating knowledge of:
- The SCP's lore and behaviours
- Its containment procedures at Site-15
- How to RP the SCP authentically (e.g., SCP-049's medieval affect, SCP-096's dormant behaviour)
- Understanding of re-containment mechanics

SCP-682 requires the most stringent application given its power level. SCP-999 is the most accessible SCP whitelist.

---

## 12. Roleplay Standards & Rules

### Universal RP Rules

1. **Stay in character** at all times in-game. OOC communication happens in OOC chat or designated OOC areas
2. **No random deathmatch (RDM)** — All killing must have IC justification, proportional to the situation
3. **No meta-gaming** — Do not act on information your character does not have
4. **No power-gaming** — Do not force actions on other players. Use /me for action-based RP and give others the opportunity to respond
5. **No character assassination** — Do not use OOC grudges to destroy another player's IC experience
6. **Value your life** — Characters should act as though dying matters. Throwing yourself into SCP-682 for a laugh is not RP
7. **Escalation over instant violence** — Talk before shooting. Orders before force. RP the tension
8. **Respect the narrative** — If a great RP situation is developing, don't derail it for a cheap win

### Faction-Specific Rules

**D-Class:**
- D-Class must be escorted by Security for all movement outside D-Block
- Escape attempts should be realistic — no teleportation glitches, no unrealistic barrier breaches
- D-Class may not acquire firearms except through realistic RP means (pickpocketing, bribery, CI assistance)
- Suicidal behaviour (deliberately running into SCP chambers) is metagaming and treated as RDM

**Security:**
- Security may not execute D-Class without authorisation from SGT+
- Brutality RP is permitted but must be proportional. Torture requires Level 3 authorisation and a RP justification
- Security may not arrest researchers or MTF without SGT+ authorisation and clear IC cause
- Security must escort D-Class during all testing. Leaving D-Class unattended in non-secured areas is a punishable protocol deviation

**Research:**
- All tests must be proposed through the in-RP chain. Self-approved testing is only permitted for Junior and Researcher ranks on Safe-class SCPs
- Researchers may not enter SCP containment chambers without appropriate escort and clearance
- Deliberately triggering SCP breaches for research data is a Level 3 Protocol Violation
- Sharing classified research with CI is a termination-level offence

**MTF (Both Units):**
- MTF may not deploy without authorisation from their LT or higher
- Lethal force against D-Class is not permitted without authorisation from their CO and Security Commander
- Lethal force against a breached SCP is a last resort — re-containment is always preferred
- Inter-MTF rivalry should be expressed IC through disagreements and debate, not sabotage

**SCP Entities:**
- SCPs must behave consistent with their documented characteristics
- SCP-049 must maintain its medieval affect and "doctor" persona
- SCP-096 must remain dormant unless its face is viewed
- SCP-999 must be passive and friendly. SCP-999 attacking Foundation personnel is an immediate whitelist review
- SCPs may not metagame their re-containment — if you don't know there's a containment team coming, your character doesn't know

**CI:**
- CI may not shoot non-combatants on sight. D-Class should be offered extraction, not execution
- CI may not kill Foundation personnel who surrender
- CI informants embedded in the facility must establish their cover through RP before acting
- CI may not raid within the first 10 minutes of a server session

### D-Class—CI Interaction Rules

D-Class are permitted to covertly assist CI. This is considered canon-appropriate behaviour. The rules:
- Contact must be established through RP (D-Class seeking CI contact, not CI magically finding the right D-Class)
- Information passed must be limited to what the D-Class character would realistically know
- CI providing D-Class with weapons is permitted but must be done covertly — a D-Class visibly armed is immediately a Security incident
- D-Class assisting CI who then escape their escort are responsible for the escape RP consequences

### Escalation of Force Protocol (Security & MTF)

Before using lethal force, Security and MTF are expected to follow the escalation ladder:
1. **Verbal command** — Order the individual to comply
2. **Second verbal command with stated consequence** — "Comply or I will use force"
3. **Non-lethal deterrent** — Physical restraint attempt, non-lethal weapon
4. **Lethal force** — Only after the above have been exhausted or the immediate threat is lethal

Exceptions: Immediately lethal SCPs (SCP-173 in motion, SCP-096 triggered) remove the escalation requirement.

---

## 13. Staff Structure

### Server Staff Hierarchy

```
Server Owner
    └── Head Admin
        ├── Senior Admin (2-4)
        │   └── Admin (4-8)
        │       └── Moderator (6-12)
        │           └── Trial Moderator
        └── Developer (separate track)
```

### Staff Responsibilities

**Trial Moderator:**
- Handle basic player reports
- Assist with whitelist processing
- Monitor for RDM and other basic violations
- Cannot ban; can issue warnings and kicks

**Moderator:**
- All Trial Moderator duties
- Issue temporary bans (up to 3 days)
- Approve standard whitelist applications
- Facilitate basic events
- Conduct player investigations

**Admin:**
- All Moderator duties
- Issue bans up to 2 weeks
- Approve all whitelist applications
- Initiate and run medium-scale events
- Review and approve research test proposals

**Senior Admin:**
- All Admin duties
- Permanent ban authority
- Handle appeals
- Run major server events (O5 inspection, mass breach scenarios)
- Approve faction-level changes and promotions to Command rank

**Head Admin:**
- All Senior Admin duties
- Policy authority
- Staff recruitment and evaluation
- Direct line to server owner

### Staff Rules

- Staff may not use their admin powers to benefit their IC faction
- Staff playing IC must not use out-of-character knowledge gained from spectating/logging
- Staff event characters (e.g., GOI operatives, Foundation agents from other sites) are considered separate from staff's regular characters
- Staff who are promoted to MTF Command or Administration IC should have additional scrutiny for power abuse

### Staffed Events

Senior Admins and Admins run structured events on a schedule. Required events:
- **Weekly:** At least one Foundation-wide administrative event (departmental review, promotion ceremony)
- **Weekly:** At least one CI Raid event with proper briefing structure
- **Bi-weekly:** A special SCP event focusing on a single SCP's unique mechanics
- **Monthly:** A major event — O5 inspection, cross-site incident, or mass breach scenario

---

## 14. Future Development Roadmap

### Phase 1 — Core Launch (Current)
- [x] Helix schema with all factions, classes, items, attributes
- [x] Keycard clearance system
- [x] Containment breach tracking and announcement system
- [x] Radio channel system
- [x] Core item mechanics (medical, equipment, research)
- [ ] Compatible SCP-RP map integration (Site-15 map or community equivalent)
- [ ] Workshop model pack for SCP entities and faction clothing
- [ ] Workshop weapon pack (TFA or ArcCW) with proper integration
- [ ] Basic command system (Helix ix_commands or custom)

### Phase 2 — Systems Deepening
- [ ] Custom chat types (Radio IC, PA System, D-Class intercom)
- [ ] Door access system tied to keycard clearance (requires compatible map entities)
- [ ] SCP-173 blink detection mechanic (LOS check)
- [ ] SCP-096 face detection trigger (camera check)
- [ ] SCP-106 phase-through doors mechanic
- [ ] SCP-049 reanimate mechanic (spawn SCP-049-2 NPCs on killed D-Class)
- [ ] Pocket dimension zone for SCP-106
- [ ] Femur breaker entity for SCP-106 re-containment
- [ ] Research experiment log (permanent character data)
- [ ] Infirmary bed entity (Medical RP prop)

### Phase 3 — Content Expansion
- [ ] Additional SCP roster: SCP-035, SCP-076-2, SCP-294 (coffee machine), SCP-914 (upgrade machine)
- [ ] SCP-914 item processing (input items → processed outputs at different settings)
- [ ] Global Occult Coalition (GOC) as a third external faction
- [ ] Marshall, Carter and Dark (MC&D) as an anomalous black market
- [ ] Expanded D-Class conversion pipeline (D-Class who join CI get a different model/loadout)
- [ ] Amnestics system (Memory wipe for characters who witness classified material)
- [ ] Character death permanence option (character data wipes on permanent death — opt-in)

### Phase 4 — Narrative Infrastructure
- [ ] Persistent round narrative system (events in one session affect the next)
- [ ] Faction reputation tracking (CI has intel on facility based on past raid success)
- [ ] Incident report system (automatic logging of breach events for IC review)
- [ ] Staff-run narrative campaign mode (multi-session story arcs with persistent consequences)
- [ ] Foundation-wide alert level that persists across sessions (escalates with frequency of incidents)

### Phase 5 — Quality of Life
- [ ] Custom HUD showing clearance level, faction colour, containment status
- [ ] Minimap with zone indicators and current alert status
- [ ] Radio overlay showing active speakers on faction channel
- [ ] Character sheet (viewable backstory, rank history, incident log)
- [ ] Faction roster board (visible in-game list of on-duty personnel by faction)

---

## Appendix A — Quick Reference: Faction Interactions

| | D-Class | Security | Research | Medical | Engineering | Nu-7 | E-11 | CI | SCPs | Admin |
|--|---------|---------|---------|---------|-------------|------|------|-----|------|-------|
| **D-Class** | Peers | Subordinate | Subordinate | Patient | — | Hostile | — | Covert ally | Varies | — |
| **Security** | Authority | Colleagues | Escort duty | Patients | Work order | Support | Support | Hostile | Containment | Report to |
| **Research** | Test subjects | Request escorts | Colleagues | Coordinate | Work orders | — | Inform | Hostile (usually) | Study | Report to |
| **Medical** | Care for | Care for | Care for | Colleagues | — | Care for | Care for | Hostile | Study/care | Report to |
| **Engineering** | — | Coordinate | Coordinate | Coordinate | Colleagues | Support | Support | Hostile | Maintain chambers | Report to |
| **Nu-7** | Threat assess | Support | — | Receive care | — | Brothers | Professional rivals | Primary enemy | Engage/contain | Report to |
| **E-11** | — | Support | Receive intel | — | — | Professional rivals | Brothers | Hostile | Primary focus | Report to |
| **CI** | Recruit/extract | Enemy | Enemy | Enemy | Enemy | Primary enemy | Enemy | Allies | Seek to acquire | Enemy |
| **SCPs** | Prey/indifferent | Obstacle | Test subjects | Obstacle | — | Obstacle | Obstacle | Complicated | — | Obstacle |
| **Admin** | Policy concern | Command | Policy | Policy | Policy | Command | Command | Existential threat | Policy | — |

---

## Appendix B — Clearance Level Quick Reference

| Level | Label | Access |
|-------|-------|--------|
| 0 | Unclassified | D-Block, public corridors only |
| 1 | Restricted | Zone A-B general, Zone C staff areas |
| 2 | Confidential | Zone C-D general access |
| 3 | Secret | Zone D containment chambers, Zone E general |
| 4 | Top Secret | Zone E containment chambers, Zone F general |
| 5 | Cosmic Top Secret | Zone F restricted, O5 communications suite |

---

## Appendix C — Incident Classification

| Level | Type | Response |
|-------|------|----------|
| Alpha | Minor protocol deviation | Security response only |
| Beta | Threat to individual personnel | Security + Department Head notification |
| Gamma | Single SCP breach, contained zone | E-11 deployment, Nu-7 standby |
| Delta | Multiple SCP breach or armed CI incursion | Full MTF deployment, lockdown |
| Epsilon | Multi-SCP mass breach or critical infrastructure failure | All-hands, emergency protocols |
| Omega | Extinction-level containment failure (SCP-682 in populated zone) | O5 authority, facility evacuation authorised |

---

*End of Planning Document — Site-15 Classification: Level 3 — SECRET*
*Unauthorised distribution of this document is a Foundation Protocol Violation, Level 2.*
*"We die in the dark so others may live in the light."*
