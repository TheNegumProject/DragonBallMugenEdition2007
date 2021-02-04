; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you  off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
;

;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;


;-| Special Motions |------------------------------------------------------


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 12

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 12

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "all"
command = x+y+z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

;Fly
[Command]
name = "Fly"
command = x+y
time = 20

;Quick Teleport
[Command]
name = "QT"
command = x+a
time = 20

;Teleport
[Command]
name = "TE"
command = y+z
time = 20

;Evade Forward/Backward
[Command]
name = "EB"
command = /B, z
time = 20

;Kaioken Combo
[Command]
name = "Kaicombo"
command = ~B, DB, D, DF, F, c
time = 50

;KKH - Beam 
[Command]
name = "kkhbeam"
command = ~D, B, D, B, c
time = 50

;KKH - Beam  ; Kaioken
[Command]
name = "kkhbeamk"
command = ~D, B, F, c
time = 50

;Kamehameha Ball - Straight
[Command]
name = "kkhbs"
command = ~D, F, D, F, c
time = 50

;Hard Kick
[Command]
name = "HardKick"
command = ~D, F, b
time = 20

;3 Hit Kick
[Command]
name = "3Kick"
command = ~D, F, a
time = 20

;Evade Forward/Backward
[Command]
name = "EF"
command = /F,z
time = 20

[Command]
name = "x+z"
command = x+z
time = 1

[Command]
name = "y+z"
command = y+z
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "Balls"
command = c
time = 30

[Command]
name = "Ballsh"
command = ~D, B, c
time = 30

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "for_x"
command = /$F,x
time = 1

[Command]
name = "for_y"
command = /$F,y
time = 1

[Command]
name = "for_z"
command = /$F,z
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "charge"
command = /a

[Command]
name = "charge 1"
command = /b

[Command]
name = "UU"
command = U, U
time = 15

[Command]
name = "DD"
command = D, D
time = 15

;-| Hold Key |--------------------------------------------------------------
[Command]
name = "holda"
command = /$a
time = 1

[Command]
name = "holdb"
command = /$b
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------

;Kaioken Combo
[State -1]
type = ChangeState
value = 2500
triggerall = power >= 2800
trigger1 = command = "Kaicombo"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Kamehameha Beam
[State -1]
type = ChangeState
value = 7000
triggerall = power >= 1000
trigger1 = command = "kkhbeam"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Kamehameha Beam
[State -1]
type = ChangeState
value = 7010
triggerall = power >= 2500
trigger1 = command = "kkhbeamk"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Round Kick [Dashing Only move]
[State -1]
type = ChangeState
value = 252
triggerall = command = "a"
trigger1 = stateno = 100

;Round Kick [Dashing Only move] [HARD]
[State -1]
type = ChangeState
value = 253
triggerall = command = "b"
trigger1 = stateno = 100

;Round Kick [Dashing Only move]
[State -1]
type = ChangeState
value = 261
triggerall = command = "x"
trigger1 = stateno = 100

;Round Kick [Dashing Only move] [HARD]
[State -1]
type = ChangeState
value = 262
triggerall = command = "y"
trigger1 = stateno = 100

;KI Ball [HARD hit]
[State -1]
type = ChangeState
value = 1321
triggerall = power >= 100
trigger1 = command = "Ballsh"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Hard Kick
[State -1, Hard Kick] ; Chained onto 
type = ChangeState
value = 250
triggerall = command = "HardKick"
triggerall = ctrl = 1
trigger1 = statetype = S

;3 Hit Kick Combo
[State -1, Hard Kick] ; Not Chained into ; Done seperately 
type = ChangeState
value = 251
triggerall = command = "3Kick" ;no need for chaining
triggerall = ctrl = 1
trigger1 = statetype = S

;Kamehameha Beam
[State -1]
type = ChangeState
value = 7000
triggerall = power >= 1000
trigger1 = command = "kkhbeam"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Kamehameha Ball
[State -1]
type = ChangeState
value = 6000
triggerall = power >= 1500
trigger1 = command = "kkhbs"
trigger1 = statetype = S
trigger1 = ctrl = 1

;KI Ball
[State -1]
type = ChangeState
value = 1320
triggerall = power >= 50
trigger1 = command = "Balls"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Fly
[State -1]
type = ChangeState
value = 1500
trigger1 = command = "Fly"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Evade Forward
[State -1]
type = ChangeState
value = 3100
trigger1 = command = "EF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Evade Backward
[State -1]
type = ChangeState
value = 3101
trigger1 = command = "EB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Teleport
[State -1]
type = ChangeState
value = 8642
trigger1 = command = "TE"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Quick Teleport
[State -1]
type = ChangeState
value = 8648
trigger1 = command = "QT"
trigger1 = statetype = S
trigger1 = ctrl = 1

;RunFwd
[State -1]
type = ChangeState
value = 1001
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Charge (yeh!!~)
[State -1]
type = ChangeState
value = 730
triggerall = command = "charge"
triggerall = command = "charge 1"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1510

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 1051
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 205
trigger2 = movecontact = 1
trigger3 = stateno = 1510

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 205
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 1510
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 235
trigger2 = movecontact = 1
trigger3 = stateno = 1510

;---------------------------------------------------------------------------
;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 235
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230
trigger2 = movecontact = 1
trigger3 = stateno = 1510

;Hard Kick
[State -1, Hard Kick] ; Chained onto 
type = ChangeState
value = 250
triggerall = command = "HardKick"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 235
trigger5 = movecontact = 1
trigger6 = stateno = 1510

;3 Hit Kick Combo
[State -1, Hard Kick] ; Not Chained into ; Done seperately 
type = ChangeState
value = 251
triggerall = command = "3Kick" ;no need for chaining
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 235
trigger5 = movecontact = 1
trigger6 = stateno = 1510

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = null
value = 196
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
;trigger2 = (stateno = 400) && movecontact

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
;trigger2 = (stateno = 400) && movecontact
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
;trigger2 = !ctrl && stateno = 841 && pos y < -30

;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
;trigger2 = !ctrl && stateno = 841 && pos y < -30

;---------------------------------------------------------------------------

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
;trigger2 = (stateno = 600) && movecontact
;trigger3 = !ctrl && stateno = 841 && pos y < -30

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
;trigger2 = (stateno = 600) && movecontact
;trigger3 = !ctrl && stateno = 841 && pos y < -30
;---------------------------------------------------------------------------

; States that are always checked and executed
[Statedef -2]
;---------------------------------------------------------------------------
[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = 5000

[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = 120

;Removing Stuff from Kamehameha BALL
[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = 6001
ID = 731

;Removing Stuff from Kamehameha BALL
[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = 6001
ID = 1

;Removing Stuff from Kamehameha BALL
[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = 6001
ID = 2

;Removing Sound Channel 3 
[State -2, Remove]
type = stopsnd
trigger1 = stateno = 6001
channel = 3

;Removing Sound Channel 4 
[State -2, Remove]
type = stopsnd
trigger1 = stateno = 6001
channel = 4

;Removing Sound Channel 5 [Aura Sound]
[State -2, Remove]
type = stopsnd
trigger1 = stateno = 6001
channel = 5

;---Firing UP Removing (s) --- 
;Removing Stuff from Kamehameha BALL
[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = 6002
ID = 731

;Removing Stuff from Kamehameha BALL
[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = 6002
ID = 1

;Removing Stuff from Kamehameha BALL
[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = 6002
ID = 2

;Removing Sound Channel 3 
[State -2, Remove]
type = stopsnd
trigger1 = stateno = 6002
channel = 3

;Removing Sound Channel 4 
[State -2, Remove]
type = stopsnd
trigger1 = stateno = 6002
channel = 4

;Removing Sound Channel 5 [Aura Sound]
[State -2, Remove]
type = stopsnd
trigger1 = stateno = 6002
channel = 5

;----

;Removing Stuff from Kamehameha BALL
[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = !6001
ID = 731

;Removing Stuff from Kamehameha BALL
[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = !6001
ID = 1

;Removing Stuff from Kamehameha BALL
[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = !6001
ID = 2

;Removing Sound Channel 3 
[State -2, Remove]
type = stopsnd
trigger1 = stateno = !6001
channel = 3

;Removing Sound Channel 4 
[State -2, Remove]
type = stopsnd
trigger1 = stateno = !6001
channel = 4

;Removing Sound Channel 5 [Aura Sound]
[State -2, Remove]
type = stopsnd
trigger1 = stateno = !6001
channel = 5

;---Firing UP Removing (s) --- 
;Removing Stuff from Kamehameha BALL
[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = !6002
ID = 731

;Removing Stuff from Kamehameha BALL
[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = !6002
ID = 1

;Removing Stuff from Kamehameha BALL
[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = !6002
ID = 2

;Removing Sound Channel 3 
[State -2, Remove]
type = stopsnd
trigger1 = stateno = !6002
channel = 3

;Removing Sound Channel 4 
[State -2, Remove]
type = stopsnd
trigger1 = stateno = !6002
channel = 4

;Removing Sound Channel 5 [Aura Sound]
[State -2, Remove]
type = stopsnd
trigger1 = stateno = !6002
channel = 5

;---- Both of Above are from Kamehameha State!

; States that are executed when in self's state file
; Use [Statedef -3]
;---------------------------------------------------------------------------

; BEAM Section ; BEAM ONLY!

;Removing Stuff from Kamehameha BALL
[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = 7001
ID = 731

;Removing Stuff from Kamehameha BALL
[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = 7001
ID = 1

;Removing Stuff from Kamehameha BALL
[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = 7001
ID = 2

;Removing Sound Channel 3 
[State -2, Remove]
type = stopsnd
trigger1 = stateno = 7001
channel = 3

;Removing Sound Channel 4 
[State -2, Remove]
type = stopsnd
trigger1 = stateno = 7001
channel = 4

;Removing Sound Channel 5 [Aura Sound]
[State -2, Remove]
type = stopsnd
trigger1 = stateno = 7001
channel = 5

;---Firing UP Removing (s) --- 
;Removing Stuff from Kamehameha BALL
[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = 7002
ID = 731

;Removing Stuff from Kamehameha BALL
[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = 7002
ID = 1

;Removing Stuff from Kamehameha BALL
[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = 7002
ID = 2

;Removing Sound Channel 3 
[State -2, Remove]
type = stopsnd
trigger1 = stateno = 7002
channel = 3

;Removing Sound Channel 4 
[State -2, Remove]
type = stopsnd
trigger1 = stateno = 7002
channel = 4

;Removing Sound Channel 5 [Aura Sound]
[State -2, Remove]
type = stopsnd
trigger1 = stateno = 7002
channel = 5

;----

;Removing Stuff from Kamehameha BALL
[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = !7001
ID = 731

;Removing Stuff from Kamehameha BALL
[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = !7001
ID = 1

;Removing Stuff from Kamehameha BALL
[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = !7001
ID = 2

;Removing Sound Channel 3 
[State -2, Remove]
type = stopsnd
trigger1 = stateno = !7001
channel = 3

;Removing Sound Channel 4 
[State -2, Remove]
type = stopsnd
trigger1 = stateno = !7001
channel = 4

;Removing Sound Channel 5 [Aura Sound]
[State -2, Remove]
type = stopsnd
trigger1 = stateno = !7001
channel = 5

;---Firing UP Removing (s) --- 
;Removing Stuff from Kamehameha BALL
[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = !7002
ID = 731

;Removing Stuff from Kamehameha BALL
[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = !7002
ID = 1

;Removing Stuff from Kamehameha BALL
[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = !7002
ID = 2

;Removing Sound Channel 3 
[State -2, Remove]
type = stopsnd
trigger1 = stateno = !7002
channel = 3

;Removing Sound Channel 4 
[State -2, Remove]
type = stopsnd
trigger1 = stateno = !7002
channel = 4

;Removing Sound Channel 5 [Aura Sound]
[State -2, Remove]
type = stopsnd
trigger1 = stateno = !7002
channel = 5

;Removing Sound from Kaioken Kamehameha
[State -2, Remove]
type = stopsnd
triggerall = stateno = 7010
trigger1 = animelem = 3
channel = 4

;Removing Kaioken Flame
[State -2, RemoveAura]
type = RemoveExplod
trigger1 = stateno = !7010
ID = 7200
